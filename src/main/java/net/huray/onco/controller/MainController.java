package net.huray.onco.controller;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;
import net.huray.onco.domain.Member;
import net.huray.onco.domain.Qna;
import net.huray.onco.domain.Service;
import net.huray.onco.service.MainService;

@Controller
@Order(Ordered.HIGHEST_PRECEDENCE)
@Slf4j
public class MainController {

    @Autowired
    MainService mainService;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                if ("".equals(text)) {
                    setValue(null);
                } else {
                    try {
                        setValue(new SimpleDateFormat("yyyy-MM-dd").parse(text));
                    } catch (ParseException e) {
                        setValue(null);
                    }
                }
            }

            @Override
            public String getAsText() {
                return new SimpleDateFormat("yyyy-MM-dd").format((Date) getValue());
            }

        });
    }

    // 메인 페이지
    @GetMapping("/")
    public String home() {
        log.info("/");
        return "redirect:/main/index";
    }

    // 메인 페이지
    @GetMapping("/main")
    public String maina() {
        log.info("/main");
        return "redirect:/main/index";
    }

    // 메인 페이지
    @GetMapping("/main/index")
    public String mainIndex() {
        log.info("/main/index");
        return "/main/index";
    }

    // 로그인 페이지
    @GetMapping("/main/login")
    public String mainLogin() {
        log.info("/main/login");
        return "/main/login";
    }

    // 회원가입 약관동의 페이지
    @GetMapping("/main/joinStart")
    public String mainJoinStart() {
        log.info("/main/joinStart");
        return "/main/joinStart";
    }

    // 회원가입 페이지
    @GetMapping("/main/join")
    public String mainJoin(Model model) {
        log.info("/main/join");
        mainService.getDiagnosisList(model);
        return "/main/join";

    }

    // 회원가입 완료 페이지
    @GetMapping("/main/joinDone/{mtId}/{mtName}")
    public String mainJoinDone(Model model, @PathVariable String mtId, @PathVariable String mtName) {
        log.info("/main/joinDone");
        model.addAttribute("mtId", mtId);
        model.addAttribute("mtName", mtName);
        return "/main/joinDone";
    }

    // 최신 암 정보 페이지
    @GetMapping("/main/newSearch")
    public String mainNewSearch(HttpServletRequest request, Model model) {
        log.info("/main/newSearch");
        mainService.getDiagnosisList(model);
        mainService.getGeneList(model);
        mainService.getNewList(request, model);
        return "/main/newSearch";
    }

    // 최신 암 정보 상세 페이지
    @GetMapping("/main/newCont/{id}")
    public String mainNewCont(HttpServletRequest request,HttpServletResponse response,@PathVariable int id, Model model) {
        mainService.getContent(request,response,id, model);
        log.info("/main/newCont");
        return "/main/newCont";
    }

    // 서비스 신청 페이지
    @GetMapping("/main/serviceStart")
    public String mainServiceStart() {
        log.info("/main/serviceStart");
        return "/main/serviceStart";
    }

    // 서비스 신청 폼
    @GetMapping("/main/applyForm")
    public String mainApplyForm(Model model) {
        mainService.getDiagnosisList(model);
        mainService.getMypage(model);
        log.info("/main/applyForm");
        return "/main/applyForm";
    }

    // 서비스 신청 폼 - 비로그인
    @GetMapping("/main/serviceFormNm")
    public String mainServiceFormNm(Model model) {
        mainService.getDiagnosisList(model);
        log.info("/main/serviceFormNm");
        return "/main/serviceFormNm";
    }

    // 서비스 신청 완료 페이지
    @GetMapping("/main/applyDone")
    public String mainAppliyDone(Model model) {
        mainService.getDiagnosisList(model);
        log.info("/main/applyDone");
        return "/main/applyDone";
    }

    // 공지사항 페이지
    @GetMapping("/main/notice")
    public String mainNotice(HttpServletRequest request, Model model) {
        mainService.getNoticeList(request, model);
        log.info("/main/notice");
        return "/main/notice";
    }

    // 공지사항 상세 페이지
    @GetMapping("/main/noticeCont/{id}")
    public String mainnoticeCont(HttpServletRequest request,HttpServletResponse response,@PathVariable String id, Model model) {
        mainService.getNotice(request,response,Integer.parseInt(id), model);
        log.info("/main/noticeCont");
        return "/main/noticeCont";
    }

    // 마이페이지
    @GetMapping("/main/mypage")
    public String mainMypage(Model model) {
        mainService.getMypage(model);
        mainService.getDiagnosisList(model);
        log.info("/main/mypage");
        return "/main/mypage";
    }

    // 서비스 신청 조회 페이지
    @GetMapping("/main/applyList")
    public String mainApplyList(HttpServletRequest request, Model model) {
        mainService.getMypage(model);
        mainService.mainApplyList(request, model);
        log.info("/main/applyList");
        return "/main/applyList";
    }

    // 서비스 모달
    @GetMapping("/main/applyModal")
    @ResponseBody
    public Service mainServiceModal(@RequestParam(value="idx") int id) {
        log.info("/main/applyList");
        return mainService.mainGetApply(id);
    }

    // 암 정밀의료 페이지
    @GetMapping("/main/medical01")
    public String mainMedical01() {
        log.info("/main/medical01");
        return "/main/medical01";
    }

    // NGS 검사란? 페이지
    @GetMapping("/main/medical02")
    public String mainMedical02() {
        log.info("/main/medical02");
        return "/main/medical02";
    }

    // 표적치료제 페이지
    @GetMapping("/main/medical03")
    public String mainMedical03() {
        log.info("/main/medical03");
        return "/main/medical03";
    }

    // 회사소개 페이지
    @GetMapping("/main/company")
    public String mainCompany() {
        log.info("/main/company");
        return "/main/company";
    }

    // 구성원 소개 페이지
    @GetMapping("/main/companyTeam")
    public String mainCompanyTeam() {
        log.info("/main/companyTeam");
        return "/main/companyTeam";
    }

    // 비전 및 목표 페이지
    @GetMapping("/main/companyVision")
    public String mainComponyVision() {
        log.info("/main/companyVision");
        return "/main/companyVision";
    }

    // 자주묻는 질문 페이지
    @GetMapping("/main/faq")
    public String mainFaq(HttpServletRequest request, Model model) {
        mainService.getFaq(request, model);
        log.info("/main/faq");
        return "/main/faq";
    }

    // 1:1 문의 페이지
    @GetMapping("/main/inquery")
    public String mainInquery(Model model) {
        mainService.getMypage(model);
        log.info("/main/inquery");
        return "/main/inquery";
    }

    // 비회원 1:1 문의 페이지
    @GetMapping("/main/queryNm")
    public String mainQueryNm(Model model) {
        log.info("/main/queryNm");
        return "/main/queryNm";
    }

    // 비회원 문의 찾기 페이지
    @GetMapping("/main/queryFindNm")
    public String mainQueryFindNm() {
        log.info("/main/queryFindNm");
        return "/main/queryFindNm";
    }

    // 나의문의 내역 페이지
    @GetMapping("/main/inqueryList")
    public String mainInqueryList(HttpServletRequest request, Model model) {
        mainService.getInqueryList(request, model);
        log.info("/main/inqueryList");
        return "/main/inqueryList";
    }

    // 비회원 나의문의 내역 페이지
    @GetMapping("/main/queryListNm/{name}/{phone}")
    public String mainQueryListNm(HttpServletRequest request, Model model, @PathVariable String name,
            @PathVariable String phone) {
        log.info("/main/queryListNm");
        mainService.getQueryListNm(request, model, name, phone);
        return "/main/queryListNm";
    }

    // 나의문의 내역 상세 페이지
    @GetMapping("/main/inqueryCont/{id}")
    public String mainInqueryCont(@PathVariable String id, Model model) {
        mainService.getInqery(Integer.parseInt(id), model);
        log.info("/main/inqueryCont");
        return "/main/inqueryCont";
    }

    // 비회원 나의문의 내역 상세 페이지
    @GetMapping("/main/queryContNm/{id}")
    public String mainQueryContNm(@PathVariable String id, Model model) {
        mainService.getInqery(Integer.parseInt(id), model);
        log.info("/main/queryContNm");
        return "/main/queryContNm";
    }

    // 개인정보처리방침 페이지
    @GetMapping("/main/privacyPolicy")
    public String mainPrivacyPolicy(Model model) {
        log.info("/main/privacyPolicy");
        mainService.mainPrivacyPolicy(model);
        return "/main/privacyPolicy";
    }
    // 이용약관 페이지
    @GetMapping("/main/terms")
    public String mainTerms(Model model) {
        log.info("/main/terms");
        mainService.mainTerms(model);
        return "/main/terms";
    }

    // 등록내역 없음 페이지
    @GetMapping("/main/inqueryNocont")
    public String mainInqueryNocont() {
        log.info("/main/inqueryNocont");
        return "/main/inqueryNocont";
    }

    // 서비스 소개 페이지
    @GetMapping("/main/serviceInfo")
    public String mainServiceInfo() {
        log.info("/main/serviceInfo");
        return "/main/serviceInfo";
    }

    // 신청대상자 페이지
    @GetMapping("/main/serviceUse")
    public String mainServiceUse() {
        log.info("/main/serviceUse");
        return "/main/serviceUse";
    }

    // 본인인증 팝업
    @GetMapping("/main/nicePopup")
    public String mainNicePopup(HttpServletRequest request, Model model) {
        log.info("/main/nicePopup");
        mainService.nicePopup(request, model);

        return "/main/nicePopup";
    }

    // 마이페이지 본인인증 팝업
    @GetMapping("/main/nicePopup2")
    public String mainNicePopup2(HttpServletRequest request, Model model) {
        log.info("/main/nicePopup2");
        mainService.nicePopup2(request, model);

        return "/main/nicePopup2";
    }

    // 본인인증 콜백
    @GetMapping("/main/niceCallback")
    public String niceApiUpdate(@RequestParam("enc_data") String encData, HttpServletRequest request) {
        log.info("/main/niceCallback");
        mainService.niceCallback(encData, request);
        return "redirect:/main/niceApiUpdate";
    }

    // 본인인증 처리
    @GetMapping("/main/niceApiUpdate")
    public String niceApiUpdateDo(HttpServletRequest request, Model model) {
        log.info("/main/niceApiUpdate");
        mainService.niceCheck(request, model);
        return "/main/temp";
    }

    // 마이페이지 본인인증 콜백
    @GetMapping("/main/niceCallback2")
    public String niceApiUpdate2(@RequestParam("enc_data") String encData, HttpServletRequest request) {
        log.info("/main/niceCallback2");
        mainService.niceCallback2(encData, request);
        return "redirect:/main/niceApiUpdate2";
    }

    // 마이페이지 본인인증 처리
    @GetMapping("/main/niceApiUpdate2")
    public String niceApiUpdateDo2(HttpServletRequest request, Model model) {
        log.info("/main/niceApiUpdate2");
        mainService.niceCheck2(request, model);
        return "/main/temp2";
    }

      	//파일 가져오기
  	@GetMapping("/mng/download/{fileName}")
    public void mngDownloadDo(@PathVariable("fileName") String fileName, HttpServletRequest request, HttpServletResponse response,  Model model) {
		log.debug("/mng/download/");
		mainService.mngDownloadDo(fileName, request, response, model);
  	}

    // 로그인
    @PostMapping("/main/loginUpdate.do")
    @ResponseBody
    public HashMap<String, Object> mainLoginUpdateDo(@Valid @ModelAttribute Member Member, BindingResult bindingResult,
            HttpServletRequest request, Model model) {
        log.debug("/main/loginUpdate.do");
        return mainService.mainLoginUpdateDo(Member, bindingResult, request, model);
    }

    // 로그아웃
    @GetMapping("/main/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        log.debug("/main/logout");
        HttpSession session = request.getSession(false);
        SecurityContextHolder.clearContext();
        if (session != null) {
            session.invalidate();
        }
        new SecurityContextLogoutHandler().logout(request, response,
                SecurityContextHolder.getContext().getAuthentication());
        return "redirect:/main/login";
    }

    // 회원가입
    @PostMapping("/main/join")
    @ResponseBody
    public HashMap<String, Object> mainJoin(@Valid @ModelAttribute Member member,
            @RequestParam(value = "action") String action, BindingResult bindingResult, HttpServletRequest request,
            Model model) {
        log.debug("/main/join");
        return mainService.mainJoin(member, action, bindingResult, request, model);
    }

    // 정보수정
    @PostMapping("/main/updateMember")
    @ResponseBody
    public HashMap<String, Object> mainUpdate(@Valid @ModelAttribute Member member,
            @RequestParam(value = "action") String action, BindingResult bindingResult, HttpServletRequest request,
            Model model) {
        log.debug("/main/updateMember");
        return mainService.mainUpdate(member, action, bindingResult, request, model);
    }

     // 회원탈퇴
    @PostMapping("/main/deleteMember")
    @ResponseBody
    public HashMap<String, Object> mainDeleteMember( @RequestParam(value = "reason") String reason,
     HttpServletRequest request) {
        log.debug("/main/updateMember");
        return mainService.mainDelete(reason, request);
    }

    // 서비스 업데이트
    @PostMapping("/main/applyUpdate.do")
    @ResponseBody
    public HashMap<String, Object> mainApplyUpdateDo(@ModelAttribute Service service,
            @RequestParam(value = "action") String action,
            @RequestPart(value = "files", required = false) ArrayList<MultipartFile> files,
            @RequestPart(value = "files2", required = false) ArrayList<MultipartFile> files2,
            BindingResult bindingResult, HttpServletRequest request, Model model) {
        log.debug("/main/applyUpdate.do");

        // ArrayList<MultipartFile> files = new ArrayList<>();
        // files.add(file);

        return mainService.mainApplyUpdateDo(service, action, files, files2, bindingResult, request, model);
    }

    // 문의작성
    @PostMapping("/main/inqueryUpdate.do")
    @ResponseBody
    public HashMap<String, Object> inqueryUpdateDo(@ModelAttribute Qna qna,
            @RequestParam(value = "action") String action,
            @RequestPart(value = "files", required = false) ArrayList<MultipartFile> files,
            BindingResult bindingResult, HttpServletRequest request, Model model) {
        log.debug("/main/inqueryUpdate.do");

        // ArrayList<MultipartFile> files = new ArrayList<>();
        // files.add(file);

        return mainService.mainInqueryUpdateDo(qna, action, files, bindingResult, request, model);
    }

    // 비회원 문의작성
    @PostMapping("/main/queryUpdate.do")
    @ResponseBody
    public HashMap<String, Object> queryUpdateDo(@ModelAttribute Qna qna,
            @RequestParam(value = "action") String action,
            @RequestPart(value = "files", required = false) ArrayList<MultipartFile> files,
            BindingResult bindingResult, HttpServletRequest request, Model model) {
        log.debug("/main/queryUpdate.do");

        // ArrayList<MultipartFile> files = new ArrayList<>();
        // files.add(file);

        return mainService.mainInqueryUpdateDo(qna, action, files, bindingResult, request, model);
    }

}
