<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="inc/config.jsp"%>
<%@ include file="inc/head.jsp"%>
<style>
    body{
        background-color: #fff;
    }
    .sub_pg{
        padding-top: 0;
    }
    .pair {
    display: flex;
}
</style>
<div class="sub_pg">
    <div class="container">
        <div class="form_wrap">
            <div class="breadcrumbs">
                <ul class="d-flex pt_40">
                    <li class="mr_14"><a href="/main/index" class="fs_14 fw_400 text-light2"><img src="${CDN_HTTP}/images/ico_bread_home.svg" alt="홈" class="mr-2"> 홈</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">온코마스터 서비스</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="/main/applyForm" class="fs_14 fw_400 text-light2">서비스신청</a></li>
                </ul>
            </div>
            <div class="d-flex align-items-end justify-content-between form_tit_wrap">
                <div class="d-flex align-items-end mt_40">
                    <h1>서비스지 신청서를</br>
                    작성해주세요.</h1>
                </div>
                <img src="${CDN_HTTP}/images/ico_list.svg" alt="회원가입" class="pb-0"/>
            </div>
            <form action="">
                <div class="mt-3 pt_40">
                    <div class="d-flex align-items-end border-border border-bottom pb_20 mb_40">
                        <p class="tit_h3">신청인 정보</p>
                        <p class="slash2 position-relative pl-3 ml-3 fs_16 fw_300 fc_7584"> 필수 입력 사항입니다.</p>
                    </div>
                    <div class="form-row mt-3 ">
                        <div class="ip_wr col-md-6 mb_30">
                            <div class="ip_tit">
                                <h5>이름</h5>
                            </div>
                            <input type="text" class="form-control" id="mtName" disabled placeholder="이름" value="${member.mtName}">
                        </div>
                        <div class="ip_wr col-md-6 mb_30">
                            <div class="ip_tit">
                                <h5>생년월일</h5>
                            </div>
                            <input type="date" class="form-control position-relative" id="mtBirth" disabled
                            value="<c:if test='${member.mtBirth != null}'><fmt:formatDate value='${member.mtBirth}' pattern='yyyy-MM-dd'/></c:if>">
                        </div>
                    </div>
                    <div class="form-row mt-3 mb_30">
                        <div class="ip_wr ip_valid col-md-6">
                            <div class="ip_tit">
                                <h5>휴대폰 번호</h5>
                            </div>
                            <div class="d-flex align-items-center">
                                <div class="ph_wrap">
                                    <input type="text" class="form-control" disabled value="${member.mtHp}">
                                </div>
                                <!-- <button type="button" class="btn btn-outline-primary btn-sm ml-3">회원인증</button> -->
                                <!-- 회원 아닐 시 모달 -->
                                <!-- <button type="button" class="btn btn-outline-primary btn-sm ml-3" data-toggle="modal" data-target="#apply_join_modal">회원인증</button> -->
                            </div>
                            <!-- <div class="form-text ip_valid"><i class="ri-checkbox-circle-line"></i> 인증되었습니다.</div>
                            <div class="form-text ip_invalid"><i class="ri-error-warning-line"></i> 회원가입 내역이없습니다. 회원가입 후 이용해주세요.</div> -->
                        </div>
                    </div>
                    <div class="form-row mt-3 mb_30 ">
                        <div class="ip_wr col-md-12">
                            <div class="ip_tit">
                                <p class="fs_16 fw_500">암종</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <select class="form-control custom-select" id="stDiagnosisCode">
                                <option selected value="0">암종 선택</option>
                                <c:forEach var="diagnosis" items="${diagnoisList}">
                                    <option value="${diagnosis.idx}" <c:choose><c:when test="${member.mtDiagnosisCode == diagnosis.idx}">selected</c:when><c:otherwise></c:otherwise></c:choose>>${diagnosis.dtName}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="stDiagnosisName" placeholder="직접입력" value="${member.mtDiagnosisName}">
                        </div>
                    </div>
                    <div class="form-row mt-3 mb_30 border-bottom pb_40">
                        <div class="ip_wr col-md-6 mb_30">
                            <div class="ip_tit">
                                <p class="fs_16 fw_500">병원명</p>
                            </div>
                            <input type="text" class="form-control" id="stHospital" placeholder="병원명" value="${member.mtHospital}">
                        </div>
                    </div>

                    <div class="d-flex align-items-end border-border border-bottom pb_20 mb_40 pt-5 flex-wrap tit_flexwrap">
                        <p class="tit_h3">제공 및 수령 방식 선택</p>
                        <p class="slash2 position-relative pl-3 ml-3 fs_16 fw_300 fc_7584"> 필수 입력 사항입니다.</p>
                    </div>
                    <div class="form-row mt-3 mb_30 ">
                        <div class="ip_wr col-md-12">
                            <div class="ip_tit">
                                <h5>서류 제출 방식</h5>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <select class="form-control custom-select" id="stReceiptFormat">
                                <option selected value="0">서류 제출 방식 선택</option>
                                <option value="1">하단에 문서 첨부(신청시 홈페이지 통한 제출)</option>
                                <option value="2">이메일 제출</option>
                            </select>
                            <small class="d-none" id="stReceiptFormatError"><img class="mr-2" src="${CDN_HTTP}/images/ic_label_danger.png">선택해주세요.</small>  
                        </div>
                    </div>
                    <div class="form-row mt-3 mb_30">
                        <div class="ip_wr col-md-12">
                            <div class="ip_tit">
                                <h5>서비스지 수령 방식</h5>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <select class="form-control custom-select"  id="stSubmitFormat">
                                <option selected value="0">서비스지 수령 방식 선택</option>
                                <option value="1">이메일로 받기</option>
                                <option value="2">문자로 받기</option>
                                <option value="3">카카오톡으로 받기</option>
                            </select>
                            <small class="d-none" id="stSubmitFormatError"><img class="mr-2" src="${CDN_HTTP}/images/ic_label_danger.png">선택해주세요.</small> 
                        </div>
                     
                    </div>
                    <div class="form-row mt-3 mb_30">
                        <div class="ip_wr col-md-12">
                            <div class="ip_tit">
                                <p class="fs_16 fw_500">이메일</p>
                            </div>
                        </div>
                        <div class="row w-100 mail_form">
                            <div class="d-flex align-items-center mail_wrap col-md-8 col-12">
                                <c:set var="emailParts" value="${fn:split(member.mtEmail, '@')}" />
                                <input type="text" class="form-control" value="${emailParts[0]}"  id="stEmail">
                                <p class="px-3 mt-3">@</p>
                                <input type="text" class="form-control" value="${emailParts[1]}" id="stEmail2">
                            </div>
                            <select class="form-control custom-select col-md-4 col-12"  id="emailSelect">
                                <option selected>선택하기</option>
                                <option value="1">naver.com</option>
                                <option value="2">gmail.com</option>
                                <option value="3">daum.net</option>
                                <option value="3">nate.com</option>
                                <option value="3">hanmail.net</option>
                                <option value="3">hotmail.net</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-row mt-3 mb_30">
                        <div class="ip_wr col-md-6">
                            <div class="ip_tit">
                                <p class="fs_16 fw_500">병원 의무기록지</ㅔ>
                            </div>
                            <div class="form-group upload_file_item mt-3">
                                <label onclick="open_file_select();" class="file_upload square"><i class="xi-file-add-o pr-2"></i> 문서첨부</label>
                                <input type="file" class="form-control-file d-none" id="multipartFile" multiple onchange="ValidateMultipleInput(this);" >
                            </div>
                        </div>
                        <div class="file_cont_wrap col-md-12 scrolly_bar">
                            <div class="pair">
                            <div class="fs_16 fw_400 mb-3 line_h1_3 my_attachment_title"></div>
                            <span class="d-none xi-close-circle my-cc" onclick="remove_file(0);"></span>
                            </div>
                            <div class="pair">
                            <div class="fs_16 fw_400 mb-3 line_h1_3 my_attachment_title"></div>
                            <span class="d-none xi-close-circle my-cc" onclick="remove_file(1);"></span>
                            </div>
                            <div class="fs_16 fw_400 mb-3 line_h1_3 my_attachment_title"></div>
                            <span class="d-none xi-close-circle my-cc" onclick="remove_file(2);"></span>
                            <div class="pair">
                            <div class="fs_16 fw_400 mb-3 line_h1_3 my_attachment_title"></div>
                            <span class="d-none xi-close-circle my-cc" onclick="remove_file(3);"></span>
                            </div><div class="pair">
                            <div class="fs_16 fw_400 mb-3 line_h1_3 my_attachment_title"></div>
                            <span class="d-none xi-close-circle my-cc" onclick="remove_file(4);"></span>
                            </div>
                        </div>
                    </div>
                    <div class="form-row mt-3 mb_30">
                        <div class="ip_wr col-md-6">
                            <div class="ip_tit">
                                <p class="fs_16 fw_500">암 유전자검사 결과지</p>
                            </div>
                            <div class="form-group upload_file_item mt-3">
                                <label onclick="open_file_select2();" class="file_upload square"><i class="xi-file-add-o pr-2"></i> 문서첨부</label>
                                <input type="file" class="form-control-file d-none" id="multipartFile2" multiple onchange="ValidateMultipleInput2(this);" >
                            </div>
                        </div>
                        
                        <div class="file_cont_wrap col-md-12 scrolly_bar">
                            <div class="pair">
                                <div class="fs_16 fw_400 mb-3 line_h1_3 my_attachment_title2"></div>
                                <span class="d-none xi-close-circle my-cc2" onclick="remove_file2(0);"></span>
                            </div>
                            <div class="pair">
                            <div class="fs_16 fw_400 mb-3 line_h1_3 my_attachment_title2"></div>
                            <span class="d-none xi-close-circle my-cc2" onclick="remove_file2(1);"></span>
                            </div>
                            <div class="pair">
                            <div class="fs_16 fw_400 mb-3 line_h1_3 my_attachment_title2"></div>
                            <span class="d-none xi-close-circle my-cc2" onclick="remove_file2(2);"></span>
                            </div>
                            <div class="pair">
                            <div class="fs_16 fw_400 mb-3 line_h1_3 my_attachment_title2"></div>
                            <span class="d-none xi-close-circle my-cc2" onclick="remove_file2(3);"></span>
                            </div>
                            <div class="pair">
                            <div class="fs_16 fw_400 mb-3 line_h1_3 my_attachment_title2"></div>
                            <span class="d-none xi-close-circle my-cc2" onclick="remove_file2(4);"></span>
                            </div>
                        </div>
                    </div>
                    <!-- button -->
                    <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto mt_40"  onclick="open_modal_confirm('서비스를 신청하시겠습니까?');">신청하기 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="바로가기"/></button>
                </div>
            </form>
        </div>
    </div>
</div>


<div class="modal fade" id="service_cont_modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg">
        <div class="modal-content px_40 py_40">
            <div class="modal-header pb-0 " style="display:block">
                <div class="d-flex justify-content-between align-items-center">
                    <h5 class="modal-title fs_26 fw_700">신청내역</h5>
                    <button type="button" class="btn_close btn mt-0 pr-0" data-dismiss="modal" aria-label="Close">
                        <i class="ri-close-fill fs_25 fc_7070"></i>
                    </button>
                </div>
            </div>
            <div class="modal-body pt_40 ">
                <form>
                    <div class="form-row pb-4">
                        <div class="col-md-4 mt-3">
                            <p class="fs_16 fw_600">신청번호</p>
                        </div>
                        <div class="col-md-8 mt-3">
                            <p class="text-primary fw_16 fw_600">B2C2</p>
                        </div>
                    </div>
                    <div class="form-row pb-4">
                        <div class="col-md-4 mt-3">
                            <p class="fs_16 fw_600">신청일자</p>
                        </div>
                        <div class="col-md-8 mt-3">
                            <p class="text-light fw_16 fw_600">2023-05-01</p>
                        </div>
                    </div>
                    <div class="form-row pb-4">
                        <div class="col-md-4 mt-3">
                            <p class="fs_16 fw_600">예상수령일자</p>
                        </div>
                        <div class="col-md-8 mt-3">
                            <p class="text-light fw_16 fw_600">2023-05-01</p>
                            <div class="text-danger mt-3"><i class="ri-error-warning-line"></i> 내부 사정으로 인해 지연될 수 있습니다.</div>
                        </div>
                    </div>
                    <div class="form-row pb-4">
                        <div class="col-md-4 mt-3">
                            <p class="fs_16 fw_600">신청인</p>
                        </div>
                        <div class="col-md-8 mt-3">
                            <p class="text-light fw_16 fw_600">${member.mtName}</p>
                        </div>
                    </div>
                    <div class="form-row pb-4">
                        <div class="col-md-4 mt-3">
                            <p class="fs_16 fw_600">서류제출</p>
                        </div>
                        <div class="col-md-8 mt-3">
                            <p class="text-light fw_16 fw_600">홈페이지제출</p>
                            <div class="bg-deep-light mt-4 rounded px-3 py-3">
                                <p class="slash2 fc_7f91 position-relative pl-3">이메일 서류 제출 시 : <a href="mailto:service@oncomaster.co.kr" class="fc_7f91">service@oncomaster.co.kr</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="form-row pb-4">
                        <div class="col-md-4 mt-3">
                            <p class="fs_16 fw_600">수령방식</p>
                        </div>
                        <div class="col-md-8 mt-3">
                            <p class="text-light fw_16 fw_600">이메일</p>
                        </div>
                    </div>
                    <div class="form-row pb-4">
                        <div class="col-md-4 mt-3">
                            <p class="fs_16 fw_600">신청상태</p>
                        </div>
                        <div class="col-md-8 mt-3">
                             <!-- 클래스명 사용하시면 됩니다. -->
                             <div class="condt reception_waiting">접수대기</div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer pt_30 d-flex justify-content-center">
                 <div class="d-flex justify-content-center">
                    <button type="button" class="btn btn-outline-secondary btn-xm mr-3" onclick="location.href='/main/applyList'">목록보기</button>
                    <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center" onclick="location.href='/main/query'">1:1문의하기 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="바로가기"/></button>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
        document.getElementById('emailSelect').addEventListener('change', function () {
        const emailDomains = {
            1: 'naver.com',
            2: 'gmail.com',
            3: 'daum.net',
            4: 'nate.com',
            5: 'hanmail.net',
            6: 'hotmail.net',
        };

        const selectedValue = this.value;
        const emailInput = document.getElementById('stEmail2');

        if (emailDomains[selectedValue]) {
            emailInput.value = emailDomains[selectedValue];
        } else {
            emailInput.value = '';
        }
    });

//파일 선택하기 클릭 이벤트
function open_file_select() {
    $('#multipartFile').click();
}
function open_file_select2() {
    $('#multipartFile2').click();
}

// 파일 확장자 배열
var _validFileExtensions = [".jpg", ".jpeg", ".bmp", ".gif", ".png", ".doc", ".docm", ".docx", ".dot", ".dotm", ".dotx", ".odt", ".pdf", ".rtf", ".txt", ".wps", 
    ".xml", ".xps", ".csv", ".dbf", ".dif", ".ods", ".prn", ".slk", ".xla", ".xlam", ".xls", ".xlsb", ".xlsm", ".xlsx", ".", ".xlt", ".xltm", ".xltx", ".xlw", 
    ".bmp", ".emf", ".gif", ".mp4", ".odp", ".pot", ".potm", ".potx", ".ppa", ".ppam", ".pps", ".ppsm", ".ppsx", ".ppt", ".pptm", ".pptx", ".thmx", ".tif", ".wmf",
    ".wmv", ".zip", ".bin", ".alz", ".cab", ".tar", ".tgz", ".war", ".rar", ".7z"];

// 파일 확장자 확인
function ValidateMultipleInput(oInput) {

    if (oInput.type == "file") {
        let files = oInput.files;
        let count = files.length;
        let invalidFiles = [];
        
        if(files.length > 5){
        	open_modal_alert("최대 5개의 파일까지 첨부가 가능합니다.", "File Error");
        	return false;
        }

        for (let i = 0; i < count; i++) {
            let sFileName = files[i].name;
            let blnValid = false;

            for (let j = 0; j < _validFileExtensions.length; j++) {
                let sCurExtension = _validFileExtensions[j];
                let sFileExt = sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toUpperCase();

                if (sFileExt.toLowerCase() == sCurExtension.toLowerCase()) {
                    blnValid = true;
                    break;
                }
            }

            if (!blnValid) {
                invalidFiles.push(sFileName);
            } else {
                set_file_title(sFileName, i);
            }
        }
		
        
        if (invalidFiles.length > 0) {
            let invalidExtensions = invalidFiles.join(", ");
            open_modal_alert("\"" + invalidExtensions + "\" - 해당 확장자는 첨부가 불가능한 확장자입니다.", "File Error");
            oInput.value = "";
            return false;
        }
        
    }
    return true;
}

function ValidateMultipleInput2(oInput) {

if (oInput.type == "file") {
    let files = oInput.files;
    let count = files.length;
    let invalidFiles = [];
    
    if(files.length > 5){
        open_modal_alert("최대 5개의 파일까지 첨부가 가능합니다.", "File Error");
        return false;
    }

    for (let i = 0; i < count; i++) {
        let sFileName = files[i].name;
        let blnValid = false;

        for (let j = 0; j < _validFileExtensions.length; j++) {
            let sCurExtension = _validFileExtensions[j];
            let sFileExt = sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toUpperCase();

            if (sFileExt.toLowerCase() == sCurExtension.toLowerCase()) {
                blnValid = true;
                break;
            }
        }

        if (!blnValid) {
            invalidFiles.push(sFileName);
        } else {
            set_file_title2(sFileName, i);
        }
    }
    
    
    if (invalidFiles.length > 0) {
        let invalidExtensions = invalidFiles.join(", ");
        open_modal_alert("\"" + invalidExtensions + "\" - 해당 확장자는 첨부가 불가능한 확장자입니다.", "File Error");
        oInput.value = "";
        return false;
    }
    
}
return true;
}
// 파일명 보여주기
function set_file_title(fileSrc, i) {
	//파일명 삭제
    if (fileSrc == "") {
        $('.my_attachment_title').eq(i).text('');
        $('.my-cc').eq(i).addClass('d-none');
        return;
    }
	//파일명 입력
    let fileValue = fileSrc.split("\\");
    let fileName = fileValue[fileValue.length - 1];
    $('.my_attachment_title').eq(i).text(fileName);
    $('.my-cc').eq(i).removeClass('d-none');
}

function set_file_title2(fileSrc, i) {
	//파일명 삭제
    if (fileSrc == "") {
        $('.my_attachment_title2').eq(i).text('');
        $('.my-cc2').eq(i).addClass('d-none');
        return;
    }
	//파일명 입력
    let fileValue = fileSrc.split("\\");
    let fileName = fileValue[fileValue.length - 1];
    $('.my_attachment_title2').eq(i).text(fileName);
    $('.my-cc2').eq(i).removeClass('d-none');
}

// 파일 삭제 버튼 클릭 시
function remove_file(i) {

    let files = $('#multipartFile').prop('files');
    let fileCount = files.length;

 	// 새로운 FileList 객체 생성
    let newFileList = new DataTransfer();

    if (fileCount > 0) {
        // 선택된 파일이 존재하는 경우
        for (let j = 0; j < fileCount; j++) {
        	set_file_title("", j);
            if (j !== i) {
                newFileList.items.add(files[j]);
            }
        }
        //삭제된 파일을 제외한 객체 초기화
        $('#multipartFile')[0].files = newFileList.files;
        
        //새로운 객체로 파일 타이틀 입력
        files = $('#multipartFile').prop('files');
        fileCount = files.length;
        for (let j = 0; j < fileCount; j++) {
        	set_file_title(files[j].name, j)
        }
    }
}

// 파일 삭제 버튼 클릭 시
function remove_file2(i) {

let files = $('#multipartFile2').prop('files');
let fileCount = files.length;

 // 새로운 FileList 객체 생성
let newFileList = new DataTransfer();

if (fileCount > 0) {
    // 선택된 파일이 존재하는 경우
    for (let j = 0; j < fileCount; j++) {
        set_file_title2("", j);
        if (j !== i) {
            newFileList.items.add(files[j]);
        }
    }
    //삭제된 파일을 제외한 객체 초기화
    $('#multipartFile2')[0].files = newFileList.files;
    
    //새로운 객체로 파일 타이틀 입력
    files = $('#multipartFile2').prop('files');
    fileCount = files.length;
    for (let j = 0; j < fileCount; j++) {
        set_file_title2(files[j].name, j)
    }
}
}



$('#modal_confirm_btn2').click(function (){
	history.back();
});

$('#modal_confirm_btn').click(function (){
	insert_apply();
});

async function insert_apply(){
    var mtIdx = "${member.idx}";
    let stDiagnosisCode = $("#stDiagnosisCode").val();
    let stDiagnosisName = $("#stDiagnosisName").val();
    let stHospital = $("#stHospital").val();
    let stReceipFormat = $("#stReceiptFormat").val();
    let stSubmitFormat = $("#stSubmitFormat").val();
    let stEmail = $("#stEmail").val();

    console.log(mtIdx);

    let error_count = 0;

	
	if(stReceipFormat == "0"){
		$("#stReceipFormatError").removeClass('d-none');
		error_count++
	}else{
		$("#stReceipFormatError").addClass('d-none');
	}
    if(stSubmitFormat == "0"){
		$("#stSubmitFormatError").removeClass('d-none');
		error_count++
	}else{
		$("#stSubmitFormatError").addClass('d-none');
	}


	if(error_count > 0){
		return open_modal_alert("필수 입력사항을 확인해주세요."); ;
	}

	let params = {
			action:'insert_apply', 
            mtIdx:mtIdx,
            stDiagnosisCode:stDiagnosisCode,
            stDiagnosisName:stDiagnosisName,
            stHospital:stHospital,
            stReceiptFormatCode:stReceipFormat,
            stSubmitFormatCode:stSubmitFormat,
            stEmail:stEmail
		}
	
	let files = await fileArray($('input[type="file"]').get(0).files);
    let files2 = await fileArray($('input[type="file"]').get(1).files);
    
	if(files.length > 0){
        
		params['files'] = files;
	}
    if(files2.length > 0){
        params['files2'] = files2;
    }
	
	
	console.log(params);
	
// 	return;
	
	let res = await awaitPostMultipart("/main/applyUpdate.do", params, true);
	
	if(res.result == 'success'){
		console.log(res);
		open_modal_replace(`./applyDone`, "신청되었습니다.");
	}else{
		if(res.error_code){
			console.log(res.error_code, res.error_detail);
			open_modal_reload(res.error_code, res.error_detail);
		}else{
			open_modal_reload();
		}
	}

}


$(document).on('keyup', '#mtHp', function(e) {
	$(this).val( validation_hypen(validation_number($(this).val())) );
});
$(document).on('blur', '#mtHp', function(e) {
	$(this).val( validation_hypen(validation_number($(this).val())) );
});



function awaitMultipart(sendUrl, formData, progress){
	
	token = $("meta[name='_csrf']").attr("content");
	header = $("meta[name='_csrf_header']").attr("content");
	parameter = $("meta[name='_csrf_parameter']").attr("content");
	
	formData.append(parameter, token);	

    return new Promise((resolve, reject) => { // 1.
        $.ajax({
            url: sendUrl,
            type: "POST",
            enctype: 'multipart/form-data',
            data: formData,
            processData: false,
            contentType: false,
            cache: false,
            success: (res) => {
                resolve(res);  // 2.
            },
            error: (e) => {
                reject(e);  // 3.
            },
			beforeSend: function(xhr) {
				xhr.setRequestHeader(parameter, token);
				if(progress)show_indicator();
			},
			complete: function () {
				if(progress)hide_indicator();
			},
        });
    });
}


</script>


<%@ include file="inc/modal.jsp"%>
<%@ include file="inc/tail.jsp"%>