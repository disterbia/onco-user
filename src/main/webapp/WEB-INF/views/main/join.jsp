<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <%@ include file="inc/config.jsp" %>
                <%@ include file="inc/head.jsp" %>
                    <style>
    body{
        background-color: #fff;
    }
    @media (max-width: 991.98px){
        .sub_pg {
            margin-top: 0;
            padding-bottom: 5rem;
        }
    }
                    </style>
                    <div class="sub_pg">
                        <div class="container">
                            <div class="form_wrap">
                                <div class="d-flex align-items-end justify-content-between form_tit_wrap">
                                    <div class="d-flex align-items-end">
                                        <h1>회원가입을 위해</br>
                                            아래내용을 작성해주세요.</h1>
                                        <p class="slash2 position-relative pl-3 mb-2 ml-3 fs_16 fw_300 fc_7584"> 필수 입력
                                            사항입니다.</p>
                                    </div>
                                    <img src="${CDN_HTTP}/images/ico_join.svg" alt="회원가입">
                                </div>
                                <form action="">
                                    <div class="border-border border-top mt-3 pt_40">
                                        <p class="tit_h3 pb_40 "><i class="xi-check-circle-o text-primary"></i> 휴대폰 번호인증을 먼저 진행해주세요!</p>
                                        <div class="form-row mt-3 mb_30 border-bottom pb_40">
                                            <div class="ip_wr ip_valid col-md-6">
                                                <div class="ip_tit">
                                                    <h5>휴대폰 번호</h5>
                                                </div>
                                                <div class="d-flex align-items-center">
                                                    <div class="ph_wrap">
                                                        <input type="text" class="form-control" readonly id="mtHp"
                                                            maxlength="13" onclick="openChild();">
                                                    </div>
                                                    <button id="requestButton" type="button"
                                                        class="btn btn-outline-primary btn-sm ml-3"
                                                        onclick="openChild();">본인인증</button>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="tit_h3 pb_40">기본 정보</p>
                                        <div class="form-row mt-3 mb_30">
                                            <div class="ip_wr ip_valid col-md-6">
                                                <div class="ip_tit">
                                                    <h5>아이디</h5>
                                                </div>
                                                <div class="d-flex">
                                                    <input type="text" class="form-control" placeholder="6~12자 이내 영문,숫자" id="mtId" pattern="^[a-zA-Z0-9]{6,12}$">
                                                    <button type="button" class="btn btn-outline-primary btn-sm ml-3"
                                                        onclick="checkId()">중복확인</button>
                                                </div>
                                                <div class="form-text ip_valid" id="validMsg" style="display: none;"><i
                                                        class="ri-checkbox-circle-line"></i> 확인되었습니다.</div>
                                                <div class="form-text ip_invalid" id="invalidMsg1"
                                                    style="display: none;"><i class="ri-error-warning-line"></i> 이미 사용중인
                                                    아이디입니다.</div>
                                                <div class="form-text ip_invalid" id="invalidMsg2"
                                                    style="display: none;"><i class="ri-error-warning-line"></i> 6~12 자리 이내 영문,숫자여야 합니다.</div>
                                            </div>
                                        </div>
                                        <div class="form-row mt-3 mb_30">
                                            <div class="ip_wr col-md-6">
                                                <div class="ip_tit">
                                                    <h5>이름</h5>
                                                </div>
                                                <input type="text" class="form-control" placeholder="이름" id="mtName" readonly>
                                                <div class="form-text ip_invalid" id="mtNameError"><i
                                                        class="ri-error-warning-line"></i>
                                                    이름을 입력하세요. </div>
                                            </div>

                                        </div>
                                        <div class="form-row mt-3">
                                            <div class="ip_wr ip_valid col-md-6 mb_30">
                                                <div class="ip_tit">
                                                    <h5>비밀번호</h5>
                                                </div>
                                                <div class="pass_wrap">
                                                    <input type="password" class="form-control" placeholder="문자/숫자/특수문자 포함 8~20자리"
                                                        id="mtPwd">
                                                    <span onclick="toggleVisibility('mtPwd', 'icon1')">
                                                        <i id="icon1" class="xi-eye"></i>
                                                    </span>
                                                </div>
                                                <div class="form-text ip_valid" style="display: none;" id="mtPwdValid">
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
                                                    <h5>비밀번호 확인</h5>
                                                </div>
                                                <div class="pass_wrap">
                                                    <input type="password" class="form-control" placeholder="문자/숫자/특수문자 포함 8~20자리"
                                                        id="mtPwd2">
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
                                                    <h5>성별</h5>
                                                </div>
                                                <div class="checks_wr mt-3">
                                                    <div class="checks">
                                                        <label>
                                                            <input type="radio" name="rd1" disabled id="mtGender1">
                                                            <span class="ic_box"><i class="ri-check-line"></i></span>
                                                            <div class="chk_p">
                                                                <p>남성</p>
                                                            </div>
                                                        </label>
                                                    </div>
                                                    <div class="checks">
                                                        <label>
                                                            <input type="radio" name="rd1"  disabled id="mtGender2">
                                                            <span class="ic_box"><i class="ri-check-line"></i></span>
                                                            <div class="chk_p">
                                                                <p>여성</p>
                                                            </div>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <input id="mtGender" hidden>
                                        <!-- <div class="form-row mt-3 mb_30">
                                            <div class="ip_wr ip_valid col-md-6">
                                                <div class="ip_tit">
                                                    <h5>휴대폰 번호</h5>
                                                </div>
                                                <div class="d-flex align-items-center">
                                                    <div class="ph_wrap">
                                                        <input type="text" class="form-control" readonly id="mtHp"
                                                            maxlength="13" onclick="openChild();">
                                                    </div>
                                                    <button id="requestButton" type="button"
                                                        class="btn btn-outline-primary btn-sm ml-3"
                                                        onclick="openChild();">본인인증</button>
                                                </div> -->
                                                <!-- <div id="mtHpError" class="form-text ip_invalid" style="display: none;">
                                                    <i class="ri-error-warning-line"></i>
                                                    회원 휴대폰 번호 12자리 모두 입력해주세요.
                                                </div>
                                                <div id="mtHpError2" class="form-text ip_invalid"
                                                    style="display: none;">
                                                    <i class="ri-error-warning-line"></i>
                                                    이미 사용중인 휴대폰번호 입니다.
                                                </div> -->
                                                <!-- <div class="d-flex align-items-center">
                                                    <div class="ph_wrap">
                                                        <input type="text" class="form-control" placeholder="인증번호"
                                                            id="verify">
                                                        <span id="timer">03:00</span>
                                                    </div>
                                                    <button id="verifyButton" type="button"
                                                        class="btn btn-outline-primary disabled btn-sm ml-3"
                                                        onclick="checkVerification()">인증확인</button>
                                                </div>
                                                <div id="validMessage" class="form-text ip_valid"
                                                    style="display: none;"><i class="ri-checkbox-circle-line"></i>
                                                    인증되었습니다.</div>
                                                <div id="invalidMessage" class="form-text ip_invalid"
                                                    style="display: none;"><i class="ri-error-warning-line"></i> 인증번호를
                                                    잘못 입력하셨습니다. 다시 입력해 주세요.</div>
                                                <div id="expiredMessage" class="form-text ip_invalid"
                                                    style="display: none;"><i class="ri-error-warning-line"></i> 인증번호가
                                                    만료되었습니다. 재전송하여 다시 인증해 주세요.</div> -->
                                            <!-- </div>
                                        </div> -->
                                        <div class="form-row mt-3 mb_30">
                                            <div class="ip_wr ip_valid col-md-6">
                                                <div class="ip_tit">
                                                    <h5>생년월일</h5>
                                                </div>
                                                <input type="date" class="form-control position-relative" id="mtBirth" readonly>
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
                                                <div class="d-flex align-items-center mail_wrap col-md-8 col-12">
                                                    <input type="text" class="form-control" id="mtEmail">
                                                    <p class="px-3 mt-3">@</p>
                                                    <input type="text" class="form-control" placeholder="직접입력"
                                                        id="mtEmail2">
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
                                    </div>
                                    <div class="form-row mt-3 mb_30 pb_40 border-bottom">
                                        <div class="ip_wr  col-md-6">
                                            <div class="ip_tit">
                                                <p class="fs_16 fw_500">주소(선택)</p>
                                            </div>
                                            <div class="d-flex">
                                                <input type="text" class="form-control" id="mtAddr" disabled readonly
                                                    placeholder="주소검색">
                                                <button type="button" class="btn btn-outline-primary btn-sm ml-3"
                                                    onclick="sample6_execDaumPostcode();">주소검색</button>
                                            </div>
                                        </div>
                                        <div class="ip_wr  col-md-12">
                                            <div class="d-flex">
                                                <input type="text" class="form-control" placeholder="상세주소입력"
                                                    id="mtAddrDetail">
                                            </div>
                                        </div>
                                        <div class="form-text ip_invalid" id="invalidAddr" style="display: none;">
                                            <i class="ri-error-warning-line"></i>주소를 입력해주세요.
                                        </div>
                                    </div>
                                    <p class="tit_h3 pt_50 mb_30">건강 정보</p>
                                    <div class="form-row mt-3 ">
                                        <div class="ip_wr col-md-6 mb_30">
                                            <div class="ip_tit">
                                                <h5>진단여부</h5>
                                            </div>
                                            <select class="form-control custom-select" id="mtDiagnosis">
                                                <option selected value="0">진단여부 선택</option>
                                                <option value="1">확진판정</option>
                                                <option value="2">미확진</option>
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
                                            <input type="text" class="form-control" placeholder="병원명" id="mtHospital">
                                        </div>

                                    </div>

                                    <div class="form-row mt-3 mb_30" id="diagnosis-date-section">
                                        <div class="ip_wr col-md-6">
                                            <div class="ip_tit">
                                                <p class="fs_16 fw_500">진단일</p>
                                            </div>
                                            <input type="date" class="form-control position-relative"
                                                id="mtDiagnosisDate">
                                        </div>
                                    </div>
                                    <div class="form-row mt-3 mb_30 border-bottom pb_40" id="cancer-section">
                                        <div class="ip_wr col-md-12">
                                            <div class="ip_tit">
                                                <p class="fs_16 fw_500">암종</p>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <select class="form-control custom-select" id="mtDiagnosisCode">
                                                <option selected value="0">암종 선택</option>
                                                <c:forEach var="diagnosis" items="${diagnoisList}">
                                                    <option value="${diagnosis.idx}">${diagnosis.dtName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" placeholder="직접입력"
                                                id="mtDiagnosisName">
                                        </div>
                                    </div>

                                    <button type="button"
                                        class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto mt_40"
                                        onclick="insert_member();">가입완료
                                        <img src="${CDN_HTTP}/images/ico_btn_arrow.png"></button>
                            </div>
                            </form>
                        </div>
                    </div>
                    </div>
                    <%@ include file="inc/tail.jsp" %>
                        <script>

                            function openChild() {
                                // window.name = "부모창 이름"; 
                                window.name = "parentForm";
                                // window.open("open할 window", "자식창 이름", "팝업창 옵션");
                                openWin = window.open("./nicePopup", "childForm", "resizable = no, scrollbars = no");
                            }

                            async function niceapi_check(check, mtHp,mtName,mtGender,mtBirth) {
                                console.log(mtHp);
                                if (check == 1) {

                                    document.getElementById('requestButton').disabled = true;
                                    var mtHpElement = document.getElementById('mtHp');
                                    var mtNameElement = document.getElementById('mtName');
                                    var mtGenderElement = document.getElementById('mtGender');
                                    var mtGenderElement1 = document.getElementById('mtGender1');
                                    var mtGenderElement2 = document.getElementById('mtGender2');
                                    var mtBirthElement = document.getElementById('mtBirth');
                                    mtHpElement.value = mtHp;
                                    $('#mtHp').val(validation_hypen(validation_number($('#mtHp').val())));
                                    mtHpElement.disabled = true;
                                    mtNameElement.value = mtName;
                                    mtNameElement.disabled = true;
                                    if(mtGender==1){ //남자
                                        mtGenderElement1.checked = true;
                                        mtGenderElement1.disabled = true;
                                        mtGenderElement.value="1"
                                    }else if(mtGender==0){ //여자
                                        mtGenderElement2.checked = true;
                                        mtGenderElement2.disabled = true;
                                        mtGenderElement.value="2"
                                    } 
                                      
                                    mtBirthElement.value = mtBirth;
                                    mtBirthElement.disabled = true;
                               
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
                            //             document.getElementById('mtHpError').style.display = 'none';
                            //             document.getElementById('mtHpError2').style.display = 'none';
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

                            async function checkId() {
                                let mtId = $("#mtId").val();
                                //아이디 입력확인
                                if (!validation_joinId(mtId)) {
                                    document.getElementById('validMsg').style.display = 'none';
                                    document.getElementById('invalidMsg1').style.display = 'none';
                                    document.getElementById('invalidMsg2').style.display = 'block';
                                    document.getElementById('invalidMsg2').style.color = 'red';
                                } else {
                                    let isValidId = await validation_id(mtId);
                                    //아이디 중복확인
                                    if (!isValidId) {
                                        document.getElementById('validMsg').style.display = 'none';
                                        document.getElementById('invalidMsg1').style.display = 'block';
                                        document.getElementById('invalidMsg2').style.display = 'none';
                                        document.getElementById('invalidMsg1').style.color = 'red';

                                    } else {
                                        document.getElementById('validMsg').style.display = 'block';
                                        document.getElementById('invalidMsg1').style.display = 'none';
                                        document.getElementById('invalidMsg2').style.display = 'none';
                                    }
                                }
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

                            async function insert_member() {
                                console.log("insert_member");
                                console.log($("#mtGender").val());
                                try {
                                    let mtId = $("#mtId").val();
                                    let mtName = $("#mtName").val();
                                    let mtPwd = $("#mtPwd").val();
                                    let mtPwd2 = $("#mtPwd2").val();
                                    let mtHp = $("#mtHp").val();
                                    let verify = $("#verify").val();
                                    let mtBirth = $('#mtBirth').val();
                                    let mtEmail1 = $("#mtEmail").val();
                                    let mtEmail2 = $("#mtEmail2").val();
                                    let mtEmail = "";
                                    let mtAddr = $("#mtAddr").val();
                                    let mtAddrDetail = $("#mtAddrDetail").val();
                                    let mtDiagnosis = $("#mtDiagnosis").val();
                                    let mtHospital = $("#mtHospital").val();
                                    let mtDiagnosisDate = $("#mtDiagnosisDate").val();
                                    let mtDiagnosisCode = $("#mtDiagnosisCode").val();
                                    let mtDiagnosisName = $("#mtDiagnosisName").val();
                                    let mtGender= $("#mtGender").val();

                                    // console.log("mtId: " + mtId);
                                    // console.log("mtName: " + mtName);
                                    // console.log("mtId: " + mtId);
                                    // console.log("mtPwd2: " + mtPwd2);
                                    // console.log("mtHp: " + mtHp);
                                    // console.log("verify: " + verify);
                                    // console.log("mtBirth: " + mtBirth);
                                    // console.log("mtEmail: " + mtEmail);
                                    // console.log("mtAddr: " + mtAddr);
                                    // console.log("mtAddrDetail: " + mtAddrDetail);
                                    // console.log("mtmtDiagnosisId: " + mtDiagnosis);
                                    // console.log("mtHospital: " + mtHospital);
                                    // console.log("mtDiagnosisDate: " + mtDiagnosisDate);
                                    // console.log("mtDiagnosisCode: " + mtDiagnosisCode);
                                    // console.log("mtBimtDiagnosisNamerth: " + mtDiagnosisName);

                                    let error_count = 0;

                                    //인증여부 확인
                                    let result = await validation_di();
                                    if (!result) {
                                        return open_modal_alert("본인인증을 완료해주세요.");
                                    }
                                    //아이디 입력확인
                                    if (!validation_joinId(mtId)) {
                                        document.getElementById('validMsg').style.display = 'none';
                                        document.getElementById('invalidMsg1').style.display = 'none';
                                        document.getElementById('invalidMsg2').style.display = 'block';
                                        document.getElementById('invalidMsg2').style.color = 'red';
                                        error_count++
                                    } else{
                                        let isValidId = await validation_id(mtId);
                                        //아이디 중복확인
                                        if (!isValidId) {
                                            document.getElementById('validMsg').style.display = 'none';
                                            document.getElementById('invalidMsg1').style.display = 'block';
                                            document.getElementById('invalidMsg2').style.display = 'none';
                                            document.getElementById('invalidMsg1').style.color = 'red';
                                            error_count++
                                        } else {
                                            document.getElementById('validMsg').style.display = 'block';
                                            document.getElementById('invalidMsg1').style.display = 'none';
                                            document.getElementById('invalidMsg2').style.display = 'none';
                                        }
                                    }

                                    //비밀번호
                                    let temp = false;
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
                                        document.getElementById('mtPwdError').style.display = 'block';
                                        document.getElementById('mtPwdError').style.color = 'red';                                
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
                                    // //성명 확인
                                    // if (!validation_text(mtName)) {
                                    //     document.getElementById('mtNameError').style.display = 'block';
                                    //     document.getElementById('mtNameError').style.color = 'red';
                                    //     error_count++
                                    // } else {
                                    //     document.getElementById('mtNameError').style.display = 'none';
                                    // }

                                    // //생년월일 입력확인
                                    // if (mtBirth.length > 0) {
                                    //     document.getElementById('invalidBirth').style.display = 'none';
                                    // } else {
                                    //     document.getElementById('invalidBirth').style.display = 'block';
                                    //     document.getElementById('invalidBirth').style.color = 'red';
                                    //     error_count++
                                    // }

                                    //진단여부 선택확인
                                    if (mtDiagnosis != "0") {
                                        document.getElementById('invalidDiagnosis').style.display = 'none';
                                    } else {
                                        document.getElementById('invalidDiagnosis').style.display = 'block';
                                        document.getElementById('invalidDiagnosis').style.color = 'red';
                                        error_count++
                                    }

                                    // //이메일 입력확인
                                    // if (!validation_text(mtEmail1) || !validation_text(mtEmail2)) {
                                    //     document.getElementById('invalidEmail').style.display = 'block';
                                    //     document.getElementById('invalidEmail').style.color = 'red';
                                    //     document.getElementById('invalidEmail2').style.color = 'none';
                                    //     error_count++
                                    // } else {
                                    //     let isValidEmail = await validation_email(mtEmail);
                                    //     //이메일 중복확인
                                    //     if (!isValidEmail) {
                                    //         document.getElementById('invalidEmail').style.display = 'none';
                                    //         document.getElementById('invalidEmail2').style.color = 'block';
                                    //         document.getElementById('invalidEmail2').style.color = 'red';
                                    //         error_count++
                                    //     } else {
                                    //         document.getElementById('invalidEmail').style.display = 'none';
                                    //         document.getElementById('invalidEmail2').style.display = 'none';
                                    //     }
                                    // }


                                    //  //주소 입력확인
                                    // if (!validation_text(mtAddr) != null) {
                                    //     document.getElementById('invalidAddr').style.color = 'none';
                                    // } else {
                                    //     document.getElementById('invalidAddr').style.color = 'block';
                                    //     document.getElementById('invalidAddr').style.color = 'red';
                                    //     error_count++
                                    // }

                                    if (validation_text(mtEmail1) && validation_text(mtEmail2)){
                                        mtEmail=mtEmail1+"@"+mtEmail2;
                                    }
                                    if (error_count > 0) {
                                        return open_modal_alert("필수 입력사항을 확인해주세요.");
                                    }

                                    let res = await awaitPost("/main/join", {
                                        action: 'insert_member',
                                        mtName: mtName,
                                        mtHp: mtHp,
                                        mtEmail: mtEmail,
                                        mtBirth: mtBirth,
                                        mtId: mtId,
                                        mtPwd: mtPwd,
                                        mtAddr: mtAddr,
                                        mtAddrDetail: mtAddrDetail,
                                        mtDiagnosis: mtDiagnosis,
                                        mtHospital: mtHospital,
                                        mtDiagnosisDate: mtDiagnosisDate,
                                        mtDiagnosisCode: mtDiagnosisCode,
                                        mtDiagnosisName: mtDiagnosisName,
                                        mtGender:mtGender

                                    });

                                    console.log("res:", res);
                                    if (res.result == 'success') {
                                        let temp = mtId + '/' + mtName;
                                        location.replace('/main/joinDone/' + temp);
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

                            //아이디 중복확인
                            async function validation_id(mtId) {

                                try {
                                    let res = await awaitPost("/main/join",
                                        {
                                            action: 'check_id',
                                            mtId: mtId
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


                            //전화번호 중복확인
                            async function validation_hp(mtHp) {

                                try {
                                    let res = await awaitPost("/main/join",
                                        {
                                            action: 'check_hp',
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
                            //di 확인
                            async function validation_di() {

                                try {
                                    let res = await awaitPost("/main/join",
                                        {
                                            action: 'check_di',
                                        }, true);
                                        console.log(res.result);
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

                            // //인증번호 전송
                            // async function sendCode(mtHp) {

                            //     try {
                            //         let res = await awaitPost("/main/joinSendCode",
                            //             {
                            //                 mtHp: mtHp
                            //             }, true);

                            //         if (res.result == 'success') {
                            //             return true;
                            //         } else {
                            //             return false;
                            //         }
                            //     } catch (e) {
                            //         console.log(e);
                            //         return false;
                            //     }
                            // }

                            //인증확인
                            // async function checkCode(verify) {

                            //     try {
                            //         let res = await awaitPost("/main/joinVeriFyCode",
                            //             {
                            //                 code: verify,
                            //             }, true);

                            //         if (res.result == 'success') {
                            //             return true;
                            //         } else {
                            //             return false;
                            //         }
                            //     } catch (e) {
                            //         console.log(e);
                            //         return false;
                            //     }
                            // }


                            // $(document).on('keyup', '#mtHp', function (e) {
                            //     $(this).val(validation_hypen(validation_number($(this).val())));
                            // });
                            // $(document).on('blur', '#mtHp', function (e) {
                            //     $(this).val(validation_hypen(validation_number($(this).val())));
                            // });



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