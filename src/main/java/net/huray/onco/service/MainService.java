package net.huray.onco.service;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.slf4j.Slf4j;
import net.huray.onco.CustomSessionRegistry;
import net.huray.onco.domain.Content;

import net.huray.onco.domain.Faq;
import net.huray.onco.domain.Member;
import net.huray.onco.domain.Notice;
import net.huray.onco.domain.Qna;
import net.huray.onco.repository.DiagnosisRepository;
import net.huray.onco.repository.FaqRepository;
import net.huray.onco.repository.FaqSpecification;
import net.huray.onco.repository.GeneRepository;
import net.huray.onco.repository.MemberRepository;
import net.huray.onco.repository.ContentRepository;
import net.huray.onco.repository.ContentSpecification;
import net.huray.onco.repository.MemberSpecification;
import net.huray.onco.repository.NoticeRepository;
import net.huray.onco.repository.NoticeSpecification;
import net.huray.onco.repository.QnaRepository;
import net.huray.onco.repository.QnaSpecification;
import net.huray.onco.repository.ServiceRepository;
import net.huray.onco.repository.ServiceSpecification;
import net.huray.onco.repository.TermsRepository;;

@Slf4j
@Service
public class MainService {

	@Autowired
	PageLogic pageLogic;

	@Autowired
	MemberSpecification memberSpecification;

	@Autowired
	ContentSpecification contentSpecification;

	@Autowired
	NoticeSpecification noticeSpecification;

	@Autowired
	FaqSpecification faqSpecification;

	@Autowired
	QnaSpecification qnaSpecification;

	@Autowired
	ServiceSpecification serviceSpecification;

	@Autowired
	FileService fileService;

	@Value("${nice.client.id}")
    private String niceClientId;

    @Value("${nice.token}")
    private String niceToken;

    @Value("${nice.pt.code}")
    private String nicePtCode;

	@Value("${nice.callback}")
    private String niceCallbackUrl;
	
	@Value("${nice.callback2}")
    private String niceCallbackUrl2;

	private final MemberRepository memberRepository;
	private final DiagnosisRepository diagnosisRepository;
	private final GeneRepository geneRepository;
	private final ContentRepository contentRepository;
	private final NoticeRepository noticeRepository;
	private final ServiceRepository serviceRepository;
	private final FaqRepository faqRepository;
	private final QnaRepository qnaRepository;
	private final TermsRepository termsRepository;

	public MainService(MemberRepository memberRepository, DiagnosisRepository diagnosisRepository,
			GeneRepository geneRepository, ContentRepository contentRepository, NoticeRepository noticeRepository,
			ServiceRepository serviceRepository, FaqRepository faqRepository, QnaRepository qnaRepository,
			TermsRepository termsRepository) {
		this.memberRepository = memberRepository;
		this.diagnosisRepository = diagnosisRepository;
		this.geneRepository = geneRepository;
		this.contentRepository = contentRepository;
		this.noticeRepository = noticeRepository;
		this.serviceRepository = serviceRepository;
		this.faqRepository = faqRepository;
		this.qnaRepository = qnaRepository;
		this.termsRepository = termsRepository;
	}

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private CustomSessionRegistry customSessionRegistry;

	// 로그인 업데이트
	public HashMap<String, Object> mainLoginUpdateDo(@Valid Member member, BindingResult bindingResult,
			HttpServletRequest request, Model model) {

		HashMap<String, Object> returnMap = new HashMap<String, Object>();
		returnMap.put("result", "error");

		String mt_id = member.getMtId();
		String mt_pass = member.getMtPwd();

		member = memberRepository.findByMtIdAndMtTypeAndMtLevelNot(mt_id, 1, 10);

		if (member != null) {

			log.debug(member.toString());

			if (passwordEncoder.matches(mt_pass, member.getMtPwd())) {

				customSessionRegistry.setMember(member, request);

				returnMap.put("result", "success");
			} else {
				returnMap.put("result", "fail");
			}
		} else {
			returnMap.put("result", "error");
		}
		return returnMap;

	}

	//조회수 관련 쿠키정책
		public boolean cookieForUpdateView(HttpServletRequest request,HttpServletResponse response,String cookieKey ,int id){
		String cookieName = cookieKey +id ;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals(cookieName)) {
					return false;
				}
			}
		}

		Cookie newCookie = new Cookie(cookieName, String.valueOf(id));
		newCookie.setMaxAge(60 * 30); // 30분
		newCookie.setHttpOnly(true);	
		response.addCookie(newCookie);
		return true;

	}

	// 본인인증 팝업
	public void nicePopup(HttpServletRequest request, Model model) {

		String req_dtim = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		String req_no = "pc" + UUID.randomUUID().toString().replace("-", "").substring(0, 12);

		// Request Token
		Map<String, String> dataBodyMap = new HashMap<>();
		dataBodyMap.put("req_dtim", req_dtim);
		dataBodyMap.put("req_no", req_no);
		dataBodyMap.put("enc_mode", "1");

		Map<String, Object> bodyMap = new HashMap<>();
		bodyMap.put("dataBody", dataBodyMap);

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		long currentTimestamp = System.currentTimeMillis() / 1000L; // Unix timestamp in seconds
		String authorizationValue = niceToken + ":" + currentTimestamp + ":" + niceClientId;
		String encodedAuthorizationValue = Base64.getEncoder().encodeToString(authorizationValue.getBytes());

		headers.add("Authorization", "bearer " + encodedAuthorizationValue);
		headers.add("ProductID", nicePtCode);

		HttpEntity<Map<String, Object>> entity = new HttpEntity<>(bodyMap, headers);

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Map> responseEntity = restTemplate.postForEntity(
				"https://svc.niceapi.co.kr:22001/digital/niceid/api/v1.0/common/crypto/token", entity, Map.class);
		Map<String, Object> responseBody = responseEntity.getBody();
		Map<String, String> dataBody = (Map<String, String>) responseBody.get("dataBody");

		// Symmetric key
		String keyData = req_dtim.trim() + req_no.trim() + dataBody.get("token_val").trim();
		MessageDigest digest;
		try {
			digest = MessageDigest.getInstance("SHA-256");
			byte[] hash = digest.digest(keyData.getBytes(StandardCharsets.UTF_8));
			String encodedKey = Base64.getEncoder().encodeToString(hash);

			String key = encodedKey.substring(0, 16);
			String iv = encodedKey.substring(encodedKey.length() - 16);
			String hmacKey = encodedKey.substring(0, 32);

			HttpSession session = request.getSession();
			session.setAttribute("_nice_key", key);
			session.setAttribute("_nice_iv", iv);

			Map<String, String> dataMap = new HashMap<>();
			dataMap.put("requestno", req_no);
			dataMap.put("returnurl", niceCallbackUrl); 
			dataMap.put("sitecode", dataBody.get("site_code"));
			dataMap.put("methodtype", "get");
			dataMap.put("popupyn", "Y");
			dataMap.put("authtype", "M");

			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			SecretKeySpec secretKeySpec = new SecretKeySpec(key.getBytes(), "AES");
			IvParameterSpec ivParameterSpec = new IvParameterSpec(iv.getBytes());
			cipher.init(Cipher.ENCRYPT_MODE, secretKeySpec, ivParameterSpec);

			byte[] encryptedData = cipher.doFinal(new ObjectMapper().writeValueAsString(dataMap).getBytes());
			String enc_data = Base64.getEncoder().encodeToString(encryptedData);

			Mac hmacSha256 = Mac.getInstance("HmacSHA256");
			SecretKeySpec secret_key = new SecretKeySpec(hmacKey.getBytes(), "HmacSHA256");
			hmacSha256.init(secret_key);
			byte[] hmacData = hmacSha256.doFinal(enc_data.getBytes());
			String integrity_value = Base64.getEncoder().encodeToString(hmacData);

			model.addAttribute("token_version_id", dataBody.get("token_version_id"));
			model.addAttribute("enc_data", enc_data);
			model.addAttribute("integrity_value", integrity_value);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 마에페이지 본인인증 팝업
	public void nicePopup2(HttpServletRequest request, Model model) {

		String req_dtim = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		String req_no = "pc" + UUID.randomUUID().toString().replace("-", "").substring(0, 12);

		// Request Token
		Map<String, String> dataBodyMap = new HashMap<>();
		dataBodyMap.put("req_dtim", req_dtim);
		dataBodyMap.put("req_no", req_no);
		dataBodyMap.put("enc_mode", "1");

		Map<String, Object> bodyMap = new HashMap<>();
		bodyMap.put("dataBody", dataBodyMap);

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		long currentTimestamp = System.currentTimeMillis() / 1000L; // Unix timestamp in seconds
		String authorizationValue = niceToken + ":" + currentTimestamp + ":" + niceClientId;
		String encodedAuthorizationValue = Base64.getEncoder().encodeToString(authorizationValue.getBytes());

		headers.add("Authorization", "bearer " + encodedAuthorizationValue);
		headers.add("ProductID", nicePtCode);

		HttpEntity<Map<String, Object>> entity = new HttpEntity<>(bodyMap, headers);

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Map> responseEntity = restTemplate.postForEntity(
				"https://svc.niceapi.co.kr:22001/digital/niceid/api/v1.0/common/crypto/token", entity, Map.class);
		Map<String, Object> responseBody = responseEntity.getBody();
		Map<String, String> dataBody = (Map<String, String>) responseBody.get("dataBody");

		// Symmetric key
		String keyData = req_dtim.trim() + req_no.trim() + dataBody.get("token_val").trim();
		MessageDigest digest;
		try {
			digest = MessageDigest.getInstance("SHA-256");
			byte[] hash = digest.digest(keyData.getBytes(StandardCharsets.UTF_8));
			String encodedKey = Base64.getEncoder().encodeToString(hash);

			String key = encodedKey.substring(0, 16);
			String iv = encodedKey.substring(encodedKey.length() - 16);
			String hmacKey = encodedKey.substring(0, 32);

			HttpSession session = request.getSession();
			session.setAttribute("_nice_key2", key);
			session.setAttribute("_nice_iv2", iv);

			Map<String, String> dataMap = new HashMap<>();
			dataMap.put("requestno", req_no);
			dataMap.put("returnurl", niceCallbackUrl2);
			dataMap.put("sitecode", dataBody.get("site_code"));
			dataMap.put("methodtype", "get");
			dataMap.put("popupyn", "Y");
			dataMap.put("authtype", "M");

			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			SecretKeySpec secretKeySpec = new SecretKeySpec(key.getBytes(), "AES");
			IvParameterSpec ivParameterSpec = new IvParameterSpec(iv.getBytes());
			cipher.init(Cipher.ENCRYPT_MODE, secretKeySpec, ivParameterSpec);

			byte[] encryptedData = cipher.doFinal(new ObjectMapper().writeValueAsString(dataMap).getBytes());
			String enc_data = Base64.getEncoder().encodeToString(encryptedData);

			Mac hmacSha256 = Mac.getInstance("HmacSHA256");
			SecretKeySpec secret_key = new SecretKeySpec(hmacKey.getBytes(), "HmacSHA256");
			hmacSha256.init(secret_key);
			byte[] hmacData = hmacSha256.doFinal(enc_data.getBytes());
			String integrity_value = Base64.getEncoder().encodeToString(hmacData);

			model.addAttribute("token_version_id", dataBody.get("token_version_id"));
			model.addAttribute("enc_data", enc_data);
			model.addAttribute("integrity_value", integrity_value);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 본인인증 콜백
	public void niceCallback(String encData, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String niceKey = (String) session.getAttribute("_nice_key");
		String niceIv = (String) session.getAttribute("_nice_iv");

		try {
			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			SecretKeySpec secretKeySpec = new SecretKeySpec(niceKey.getBytes(), "AES");
			IvParameterSpec ivParameterSpec = new IvParameterSpec(niceIv.getBytes());
			cipher.init(Cipher.DECRYPT_MODE, secretKeySpec, ivParameterSpec);
			log.debug("encData: " + encData);
			byte[] decodedData = Base64.getDecoder().decode(encData);
			byte[] decryptedData = cipher.doFinal(decodedData);

			String resultJson = new String(decryptedData, StandardCharsets.UTF_8);
			ObjectMapper objectMapper = new ObjectMapper();
			Map resultMap = objectMapper.readValue(resultJson, Map.class);

			String decodedName = java.net.URLDecoder.decode((String) resultMap.get("utf8_name"), StandardCharsets.UTF_8.name());
			String birthdateStr = (String) resultMap.get("birthdate");
			SimpleDateFormat inputFormat = new SimpleDateFormat("yyyyMMdd");
			SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date birthdate = inputFormat.parse(birthdateStr);
			String formattedBirthdate = outputFormat.format(birthdate);

			session.setAttribute("niceapi_check", "-1");
			session.setAttribute("niceapi_di", resultMap.get("di"));
			session.setAttribute("mtHp", resultMap.get("mobileno"));
			session.setAttribute("mtName",decodedName);
			session.setAttribute("mtGender", resultMap.get("gender"));
			session.setAttribute("mtBirth",formattedBirthdate);

			log.info(resultMap.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 본인인증 처리
	public void niceCheck(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String di = (String) session.getAttribute("niceapi_di");
		if (di == null) {
			model.addAttribute("niceapi_check", "-1");
			return;
		}
		long result = memberRepository.countByMtDi((String) session.getAttribute("niceapi_di"));
		log.info("plz" + result);

		if (result > 0) {
			model.addAttribute("niceapi_check", "0");
		} else {
			model.addAttribute("niceapi_check", "1");
			session.setAttribute("niceapi_check", '1');
			model.addAttribute("mtHp", (String) session.getAttribute("mtHp"));
			model.addAttribute("mtName", (String) session.getAttribute("mtName"));
			model.addAttribute("mtBirth", (String) session.getAttribute("mtBirth"));
			model.addAttribute("mtGender", (String) session.getAttribute("mtGender"));
		}
	}

	// 마이페이지 본인인증 콜백
	public void niceCallback2(String encData, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String niceKey = (String) session.getAttribute("_nice_key2");
		String niceIv = (String) session.getAttribute("_nice_iv2");

		try {
			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			SecretKeySpec secretKeySpec = new SecretKeySpec(niceKey.getBytes(), "AES");
			IvParameterSpec ivParameterSpec = new IvParameterSpec(niceIv.getBytes());
			cipher.init(Cipher.DECRYPT_MODE, secretKeySpec, ivParameterSpec);
			log.debug("encData: " + encData);
			byte[] decodedData = Base64.getDecoder().decode(encData);
			byte[] decryptedData = cipher.doFinal(decodedData);

			String resultJson = new String(decryptedData, StandardCharsets.UTF_8);
			ObjectMapper objectMapper = new ObjectMapper();
			Map resultMap = objectMapper.readValue(resultJson, Map.class);

			session.setAttribute("niceapi_check2", "-1");
			session.setAttribute("niceapi_di2", resultMap.get("di"));
			session.setAttribute("mtName2", resultMap.get("name"));
			session.setAttribute("mtHp2", resultMap.get("mobileno"));
			session.setAttribute("mtGender2", resultMap.get("gender"));
			session.setAttribute("mtBirth2", resultMap.get("mtBirth"));
			log.info(resultMap.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 마이페이지 본인인증 처리
	public void niceCheck2(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String di = (String) session.getAttribute("niceapi_di2");
		if (di == null) {
			model.addAttribute("niceapi_check", "-1");
			return;
		}
		long result = memberRepository.countByMtDi((String) session.getAttribute("niceapi_di2"));
		log.info("plz" + result);

		if (result > 0) {
			model.addAttribute("niceapi_check", "0");
		} else {
			model.addAttribute("niceapi_check", "1");
			session.setAttribute("niceapi_check2", "1");
			model.addAttribute("mtHp", (String) session.getAttribute("mtHp2"));
			model.addAttribute("mtName", (String) session.getAttribute("mtName2"));
			model.addAttribute("mtBirth", (String) session.getAttribute("mtBirth2"));
			model.addAttribute("mtGender", (String) session.getAttribute("mtGender2"));
		}
	}

	// 암종 리스트
	public void getDiagnosisList(Model model) {
		model.addAttribute("diagnoisList", diagnosisRepository.findAll());
	}

	// 유전자 변이 리스트
	public void getGeneList(Model model) {
		model.addAttribute("geneList", geneRepository.findAll());
	}
	
	// 최신암정보 상세
	@Transactional
	public void getContent(HttpServletRequest request, HttpServletResponse response, int id, Model model) {
		boolean result= cookieForUpdateView(request, response, "content_", id);
		if(result) contentRepository.updateViews(id);
		
		model.addAttribute("content", contentRepository.findByIdx(id));
	}

	// 이용약관
	public void mainTerms(Model model) {
		model.addAttribute("terms", termsRepository.findTop1ByTtTypeAndTtLevelNotOrderByIdxDesc(1, 10));
	}

	// 개인정보처리방침
	public void mainPrivacyPolicy(Model model) {
		model.addAttribute("terms", termsRepository.findTop1ByTtTypeAndTtLevelNotOrderByIdxDesc(2, 10));
	}
	
	//다운로드
	public void mngDownloadDo(String fileName, HttpServletRequest request, HttpServletResponse response, Model model) {
		
		try {
			fileService.s3Downlaod(response, fileName);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 최신암정보 전체보기
	public void getNewList(HttpServletRequest request, Model model) {
		// mapper에서 사용할 검색 파라미터 객체 선언
		Map<String, Object> map = new HashMap<String, Object>();

		// 페이징, 로우갯수, 검색값 입력
		map = pageLogic.getParameters(request, map);

		map.put("ctLevel", 1);

		Page<Content> result = contentRepository.findAll(contentSpecification.setSpecs(map), PageRequest.of(0, 5));
		model.addAttribute("newList", result.getContent());

		List<Integer> contentIds = new ArrayList<>();

		result.getContent().forEach(content -> {
			contentIds.add(content.getIdx());
		});

		Page<Content> result2 = contentRepository.findContentByGene(contentIds, PageRequest.of(0, 5));
		model.addAttribute("geneCatList", result2.getContent());

		result2.getContent().forEach(content -> {
			contentIds.add(content.getIdx());
		});

		Page<Content> result3 = contentRepository.findContentByCategory1(contentIds, PageRequest.of(0, 5));
		model.addAttribute("category1List", result3.getContent());

		result3.getContent().forEach(content -> {
			contentIds.add(content.getIdx());
		});

		Page<Content> result4 = contentRepository.findContentByCategory2(contentIds, PageRequest.of(0, 5));
		model.addAttribute("category2List", result4.getContent());

		// 쿼리호출
		Page<Content> result5 = contentRepository.findAll(contentSpecification.setSpecs(map),
				PageRequest.of(Integer.parseInt((String) map.get("pg")) - 1, 20, Sort.Direction.DESC, "idx"));
		
		// 데이터
		model.addAttribute("contents", result5.getContent());

		// 페이지정보
		model.addAttribute("page", pageLogic.setParameters(map, result));

	}

	// 마이페이지
	public void getMypage(Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User user = (User) authentication.getPrincipal();
		Member member = memberRepository.findByMtId(user.getUsername());
		model.addAttribute("member", member);
	}

	// 공지사항 목록
	public void getNoticeList(HttpServletRequest request, Model model) {
		// mapper에서 사용할 검색 파라미터 객체 선언
		Map<String, Object> map = new HashMap<String, Object>();

		// 페이징, 로우갯수, 검색값 입력
		map = pageLogic.getParameters(request, map);

		map.put("ntLevel", 1);

		// 쿼리호출
		Page<Notice> result = noticeRepository.findAll(noticeSpecification.setSpecs(map),
				PageRequest.of(Integer.parseInt((String) map.get("pg")) - 1, 10, Sort.Direction.DESC, "idx"));

		// 데이터
		model.addAttribute("notices", result.getContent());

		// 페이지정보
		model.addAttribute("page", pageLogic.setParameters(map, result));
	}


	// 공지사항 상세
	@Transactional
	public void getNotice(HttpServletRequest request,HttpServletResponse response, int id, Model model) {
		boolean result= cookieForUpdateView(request,response,"notice_",id);
		if(result) noticeRepository.updateViews(id);
		Notice notice = noticeRepository.findOneByIdxAndNtLevel(id, 1);
		model.addAttribute("notice", notice);
	}

	// 서비스 신청 조회
	public void mainApplyList(HttpServletRequest request, Model model) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User user = (User) authentication.getPrincipal();
		Member member = memberRepository.findByMtIdAndMtLevelNot(user.getUsername(), 10);

		Map<String, Object> map = new HashMap<String, Object>();

		// 페이징, 로우갯수, 검색값 입력
		map = pageLogic.getParameters(request, map);
		

		try {
			String searchSdate = (String) map.get("search_sdate");
			String searchEdate = (String) map.get("search_edate");
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date = formatter.parse(searchSdate + " 00:00:00");
			Date date2 = formatter.parse(searchEdate + " 23:59:59");

			Timestamp tsFrom = new Timestamp(date.getTime());
			Timestamp tsTo = new Timestamp(date2.getTime());

			map.put("mtIdx", member.getIdx());
			map.put("from", tsFrom);
			map.put("to", tsTo);

		} catch (Exception e) {
			log.info("error", e);
		}

		// 쿼리호출
		Page<net.huray.onco.domain.Service> result = serviceRepository.findAll(serviceSpecification.setSpecs(map),
				PageRequest.of(Integer.parseInt((String) map.get("pg")) - 1, 10, Sort.Direction.DESC, "idx"));

		model.addAttribute("services", result.getContent());

		// 페이지정보
		model.addAttribute("page", pageLogic.setParameters(map, result));
	}

	// 문의내역
	public void getInqueryList(HttpServletRequest request, Model model) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User user = (User) authentication.getPrincipal();
		Member member = memberRepository.findByMtId(user.getUsername());

		Map<String, Object> map = new HashMap<String, Object>();

		// 페이징, 로우갯수, 검색값 입력
		map = pageLogic.getParameters(request, map);

		map.put("qtLevel", 10);
		map.put("mtName", member.getMtName());
		map.put("mtHp", member.getMtHp());
		Page<Qna> result = qnaRepository.findAll(qnaSpecification.setSpecs2(map),
				PageRequest.of(Integer.parseInt((String) map.get("pg")) - 1, 10, Sort.Direction.DESC, "idx"));
		model.addAttribute("inquerys", result.getContent());
		model.addAttribute("page", pageLogic.setParameters(map, result));
	}

	// 비회원 문의내역
	public void getQueryListNm(HttpServletRequest request, Model model, String name, String hp) {
		Map<String, Object> map = new HashMap<String, Object>();

		// 페이징, 로우갯수, 검색값 입력
		map = pageLogic.getParameters(request, map);

		map.put("qtLevelNot", 10);
		map.put("mtName", name);
		map.put("mtHp", hp);
		Page<Qna> result = qnaRepository.findAll(qnaSpecification.setSpecs2(map),
				PageRequest.of(Integer.parseInt((String) map.get("pg")) - 1, 10, Sort.Direction.DESC, "idx"));
		model.addAttribute("inquerys", result.getContent());
		model.addAttribute("page", pageLogic.setParameters(map, result));
	}

	// 문의내역 상세
	public void getInqery(int idx, Model model) {
		Qna qna = qnaRepository.findOneByIdxAndQtLevelNot(idx, 10);
		model.addAttribute("inquery", qna);
	}

	// 자주 묻는 질문
	public void getFaq(HttpServletRequest request, Model model) {
		// mapper에서 사용할 검색 파라미터 객체 선언
		Map<String, Object> map = new HashMap<String, Object>();

		// 페이징, 로우갯수, 검색값 입력
		map = pageLogic.getParameters(request, map);

		map.put("ftLevel", 1);

		Page<Faq> result = faqRepository.findAll(faqSpecification.setSpecs(map),
				PageRequest.of(Integer.parseInt((String) map.get("pg")) - 1, 10, Sort.Direction.DESC, "idx"));

		model.addAttribute("faqs", result.getContent());

		// 페이지정보
		model.addAttribute("page", pageLogic.setParameters(map, result));
	}

	// 회원가입
	public HashMap<String, Object> mainJoin(@Valid Member member, String action, BindingResult bindingResult,
			HttpServletRequest request, Model model) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", "error");

		log.debug(action);

		switch (action) {
			// 아이디 중복 확인
			case "check_id":
				map = checkMemberId(member, map);
				break;
			// 본인인증 확인
			case "check_di":
				map = checkDiSession(request, map);
				break;
			// 회원 등록
			case "insert_member":
				map = insertMember(member, map, request);
				break;
			default:
				break;
		}

		return map;
	}

	// 정보수정
	public HashMap<String, Object> mainUpdate(@Valid Member member, String action, BindingResult bindingResult,
			HttpServletRequest request, Model model) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", "error");

		log.debug(action);

		switch (action) {
			// 본인인증 확인
			case "check_di":
				map = checkDiSession(request, map);
				break;
			// 회원 정보 수정
			case "update_member":
				map = updateMember(member, map, request);
				break;
			default:
				break;
		}

		return map;
	}

	// 회원탈퇴
	public HashMap<String, Object> mainDelete( String reason,
			HttpServletRequest request) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", "error");
		
		map = deleteMember(reason, map, request);
		log.debug(reason);

		return map;
	}

	// 중복아이디 확인
	private HashMap<String, Object> checkMemberId(Member member, HashMap<String, Object> map) {
		try {
			long duplicate_id = memberRepository.countByMtIdAndMtLevel(member.getMtId(), 1);
			if (duplicate_id > 0) {
				map.put("error_code", "error");
				map.put("error_detail", "이미 사용중인 아이디입니다.");
				return map;
			} else {
				map.put("result", "success");
			}
			return map;
		} catch (Exception e) {
			log.error("checkMemberId Error: " + e);
			return map;
		}
	}

	// // 중복휴대폰 확인
	// private HashMap<String, Object> checkMemberHp(Member member, HashMap<String,
	// Object> map) {
	// try {
	// long duplicate_hp = memberRepository.countByMtHpAndMtLevel(member.getMtHp(),
	// 1);
	// if (duplicate_hp > 0) {
	// map.put("error_code", "error");
	// map.put("error_detail", "이미 사용중인 휴대폰 번호입니다.");
	// return map;
	// } else {
	// map.put("result", "success");
	// }
	// return map;
	// } catch (Exception e) {
	// log.error("checkMemberId Error: " + e);
	// return map;
	// }
	// }

	// 본인인증여부 확인
	private HashMap<String, Object> checkDiSession(HttpServletRequest request, HashMap<String, Object> map) {
		try {
			if (request.getSession().getAttribute("niceapi_check") != null) {
			
				boolean temp = request.getSession().getAttribute("niceapi_check").toString().equals("1");
							
				if (request.getSession().getAttribute("niceapi_check").toString().equals("1")) {
					map.put("result", "success");
									
				} else {
					
					map.put("result", "error");
				}
			}

			return map;
		} catch (Exception e) {
			log.error("checkDiSession Error: " + e);
			return map;
		}
	}

	// 회원 생성
	private HashMap<String, Object> insertMember(Member member, HashMap<String, Object> map,
			HttpServletRequest request) {
		try {

			// 사용자 레벨 부여
			member.setMtLevel(1);
			member.setMtType(1);
			// 패스워드 암호화
			member.setMtPwd(passwordEncoder.encode(member.getMtPwd()));
			// 가입일 추가
			member.setMtWdate(new Date());

			if (request.getSession().getAttribute("niceapi_di") != null) {
				member.setMtDi(request.getSession().getAttribute("niceapi_di").toString());
			} else {
				map.put("error_code", "error");
				map.put("error_detail", "본인인증을 해주세요.");
				return map;
			}
			
			// if(!member.getMtEmail().equals("")) {
			// 	long duplicate_email = memberRepository.countByMtEmailAndMtLevelNot(member.getMtEmail(), 10);
			// 	if (duplicate_email > 0) {
			// 		map.put("error_code", "error");
			// 		map.put("error_detail", "이미 사용중인 이메일입니다");
			// 		return map;
			// 	}
			// }

			long duplicate_id = memberRepository.countByMtIdAndMtLevel(member.getMtId(), 1);
			if (duplicate_id > 0) {
				map.put("error_code", "error");
				map.put("error_detail", "이미 사용중인 아이디입니다.");
				return map;
			}

			long duplicate_hp = memberRepository.countByMtDi(member.getMtDi());
			if (duplicate_hp > 0) {
				map.put("error_code", "error");
				map.put("error_detail", "이미 사용중인 휴대폰 번호입니다.");
				return map;
			}

			int idx = memberRepository.save(member).getIdx();
			request.getSession().removeAttribute("niceapi_di");
			request.getSession().removeAttribute("niceapi_check");
			request.getSession().removeAttribute("mtHp");
			request.getSession().removeAttribute("mtName");
			request.getSession().removeAttribute("mtBirth");
			request.getSession().removeAttribute("mtGender");
			map.put("idx", idx);
			map.put("result", "success");

			return map;

		} catch (Exception e) {
			log.error("insertMember Error: " + e);
			return map;
		}
	}

	// 회원 정보 수정
	private HashMap<String, Object> updateMember(Member member, HashMap<String, Object> map,
			HttpServletRequest request) {

		try {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			User user = (User) authentication.getPrincipal();
			Member member2 = memberRepository.findByMtId(user.getUsername());

			if(!member.getMtEmail().equals("")) {
				long duplicate_email = memberRepository.countByIdxNotAndMtHpAndMtLevelNot(member.getIdx(), member.getMtEmail(), 10);
				if (duplicate_email > 0) {
					map.put("error_code", "error");
					map.put("error_detail", "이미 사용중인 이메일입니다");
					return map;
				}
			}
			
			// 이름
			member2.setMtName(member.getMtName());

			// ID
			member2.setMtId(member.getMtId());

			// HP
			member2.setMtHp(member.getMtHp());

			// Email
			member2.setMtEmail(member.getMtEmail());

			// Birth
			member2.setMtBirth(member.getMtBirth());

			// Email
			member2.setMtEmail(member.getMtEmail());

			// Addr
			member2.setMtAddr(member.getMtAddr());

			// AddrDetail
			member2.setMtAddrDetail(member.getMtAddrDetail());

			// Level
			member2.setMtLevel(member.getMtLevel());

			// Password
			if (member.getMtPwd() != null) {
				member2.setMtPwd(passwordEncoder.encode(member.getMtPwd()));
			}
			// DI
			if (request.getSession().getAttribute("niceapi_di2") != null) {

				member2.setMtDi(request.getSession().getAttribute("niceapi_di2").toString());
			}

			// 수정일 추가
			member2.setMtEdate(new Date());

			// 확진정보 추가
			// 확진
			if (member.getMtDiagnosis() == 1) {
				member2.setMtDiagnosis(1);
				member2.setMtDiagnosisCode(member.getMtDiagnosis());
				member2.setMtDiagnosisDate(member.getMtDiagnosisDate());
				member2.setMtDiagnosisName(member.getMtDiagnosisName());
				member2.setMtHospital(member.getMtHospital());
			}
			// 미확진
			else if (member.getMtDiagnosis() == 2) {
				member2.setMtDiagnosis(2);
				member2.setMtDiagnosisCode(0);
				member2.setMtDiagnosisDate(null);
				member2.setMtDiagnosisName(null);
				member2.setMtHospital(null);
			}

			int idx = memberRepository.save(member2).getIdx();
			request.getSession().removeAttribute("niceapi_di2");
			request.getSession().removeAttribute("niceapi_check2");
			request.getSession().removeAttribute("mtHp2");
			map.put("idx", idx);
			map.put("result", "success");

			return map;

		} catch (Exception e) {
			log.error("updateMember Error: " + e);
			return map;
		}
	}

		// 회원 탈퇴
	private HashMap<String, Object> deleteMember(String reason, HashMap<String, Object> map,
			HttpServletRequest request) {

		try {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			User user = (User) authentication.getPrincipal();
			Member member2 = memberRepository.findByMtId(user.getUsername());
			long result = serviceRepository.countByMtIdxAndStStateCodeNot(member2.getIdx(), 4);

			//신청한 서비스가 있으면 탈퇴불가
			if(result >0){
				map.put("result", "error2");
				return map;
			}

			// Level
			member2.setMtLevel(10);
			//탈퇴일
			member2.setMtRdate(new Date());
			//탈퇴사유
			member2.setMtExitReason(reason);

			int idx = memberRepository.save(member2).getIdx();

			map.put("idx", idx);
			map.put("result", "success");

			return map;

		} catch (Exception e) {
			log.error("updateMember Error: " + e);
			return map;
		}
	}

	// apply 업데이트
	public HashMap<String, Object> mainApplyUpdateDo(@Valid net.huray.onco.domain.Service service, String action,
			ArrayList<MultipartFile> files,
			ArrayList<MultipartFile> files2, BindingResult bindingResult, HttpServletRequest request, Model model) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", "error");

		switch (action) {
			// apply 등록
			case "insert_apply":
				map = insertApply(service, files, files2, map);
				break;
			default:
				break;
		}
		return map;
	}

	// apply 등록
	private HashMap<String, Object> insertApply(@Valid net.huray.onco.domain.Service service,
			ArrayList<MultipartFile> files, ArrayList<MultipartFile> files2, HashMap<String, Object> map) {

		Date now = new Date();

		LocalDateTime ldt = LocalDateTime.ofInstant(now.toInstant(), ZoneId.systemDefault());

		LocalDateTime plusDays = ldt.plus(7, ChronoUnit.DAYS);

		Date nowPlusDays = Date.from(plusDays.atZone(ZoneId.systemDefault()).toInstant());
		try {

			service.setStWdate(now);

			service.setStReceiveDate(nowPlusDays);

			service.setStStateCode(1);

			// 휴레이 알고리즘 적용 전 랜덤한 문자열 생성
			UUID uuid = UUID.randomUUID();
			String str = Long.toHexString(uuid.getMostSignificantBits()).toUpperCase();
			String uniqueString = str.substring(0, 4);
			service.setStString(uniqueString);

			int idx = serviceRepository.save(service).getIdx();
			log.debug("idx: " + idx);

			if (idx > 0) {
				if (files != null)
					fileService.save("service1", idx, files);
				if (files2 != null)
					fileService.save("service2", idx, files2);
				log.debug("end: " + idx);
				map.put("idx", idx);
				map.put("result", "success");

			}

			return map;

		} catch (Exception e) {
			log.error("insertApply Error: " + e);
			return map;
		}
	}

	// 1:1문의
	public HashMap<String, Object> mainInqueryUpdateDo(@Valid Qna qna, String action,
			ArrayList<MultipartFile> files, BindingResult bindingResult, HttpServletRequest request, Model model) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("result", "error");

		switch (action) {
			// apply 등록
			case "insert_inquery":
				map = insertInquery(qna, files, map);
				break;
			default:
				break;
		}
		return map;
	}

	// 1:1 문의 등록
	private HashMap<String, Object> insertInquery(@Valid Qna qna,
			ArrayList<MultipartFile> files, HashMap<String, Object> map) {

		// Authentication authentication =
		// SecurityContextHolder.getContext().getAuthentication();
		// if(authentication.getPrincipal() instanceof User){
		// User user = (User) authentication.getPrincipal();
		// Member member = memberRepository.findByMtId(user.getUsername());
		// inquery.setItMtIdx(member.getIdx());
		// }

		try {
			qna.setQtWdate(new Date());
			qna.setQtLevel(1);

			int idx = qnaRepository.save(qna).getIdx();
			log.debug("idx: " + idx);

			if (idx > 0) {
				if (files != null)
					fileService.save("qna", idx, files);
				map.put("idx", idx);
				map.put("result", "success");

			}

			return map;

		} catch (Exception e) {
			log.error("insertApply Error: " + e);
			return map;
		}
	}

	// 서비스 모달
	public net.huray.onco.domain.Service mainGetApply(int idx) {

		try {
			net.huray.onco.domain.Service service = serviceRepository.findByIdx(idx);
			return service;
		} catch (Exception e) {
			return null;
		}

	}

}
