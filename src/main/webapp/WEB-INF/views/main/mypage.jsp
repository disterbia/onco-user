<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <c:set var="chk_menu" value="5" />
            <c:set var="chk_sub_menu" value="1" />
            <c:set var="get_txt" value="?search_filter=${param.search_filter}&search_value=${param.search_value}&pg=" />
            <%@ include file="inc/config.jsp" %>
                <%@ include file="inc/head.jsp" %>
                    <style>
                        body {
                            background-color: #fff;
                        }

                        .sub_pg {
                            padding-top: 0;
                        }
                    </style>
                    <div class="sub_pg">
                        <div class="container">
                            <div class="breadcrumbs">
                                <ul class="d-flex pt_40">
                                    <li class="mr_14"><a href="/main/index" class="fs_14 fw_400 text-light2"><img
                                                src="${CDN_HTTP}/images/ico_bread_home.svg" alt="홈" class="mr-2"> 홈</a>
                                    </li>
                                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                                    <li class="mr_14"><a href="javascript:avoid(0)"
                                            class="fs_14 fw_400 text-light2 cursor_text">마이페이지</a></li>
                                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                                    <li class="mr_14"><a href="/main/gangnamSpace" class="fs_14 fw_400 text-light2">내 정보
                                            확인</a></li>
                                </ul>
                            </div>

                            <p class="tit_sub mt_50">마이페이지</p>
                            <div class="d-flex my_top_wrap">
                                <!--사이즈바-->
                                <div class="side_bar">
                                    <div class="mypage_top mt_25">
                                        <p class="tit_h3 line_h1_4">반갑습니다.<br />
                                            <span>${member.mtName}</span> 님
                                        </p>
                                    </div>
                                    <div class="border mypage_ul">
                                        <a href="/main/mypage" class="border-bottom on mypage_ul_left line_h1_3">
                                            내 정보 확인
                                        </a>
                                        <a href="/main/applyList" class="line_h1_3">
                                            서비스 신청 조회
                                        </a>
                                    </div>
                                </div>
                                <!-- 내 정보 확인 -->
                                <div class="w-100 mt_40">
                                    <div class="my_form_wrap pl_50">
                                        <div class="d-flex align-items-end justify-content-between form_tit_wrap pb-3">
                                            <p class="tit_sub">내 정보 확인</p>
                                        </div>
                                        <form action="">
                                            <div class="border-border border-top mt-3 pt_40">
                                                <!-- 기본 정보 -->
                                                <div class="border_2 rounded-xl py_60 px_60">
                                                    <p class="tit_h3 pb_40">기본 정보</p>
                                                    <div class="form-row mt-3">
                                                        <div class="ip_wr ip_valid col-md-6  mb_30">
                                                            <div class="ip_tit">
                                                                <p class="fs_16 fw_500">아이디</p>
                                                            </div>
                                                            <input type="text" class="form-control" id="mtId" disabled
                                                                placeholder="아이디" value="${member.mtId}">
                                                        </div>
                                                        <div class="ip_wr col-md-6 mb_30">
                                                            <div class="ip_tit">
                                                                <p class="fs_16 fw_500">이름</p>
                                                            </div>
                                                            <input type="text" class="form-control" id="mtName" disabled
                                                                placeholder="이름" value="${member.mtName}">
                                                        </div>
                                                    </div>
                                                    <div class="form-row mt-3">
                                                        <div class="ip_wr ip_valid col-md-6 mb_30">
                                                            <div class="ip_tit">
                                                                <p class="fs_16 fw_500">비밀번호 변경</p>
                                                            </div>
                                                            <div class="pass_wrap">
                                                                <input type="password" class="form-control"
                                                                    placeholder="문자/숫자/특수문자 포함 8~20자리" id="mtPwd">
                                                                <span onclick="toggleVisibility('mtPwd', 'icon1')">
                                                                    <i id="icon1" class="xi-eye"></i>
                                                                </span>
                                                            </div>
                                                            <div class="form-text ip_valid" style="display: none;"
                                                                id="mtPwdValid">
                                                                <i class="ri-checkbox-circle-line"></i>
                                                                인증되었습니다.
                                                            </div>
                                                            <div class="form-text ip_invalid" style="display: none;"
                                                                id="mtPwdError">
                                                                <i class="ri-error-warning-line"></i>
                                                                <span id="errorMsg">비밀번호가 일치하지 않습니다.</span>
                                                            </div>
                                                        </div>
                                                        <div class="ip_wr ip_invalid col-md-6 mb_30">
                                                            <div class="ip_tit">
                                                                <p class="fs_16 fw_500">비밀번호 확인</p>
                                                            </div>
                                                            <div class="pass_wrap">
                                                                <input type="password" class="form-control"
                                                                    placeholder="문자/숫자/특수문자 포함 8~20자리" id="mtPwd2">
                                                                <span onclick="toggleVisibility('mtPwd2', 'icon2')">
                                                                    <i id="icon2" class="xi-eye"></i>
                                                                </span>
                                                            </div>
                                                            <div class="form-text ip_invalid" style="display: none;"
                                                                id="mtPwd2Error">
                                                                <i class="ri-error-warning-line"></i>
                                                                비밀번호가 일치하지 않습니다.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-row mt-3 mb_30">
                                                        <div class="ip_wr ip_valid col-md-6">
                                                            <div class="ip_tit">
                                                                <p class="fs_16 fw_500">휴대폰 번호</p>
                                                            </div>
                                                            <div class="d-flex align-items-center">
                                                                <div class="ph_wrap">
                                                                    <input type="text" class="form-control" readonly
                                                                        id="mtHp" maxlength="13"
                                                                        onclick="openMyChild();" value="${member.mtHp}">
                                                                </div>
                                                                <button id="requestButton" type="button"
                                                                    class="btn btn-outline-primary btn-sm ml-3"
                                                                    onclick="openMyChild();">본인인증</button>
                                                            </div>
                                                            <!-- <div id="mtHpError" class="form-text ip_invalid"
                                                                style="display: none;">
                                                                <i class="ri-error-warning-line"></i>
                                                                회원 휴대폰 번호 12자리 모두 입력해주세요.
                                                            </div>
                                                            <div id="mtHpError2" class="form-text ip_invalid"
                                                                style="display: none;">
                                                                <i class="ri-error-warning-line"></i>
                                                                이미 사용중인 휴대폰번호 입니다.
                                                            </div>
                                                            <div class="d-flex align-items-center">
                                                                <div class="ph_wrap">
                                                                    <input type="text" class="form-control"
                                                                        placeholder="인증번호" id="verify">
                                                                    <span id="timer">03:00</span>
                                                                </div>
                                                                <button id="verifyButton" type="button"
                                                                    class="btn btn-outline-primary disabled btn-sm ml-3"
                                                                    onclick="checkVerification()">인증확인</button>
                                                            </div>
                                                            <div id="validMessage" class="form-text ip_valid"
                                                                style="display: none;"><i
                                                                    class="ri-checkbox-circle-line"></i>
                                                                인증되었습니다.</div>
                                                            <div id="invalidMessage" class="form-text ip_invalid"
                                                                style="display: none;"><i
                                                                    class="ri-error-warning-line"></i> 인증번호를
                                                                잘못 입력하셨습니다. 다시 입력해 주세요.</div>
                                                            <div id="expiredMessage" class="form-text ip_invalid"
                                                                style="display: none;"><i
                                                                    class="ri-error-warning-line"></i> 인증번호가
                                                                만료되었습니다. 재전송하여 다시 인증해 주세요.</div> -->
                                                        </div>
                                                    </div>
                                                    <div class="form-row mt-3 mb_30">
                                                        <div class="ip_wr ip_valid col-md-6">
                                                            <div class="ip_tit">
                                                                <p class="fs_16 fw_500">성별</p>
                                                            </div>
                                                            <div class="checks_wr mt-3">
                                                                <div class="checks">
                                                                    <label>
                                                                        <input type="radio" name="rd1" <c:if
                                                                            test="${member.mtGender==1}"> checked</c:if>
                                                                        disabled >
                                                                        <span class="ic_box"><i
                                                                                class="ri-check-line"></i></span>
                                                                        <div class="chk_p">
                                                                            <p>남성</p>
                                                                        </div>
                                                                    </label>
                                                                </div>
                                                                <div class="checks">
                                                                    <label>
                                                                        <input type="radio" name="rd1" disabled <c:if
                                                                            test="${member.mtGender==2}"> checked</c:if>
                                                                        >
                                                                        <span class="ic_box"><i
                                                                                class="ri-check-line"></i></span>
                                                                        <div class="chk_p">
                                                                            <p>여성</p>
                                                                        </div>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-row mt-3 mb_30">
                                                        <div class="ip_wr ip_valid col-md-6">
                                                            <div class="ip_tit">
                                                                <hp class="fs_16 fw_500">생년월일</hp>
                                                            </div>
                                                            <input type="date" class="form-control position-relative"
                                                                id="mtBirth" readonly
                                                                value="<c:if test='${member.mtBirth != null}'><fmt:formatDate value='${member.mtBirth}' pattern='yyyy-MM-dd'/></c:if>">
                                                            <div class="form-text ip_invalid" id="invalidBirth"
                                                                style="display: none;">
                                                                <i class="ri-error-warning-line"></i>생년월일을 입력해주세요.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-row mt-3 mb_30">
                                                        <div class="ip_wr col-md-12">
                                                            <div class="ip_tit">
                                                                <p class="fs_16 fw_500">이메일</p>
                                                            </div>
                                                        </div>
                                                        <div class="row w-100 mail_form">
                                                            <div
                                                                class="d-flex align-items-center mail_wrap col-md-8 col-12">
                                                                <c:set var="emailParts"
                                                                    value="${fn:split(member.mtEmail, '@')}" />
                                                                <input type="text" class="form-control"
                                                                    value="${emailParts[0]}" id="mtEmail">
                                                                <p class="px-3 mt-3">@</p>
                                                                <input type="text" class="form-control"
                                                                    value="${emailParts[1]}" id="mtEmail2">
                                                            </div>
                                                            <select class="form-control custom-select col-md-4 col-12"
                                                                id="emailSelect">
                                                                <option selected>선택하기</option>
                                                                <option value="1">naver.com</option>
                                                                <option value="2">gmail.com</option>
                                                                <option value="3">daum.net</option>
                                                                <option value="4">nate.com</option>
                                                                <option value="5">hanmail.net</option>
                                                                <option value="6">hotmail.net</option>
                                                            </select>
                                                        </div>
                                                        <!-- <div class="form-text ip_invalid" id="invalidEmail" style="display: none;">
                                        <i class="ri-error-warning-line"></i>회원 이메일을 입력해주세요.
                                    </div>
                                    <div class="form-text ip_invalid" id="invalidEmail2" style="display: none;">
                                        <i class="ri-error-warning-line"></i>이미 사용중인 이메일 입니다.
                                    </div> -->
                                                    </div>
                                                    <div class="form-row mt-3">
                                                        <div class="ip_wr  col-md-6">
                                                            <div class="ip_tit">
                                                                <p class="fs_16 fw_500">주소(선택)</p>
                                                            </div>
                                                            <div class="d-flex">
                                                                <input type="text" class="form-control" id="mtAddr"
                                                                    disabled readonly placeholder="주소검색"
                                                                    value="${member.mtAddr}">
                                                                <button type="button"
                                                                    class="btn btn-outline-primary btn-sm ml-3"
                                                                    onclick="sample6_execDaumPostcode();">주소검색</button>
                                                            </div>
                                                        </div>
                                                        <div class="ip_wr  col-md-12">
                                                            <div class="d-flex">
                                                                <input type="text" class="form-control"
                                                                    placeholder="상세주소입력" value="${member.mtAddrDetail}"
                                                                    id="mtAddrDetail">
                                                            </div>
                                                        </div>
                                                        <div class="form-text ip_invalid" id="invalidAddr"
                                                            style="display: none;">
                                                            <i class="ri-error-warning-line"></i>주소를 입력해주세요.
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- 건강 정보 -->
                                                <div class="border_2 rounded-xl py_60 px_60 mt_50 health_info">
                                                    <p class="tit_h3 mb_30">건강 정보</p>
                                                    <div class="form-row mt-3 ">
                                                        <div class="ip_wr col-md-6 mb_30">
                                                            <div class="ip_tit">
                                                                <p class="fs_16 fw_500">진단여부</p>
                                                            </div>
                                                            <select class="form-control custom-select" id="mtDiagnosis">
                                                                <option value="0">진단여부 선택</option>
                                                                <option value="1" <c:choose>
                                                                    <c:when test="${member.mtDiagnosis == 1}">selected
                                                                    </c:when>
                                                                    <c:otherwise></c:otherwise>
                                                                    </c:choose>>확진판정
                                                                </option>
                                                                <option value="2" <c:choose>
                                                                    <c:when test="${member.mtDiagnosis == 2}">selected
                                                                    </c:when>
                                                                    <c:otherwise></c:otherwise>
                                                                    </c:choose>>미확진
                                                                </option>
                                                            </select>
                                                            <div class="form-text ip_invalid" id="invalidDiagnosis"
                                                                style="display: none;">
                                                                <i class="ri-error-warning-line"></i>진단여부를 선택해주세요.
                                                            </div>
                                                        </div>
                                                        <div class="ip_wr col-md-6 mb_30" id="hospital-section">
                                                            <div class="ip_tit">
                                                                <p class="fs_16 fw_500">병원명</p>
                                                            </div>
                                                            <input type="text" class="form-control" id="mtHospital"
                                                                placeholder="병원명" value="${member.mtHospital}">
                                                        </div>
                                                    </div>
                                                    <div class="form-row mt-3 mb_30" id="diagnosis-date-section">
                                                        <div class="ip_wr col-md-6">
                                                            <div class="ip_tit">
                                                                <p class="fs_16 fw_500">진단일</p>
                                                            </div>
                                                            <input type="date" class="form-control position-relative"
                                                                id="mtDiagnosisDate"
                                                                value="<c:if test='${member.mtDiagnosisDate != null}'><fmt:formatDate value='${member.mtDiagnosisDate}' pattern='yyyy-MM-dd'/></c:if>">

                                                        </div>
                                                    </div>
                                                    <div class="form-row mt-3" id="cancer-section">
                                                        <div class="ip_wr col-md-12">
                                                            <div class="ip_tit">
                                                                <p class="fs_16 fw_500">암종</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <select class="form-control custom-select"
                                                                id="mtDiagnosisCode">
                                                                <option selected value="0">암종 선택</option>
                                                                <c:forEach var="diagnosis" items="${diagnoisList}">
                                                                    <option value="${diagnosis.idx}" <c:choose>
                                                                        <c:when
                                                                            test="${member.mtDiagnosisCode == diagnosis.idx}">
                                                                            selected</c:when>
                                                                        <c:otherwise></c:otherwise>
                                                                        </c:choose>>${diagnosis.dtName}
                                                                    </option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <input type="text" class="form-control" id="mtDiagnosisName"
                                                                placeholder="직접입력" value="${member.mtDiagnosisName}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="d-flex mt_50 justify-content-center">
                                                    <!-- button -->
                                                    <button type="button" class="btn btn-outline-secondary btn-xm mr-3"
                                                        data-toggle="modal" data-target="#dropout_modal">탈퇴하기</button>
                                                    <button type="button"
                                                        class="btn btn-primary btn-md d-flex justify-content-between align-items-center"
                                                        onclick="update_member();">수정완료 <img
                                                            src="${CDN_HTTP}/images/ico_btn_arrow.png"
                                                            alt="바로가기" /></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%@ include file="inc/tail.jsp" %>
                        <!-- 탈퇴 -->
                        <div class="modal fade" id="dropout_modal" tabindex="-1" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-md">
                                <div class="modal-content ">
                                    <div class="modal-header pb-0 " style="display:block">
                                    </div>
                                    <div class="modal-body px-5">
                                        <div class="text-center pt-5">
                                            <p class="fs_24 fw_700 mt-3 line_h1_4 text-center">온코마스터를 탈퇴하시나요?</p>
                                            <p class="text-light fs_18 fw_500 mt-3 ">탈퇴하시는 이유를 알려주세요.</p>
                                        </div>
                                        <select class="form-control custom-select mt-5 " id="mtReason">
                                            <option selected value="0">선택하기</option>
                                            <option value="자주 사용하지 않아요.">자주 사용하지 않아요.</option>
                                            <option value="개인정보가 걱정돼요.">개인정보가 걱정돼요.</option>
                                            <option value="서비스가 불만족스러워요.">서비스가 불만족스러워요.</option>
                                            <option value="고객응대가 불만이에요.">고객응대가 불만이에요.</option>
                                            <option value="other">기타(직접입력)</option>
                                        </select>
                                        <textarea class="form-control" placeholder="입력해주세요" rows="4" style="border-radius: 2rem; display: none;" id="customReason"></textarea>
                                        <p class="text-danger fs_14 fw_500 mt-5 text-center line_h1_4">* 서비스 신청 대기중에는 탈퇴하실 수 없습니다.</p>
                                    </div>
                                    <div class="modal-footer mt-5 d-flex justify-content-center">
                                        <div class="d-flex w-100 mx-0 mb-0">
                                            <button type="button" class="btn bg-deep-light text-light fs_18 fw_600 le"
                                                data-dismiss="modal">취소하기</button>
                                            <button type="button" class="btn bg-primary text-white fs_18 fw_600 ri" onclick="deleteMember();"
                                                data-dismiss="modal">탈퇴하기 </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        

                        <!-- 탈퇴 불가 모달 -->
                        <div class="modal fade" id="no_dropout_modal" tabindex="-1" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-md">
                                <div class="modal-content ">
                                    <div class="modal-header pb-0 " style="display:block">
                                    </div>
                                    <div class="modal-body px-5">
                                        <div class="text-center pt-5">
                                            <img src="${CDN_HTTP}/images/none_content.svg" alt="이미지" width="90px" />
                                            <p class="fs_24 fw_700 mt-1 line_h1_4 text-center">탈퇴가 불가합니다.</p>
                                            <p class="text-danger fs_14 fw_500 mt-3 ">서비스 진행중인 사용자는 탈퇴가 불가합니다.</p>
                                        </div>
                                    </div>
                                    <div class="modal-footer mt-5 d-flex justify-content-center">
                                        <div class="d-flex w-100 mx-0 mb-0">
                                            <button type="button" class="btn bg-deep-light text-light fs_18 fw_600 le"
                                                data-dismiss="modal">닫기</button>
                                            <button type="button" class="btn bg-primary text-white fs_18 fw_600 ri"
                                                data-dismiss="modal" onclick="location.href='/main/inquery'">1:1문의하기
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <script>
                            //탈퇴하기
                            async function deleteMember() {
                                if ($('#mtReason').val() == "0") {
                                    return open_modal_alert("탈퇴사유를 선택해주세요.");
                                }
                                try {
                                    let res = await awaitPost("/main/deleteMember",
                                        {
                                            reason: $('#mtReason').val(),
                                        }, true);

                                    if (res.result == 'success') {
                                        return open_modal_replace("/main/logout","탈퇴신청이 완료되었습니다.");
                                        
                                    } else if (res.result == 'error2') {
                                        return $('#no_dropout_modal').modal('show');
                                    }
                                } catch (e) {
                                    console.log(e);
                                    return open_modal_alert("탈퇴신청에 실패했습니다.");
                                }
                            }

                            $(document).ready(function () {
                                $("#mtReason").change(function () {
                                    if ($(this).val() == "other") {
                                        $("#customReason").show();
                                    } else {
                                        $("#customReason").hide();
                                    }
                                });

                                $("#customReason").on('blur', function () {
                                    $("#mtReason option[value='other']").val($(this).val());
                                });
                            });
                            function openMyChild() {
                                // window.name = "부모창 이름"; 
                                window.name = "parentForm";
                                // window.open("open할 window", "자식창 이름", "팝업창 옵션");
                                openWin = window.open("./nicePopup2", "childForm", "resizable = no, scrollbars = no");
                            }

                            async function niceapi_check2(check, mtHp) {
                                console.log(mtHp);
                                if (check == 1) {

                                    document.getElementById('requestButton').disabled = true;

                                    var mtHpElement = document.getElementById('mtHp');
                                    mtHpElement.value = mtHp;
                                    $('#mtHp').val(validation_hypen(validation_number($('#mtHp').val())));
                                    mtHpElement.disabled = true;
                                    
                                } else if (check == 0) {
                                    open_modal_alert("이미 등록 된 휴대폰 번호입니다.");
                                } else {
                                    open_modal_alert("휴대폰 인증에 실패하였습니다.");
                                }
                            }
                            // var countdown;
                            // let verificationRequested = false;

                            // async function requestVerification() {
                            //     //전화번호 입력확인
                            //     let mtHp = $("#mtHp").val();
                            //     if (!validation_text(mtHp) || mtHp.length != 13) {
                            //         document.getElementById('mtHpError2').style.display = 'none';
                            //         document.getElementById('mtHpError').style.display = 'block';
                            //         document.getElementById('mtHpError').style.color = 'red';
                            //         return;
                            //     } else {
                            //         let isValidHp = await validation_hp(mtHp);
                            //         //전화번호 중복확인
                            //         if (!isValidHp) {
                            //             document.getElementById('mtHpError').style.display = 'none';
                            //             document.getElementById('mtHpError2').style.display = 'block';
                            //             document.getElementById('mtHpError2').style.color = 'red';
                            //             return;
                            //         } else {
                            //             let result = await sendCode(mtHp);
                            //             if (result) {
                            //                 document.getElementById('mtHpError').style.display = 'none';
                            //                 document.getElementById('mtHpError2').style.display = 'none';

                            //                 document.getElementById('requestButton').textContent = '재요청';
                            //                 document.getElementById('verifyButton').classList.remove('disabled');
                            //                 clearInterval(countdown);
                            //                 startTimer();
                            //                 verificationRequested = true;
                            //             } else open_modal_alert();
                            //         }
                            //     }
                            // }

                            // async function checkVerification() {
                            //     if (!verificationRequested) {
                            //         return;
                            //     }
                            //     // 사용자가 입력한 인증번호를 가져옵니다.
                            //     const userInput = document.getElementById('verify').value;
                            //     let result = await checkCode(userInput);
                            //     if (result) {
                            //         // 인증 코드가 일치하면 인증 성공 메시지를 표시하고 필드를 비활성화 합니다.
                            //         document.getElementById('validMessage').style.display = 'block';
                            //         document.getElementById('invalidMessage').style.display = 'none';
                            //         document.getElementById('mtHp').disabled = true;
                            //         document.getElementById('verify').disabled = true;
                            //         document.getElementById('requestButton').disabled = true;
                            //         document.getElementById('verifyButton').disabled = true;
                            //         document.getElementById('timer').style.display = 'none';
                            //         document.getElementById('expiredMessage').style.display = 'none';
                            //         clearInterval(countdown);
                            //     } else {
                            //         // 인증 코드가 일치하지 않으면 오류 메시지를 표시합니다.
                            //         document.getElementById('invalidMessage').style.display = 'block';
                            //         document.getElementById('invalidMessage').style.color = 'red';
                            //         document.getElementById('expiredMessage').style.display = 'none';
                            //     }
                            // }

                            // function startTimer() {
                            //     let timer = 180; // 3분
                            //     let display = document.getElementById('timer');

                            //     // 타이머 시작
                            //     countdown = setInterval(function () {
                            //         minutes = parseInt(timer / 60, 10);
                            //         seconds = parseInt(timer % 60, 10);
                            //         display.textContent = (minutes < 10 ? "0" : "") + minutes + ":" + (seconds < 10 ? "0" : "") + seconds;

                            //         if (--timer < 0) {
                            //             // 시간이 만료되면 타이머를 멈추고 메시지를 표시합니다.
                            //             clearInterval(countdown);
                            //             document.getElementById('invalidMessage').style.display = 'none';
                            //             document.getElementById('expiredMessage').style.display = 'block';
                            //             document.getElementById('expiredMessage').style.color = 'red';
                            //         }

                            //     }, 1000);
                            // }

                            function toggleVisibility(inputId, iconId) {
                                const passwordField = document.getElementById(inputId);
                                const eyeIcon = document.getElementById(iconId);

                                // 비밀번호 필드의 타입이 'password'면 'text'로, 그렇지 않으면 'password'로 바꿈
                                passwordField.type = passwordField.type === 'password' ? 'text' : 'password';

                                // 아이콘의 클래스가 'xi-eye'면 'xi-eye-off'로, 그렇지 않으면 'xi-eye'로 바꿈
                                eyeIcon.className = eyeIcon.className === 'xi-eye' ? 'xi-eye-off' : 'xi-eye';
                            }


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
                                const emailInput = document.getElementById('mtEmail2');

                                if (emailDomains[selectedValue]) {
                                    emailInput.value = emailDomains[selectedValue];
                                } else {
                                    emailInput.value = '';
                                }
                            });

                            //진단여부에따라 필드 숨김
                            $(document).ready(function () {
                                // 처음 페이지 로딩 시, 선택된 '진단여부'에 따라 섹션들을 보이거나 숨김
                                var diagnosis = $('#mtDiagnosis').val();
                                if (diagnosis == 2) {
                                    $("#hospital-section").hide();
                                    $("#diagnosis-date-section").hide();
                                    $("#cancer-section").hide();
                                } else {
                                    $("#hospital-section").show();
                                    $("#diagnosis-date-section").show();
                                    $("#cancer-section").show();
                                }

                                // '진단여부'가 변경되었을 때, 선택된 값에 따라 섹션들을 보이거나 숨김
                                $('#mtDiagnosis').change(function () {
                                    if ($(this).val() == 2) {
                                        $("#hospital-section").hide();
                                        $("#diagnosis-date-section").hide();
                                        $("#cancer-section").hide();
                                    } else {
                                        $("#hospital-section").show();
                                        $("#diagnosis-date-section").show();
                                        $("#cancer-section").show();
                                    }
                                });
                            });

                            async function update_member() {

                                try {
                                    let mtPwd = $("#mtPwd").val();
                                    let mtPwd2 = $("#mtPwd2").val();
                                    let mtId = $("#mtId").val();
                                    let mtName = $("#mtName").val();
                                    let mtHp = $("#mtHp").val();
                                    let verify = $("#verify").val();
                                    let mtBirth = $('#mtBirth').val();
                                    let mtEmail1 = $("#mtEmail").val()
                                    let mtEmail2 = $("#mtEmail2").val()
                                    let mtEmail = $("#mtEmail").val() + '@' + $("#mtEmail2").val();
                                    let mtAddr = $("#mtAddr").val();
                                    let mtAddrDetail = $("#mtAddrDetail").val();
                                    let mtDiagnosis = $("#mtDiagnosis").val();
                                    let mtHospital = $("#mtHospital").val();
                                    let mtDiagnosisDate = $("#mtDiagnosisDate").val();
                                    let mtDiagnosisCode = $("#mtDiagnosisCode").val();
                                    let mtDiagnosisName = $("#mtDiagnosisName").val();


                                    let error_count = 0;

                                    //비밀번호
                                    let temp = false;
                                    if (mtPwd !== "") {

                                        if (!validation_joinPassword(mtPwd)) {
                                            document.getElementById('mtPwdError').style.display = 'block';

                                            document.getElementById('mtPwdError').style.color = 'red';
                                            document.getElementById('errorMsg').innerText = "문자/숫자/특수문자를 포함해서 8~20자리로 입력되어야 합니다."
                                            document.getElementById('mtPwdValid').style.display = 'none';

                                            error_count++
                                        } else {
                                            temp = true;
                                            document.getElementById('mtPwdError').style.display = 'none';
                                        }

                                        //비밀번호 다시확인
                                        if (check_two_password(mtPwd, mtPwd2) !== "") {
                                            // document.getElementById('mtPwd2Error').style.display = 'block';

                                            // document.getElementById('mtPwd2Error').style.color = 'red';
                                            document.getElementById('errorMsg').innerText = check_two_password(mtPwd, mtPwd2);
                                            document.getElementById('mtPwdValid').style.display = 'none';
                                            temp = false;

                                            error_count++
                                        } else {
                                            if (temp) {
                                                document.getElementById('mtPwdValid').style.display = 'block';
                                            }
                                            document.getElementById('mtPwd2Error').style.display = 'none';
                                        }
                                    }


                                    //생년월일 입력확인
                                    if (mtBirth.length > 0) {
                                        document.getElementById('invalidBirth').style.display = 'none';
                                    } else {
                                        document.getElementById('invalidBirth').style.display = 'block';
                                        document.getElementById('invalidBirth').style.color = 'red';
                                        error_count++
                                    }

                                    //진단여부 선택확인
                                    if (mtDiagnosis != "0") {
                                        document.getElementById('invalidDiagnosis').style.display = 'none';
                                    } else {
                                        document.getElementById('invalidDiagnosis').style.display = 'block';
                                        document.getElementById('invalidDiagnosis').style.color = 'red';
                                        error_count++
                                    }


                                    if (error_count > 0) {
                                        return open_modal_alert("필수 입력사항을 확인해주세요.");
                                    }

                                    let res = await awaitPost("/main/updateMember", {
                                        action: 'update_member',
                                        mtId: mtId,
                                        mtName: mtName,
                                        mtHp: mtHp,
                                        mtEmail: mtEmail,
                                        mtBirth: mtBirth,
                                        mtAddr: mtAddr,
                                        mtAddrDetail: mtAddrDetail,
                                        mtDiagnosis: mtDiagnosis,
                                        mtHospital: mtHospital,
                                        mtDiagnosisDate: mtDiagnosisDate,
                                        mtDiagnosisCode: mtDiagnosisCode,
                                        mtDiagnosisName: mtDiagnosisName,

                                    });

                                    console.log("res:", res);
                                    if (res.result == 'success') {
                                        open_modal_replace(`./mypage`, "수정되었습니다.");
                                    } else {
                                        if (res.error_code) {
                                            console.log(res.error_code, res.error_detail);
                                            open_modal_alert(res.error_code, res.error_detail);
                                        } else {
                                            open_modal_alert();
                                        }
                                    }

                                } catch (e) {
                                    console.log(e);
                                    open_modal_alert();
                                }

                            }


                            //전화번호 중복확인
                            async function validation_hp() {

                                try {
                                    let res = await awaitPost("/main/updateMember",
                                        {
                                            action: 'check_hp',
                                        }, true);

                                    if (res.result == 'success') {
                                        return true;
                                    } else {
                                        return false;
                                    }
                                } catch (e) {
                                    console.log(e);
                                    return false;
                                }
                            }

                            //인증번호 전송
                            async function sendCode(mtHp) {

                                try {
                                    let res = await awaitPost("/main/joinSendCode",
                                        {
                                            mtHp: mtHp
                                        }, true);

                                    if (res.result == 'success') {
                                        return true;
                                    } else {
                                        return false;
                                    }
                                } catch (e) {
                                    console.log(e);
                                    return false;
                                }
                            }

                            //인증확인
                            async function checkCode(verify) {

                                try {
                                    let res = await awaitPost("/main/joinVeriFyCode",
                                        {
                                            code: verify,
                                        }, true);

                                    if (res.result == 'success') {
                                        return true;
                                    } else {
                                        return false;
                                    }
                                } catch (e) {
                                    console.log(e);
                                    return false;
                                }
                            }


                            $(document).ready(function() {
                         $('#mtHp').val(validation_hypen(validation_number($('#mtHp').val())));
                        });



                        </script>


                        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                        <script type="text/javascript">

                            function sample6_execDaumPostcode() {
                                var width = 500; //팝업의 너비
                                var height = 600;

                                console.log(window.screen.width, window.screen.height);

                                new daum.Postcode({
                                    width: width, //생성자에 크기 값을 명시적으로 지정해야 합니다.
                                    height: height,
                                    oncomplete: function (data) {
                                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                                        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                        var addr = ''; // 주소 변수
                                        var extraAddr = ''; // 참고항목 변수

                                        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                                        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                            addr = data.roadAddress;
                                        } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                            addr = data.jibunAddress;
                                        }

                                        // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                                        if (data.userSelectedType === 'R') {
                                            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                                                extraAddr += data.bname;
                                            }
                                            // 건물명이 있고, 공동주택일 경우 추가한다.
                                            if (data.buildingName !== '' && data.apartment === 'Y') {
                                                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                            }
                                            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                            if (extraAddr !== '') {
                                                extraAddr = ' (' + extraAddr + ')';
                                            }

                                        }




                                        // 우편번호와 주소 정보를 해당 필드에 넣는다.

                                        document.getElementById("mtAddr").value = addr + extraAddr;


                                        // 커서를 상세주소 필드로 이동한다.
                                        document.getElementById("mtAddrDetail").focus();
                                    }
                                }).open({
                                    left: (window.screen.width / 2) - (width / 2),
                                    top: (window.screen.height / 2) - (height / 2)
                                });
                            }

                        </script>