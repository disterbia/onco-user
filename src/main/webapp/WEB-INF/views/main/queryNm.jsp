<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <%@ include file="inc/config.jsp" %>
                <%@ include file="inc/head.jsp" %>
                    <style>
                        body {
                            background-color: #fff;
                        }

                        .sub_pg {
                            padding-top: 0;
                            margin-top: 5rem;
                        }
                    </style>
                    <div class="sub_pg mb_40">
                        <div class="sub_top container-fluid">
                            <div class="container">
                                <div class="breadcrumbs">
                                    <ul class="d-flex pt_40">
                                        <li class="mr_14"><a href="/main/index" class="fs_14 fw_400 text-light2"><img
                                                    src="${CDN_HTTP}/images/ico_bread_home.svg" alt="홈" class="mr-2">
                                                홈</a></li>
                                        <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표">
                                        </li>
                                        <li class="mr_14"><a href="javascript:avoid(0)"
                                                class="fs_14 fw_400 text-light2 cursor_text">고객센터</a></li>
                                        <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표">
                                        </li>
                                        <li class="mr_14"><a href="/main/faq" class="fs_14 fw_400 text-light2">고객상담</a>
                                        </li>
                                    </ul>
                                </div>
                                <p class="tit_h1 mt_50">고객센터</p>
                                <p class="sub_top_tit info_line fs_18 line_h1_3 fw_400 mt-3">온코마스터 서비스이용에<br />
                                    관련된 문의사항을 해결해드립니다.</p>
                            </div>
                        </div>
                        <div class="container sub_container2 mb_50">
                            <div class="form_wrap">
                                <p class="tit_h1 text-center mb-sm-5 mb_20">고객상담</p>
                                <div class="tab_nav_wrap none_scroll_bar mb_50 pb_30">
                                    <div class="tab_nav">
                                        <div class="tab_link">
                                            <a href="/main/faq" class="btn_tab btn">자주 묻는 질문</a>
                                        </div>
                                        <div class="tab_link">
                                            <a href="/main/queryNm" class="btn_tab btn on">1:1 문의</a>
                                        </div>
                                        <div class="tab_link">
                                            <a href="/main/queryFindNm" class="btn_tab btn">나의 문의내역</a>
                                        </div>
                                    </div>
                                </div>

                                <p class="tit_h3 mb_20">개인정보 수집·이용 안내</p>
                                <div class="px-sm-3 px-0 py_40 text_box mb_50">
                                    <div class="rounded bg-light py_30 px_30 text_box1 mb-3 ">
                                        <p class="fs_16 fw_300 line_h1_9 scrolly_bar">개인정보 수집•이용 동의서

                                            ㈜온코마스터(이하 '회사'라 합니다)는 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호에 관한 법률", "개인정보보호법" 등 관련 법규를 준수하고 있습니다.
                                            
                                            1. 개인정보 수집 및 이용 목적
                                            - 고객 문의에 대한 답변 전달
                                            
                                            2. 수집하는 개인정보 항목
                                            - 필수항목 : 이름, 휴대폰번호, 이메일, 문의유형, 제목, 문의내용
                                            
                                            3. 개인정보의 보유 및 이용기간
                                            이용자의 개인정보는 수집•이용에 대한 동의를 철회하거나 삭제를 요청할 경우 또는 개인정보의 수집•이용 목적이 달성되면 지체없이 파기됩니다. 다만, 회사는 관계법령의 규정에 의하여 보존할 필요가 있는 경우는 해당 법령에서 정한 바에 의하여 개인정보를 보관할 수 있습니다.
                                            
                                            – 보존 항목 : 이름, 휴대폰번호, 이메일
                                            – 보존 근거 : 소비자의 불만 또는 분쟁처리에 관한 기록(전자상거래 등에서의 소비자보호에 관한 법률)
                                            – 보존 기간 : 3년
                                            
                                            4. 동의를 거부할 권리 및 동의 거부에 따른 불이익
                                            이용자는 본 서비스의 개인정보 수집•이용 등에 대한 동의를 거부할 수 있으나, 필수항목 수집•이용에 대한 동의 거부 시 본 서비스를 이용할 수 없습니다.
                                            </p>
                                    </div>
                                    <div class="checks">
                                        <label>
                                            <input type="checkbox" name="chk1" id="is-agree">
                                            <span class="ic_box">
                                                <i class="ri-check-line"></i>
                                            </span>
                                            <div class="chk_p">
                                                <p>동의합니다.</p>
                                            </div>
                                        </label>
                                    </div>
                                </div>

                                <p class="tit_h3 pt-5 query_tit mb_20">문의작성<span class="fs_16 fw_300 ml-4 pl-2 fc_7584">
                                        필수 입력 사항입니다.</span></p>
                                <form action="">
                                    <div class="px-sm-3 px-0 py_40 text_box mb_50">
                                        <div class="ip_wr">
                                            <div class="ip_tit ">
                                                <h5>문의종류</h5>
                                            </div>
                                            <select class="form-control custom-select" id="qtType">
                                                <option selected value="1">서비스지 신청 관련 문의</option>
                                                <option value="2">서비스지 신청 취소 요청</option>
                                                <option value="3">서비스지 내용 관련 문의</option>
                                                <option value="4">회원가입 관련 문의</option>
                                                <option value="5">기타 문의</option>
                                            </select>
                                        </div>

                                        <div class="form-row mt_36">
                                            <div class="ip_wr col-md-6">
                                                <div class="ip_tit ">
                                                    <h5>이름</h5>
                                                </div>
                                                <input type="text" class="form-control" placeholder="이름" id="mtName">

                                            </div>
                                            <div class="ip_wr col-md-6">
                                                <div class="ip_tit">
                                                    <h5>연락처</h5>
                                                </div>
                                                <div class="ph_wrap">
                                                <input type="text" maxlength="13" class="form-control" placeholder="- 빼고 숫자만 입력"
                                                    id="mtHp">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-row mt_36">
                                            <div class="ip_wr col-md-12">
                                                <div class="ip_tit no-point">
                                                    <h5>이메일</h5>
                                                </div>
                                            </div>
                                            <div class="row w-100 mail_form">
                                                <div class="d-flex align-items-center mail_wrap col-md-8 col-12">
                                                    <input type="text" class="form-control" id="mtEmail1">
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
                                        </div>

                                        <div class="ip_wr mt_36">
                                            <div class="ip_tit ">
                                                <h5>제목</h5>
                                            </div>
                                            <input type="text" class="form-control" placeholder="제목을 입력해주세요."
                                                id="qtTitle">
                                        </div>

                                        <div class="ip_wr mt_36">
                                            <div class="ip_tit ">
                                                <h5>문의내용</h5>
                                            </div>
                                            <textarea class="form-control" rows="18" placeholder="문의내용을 입력해주세요."
                                                id="qtContent"></textarea>
                                        </div>

                                        <div class="ip_wr mt_36">
                                            <div class="ip_tit no-point">
                                                <h5>첨부파일</h5>
                                            </div>
                                            <div class="upload_img_wrap">
                                                <div class="form-group upload_img_item">
                                                    <label for="file_upload" class="file_upload square">
                                                        <i class="xi-plus"></i>
                                                    </label>
                                                    <input type="file" class="form-control-file d-none" multiple
                                                        id="file_upload" onchange="ValidateMultipleInput(this);">
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <button type="button"
                                        class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto mb_50"
                                        onclick="insert_inquery();">
                                        등록하기 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="바로가기">
                                    </button>
                                </form>
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
                            const emailInput = document.getElementById('mtEmail2');

                            if (emailDomains[selectedValue]) {
                                emailInput.value = emailDomains[selectedValue];
                            } else {
                                emailInput.value = '';
                            }
                        });


                        let totalFiles = 0; // 전체 파일 수를 저장할 전역 변수
                        let fileInput = document.getElementById('file_upload');

                        function upload_img_wrap(e) {
                            // 'upload_img_wrap' div를 찾음
                            let uploadImgWrap = document.querySelector(".upload_img_wrap");

                            for (let i = 0; i < e.files.length; i++) {
                                let file = e.files[i];
                                let reader = new FileReader();

                                reader.onload = function (event) {
                                    let img = document.createElement("img");
                                    img.src = event.target.result;

                                    let newDiv = document.createElement("div");
                                    newDiv.className = "form-group upload_img_item";

                                    let imageAreaDiv = document.createElement("div");
                                    imageAreaDiv.className = "square";
                                    imageAreaDiv.appendChild(img);

                                    let label = document.createElement("label");
                                    label.className = "file_upload square d-none";
                                    label.for = "file_upload";

                                    let i = document.createElement("i");
                                    i.className = "xi-plus";
                                    label.appendChild(i);

                                    let deleteButton = document.createElement("button");
                                    deleteButton.type = "button";
                                    deleteButton.className = "btn btn-link btn-sm btn_delete mt-0";

                                    let icon = document.createElement("i");
                                    icon.className = "xi-close text-white";
                                    deleteButton.appendChild(icon);

                                    deleteButton.addEventListener("click", function () {
                                        uploadImgWrap.removeChild(newDiv);
                                        totalFiles--;

                                        let fileArray = Array.from(fileInput.files);
                                        let index = fileArray.findIndex(f => f.name === file.name);
                                        if (index > -1) {
                                            fileArray.splice(index, 1);
                                            let newFileList = new DataTransfer();
                                            fileArray.forEach((file) => {
                                                newFileList.items.add(file);
                                            });
                                            fileInput.files = newFileList.files;
                                        }
                                    });

                                    newDiv.appendChild(label);
                                    newDiv.appendChild(imageAreaDiv);
                                    imageAreaDiv.appendChild(deleteButton);
                                    uploadImgWrap.appendChild(newDiv);
                                }

                                reader.readAsDataURL(file);
                            }

                            totalFiles += e.files.length;
                        }

                        var _validFileExtensions = [".jpg", ".jpeg", ".gif", ".png", ".webp"];

                        function ValidateMultipleInput(oInput) {
                            if (oInput.type == "file") {
                                let files = oInput.files;
                                let count = files.length;
                                let invalidFiles = [];

                                // 이미 선택된 파일 수와 현재 선택된 파일 수를 합쳤을 때 2를 초과하면 에러 메시지 출력
                                if (totalFiles + files.length > 2) {
                                    open_modal_alert("최대 2개의 파일까지 첨부가 가능합니다.", "File Error");
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
                                    }
                                }

                                if (invalidFiles.length > 0) {
                                    let invalidExtensions = invalidFiles.join(", ");
                                    open_modal_alert("\"" + invalidExtensions + "\" - 해당 확장자는 첨부가 불가능한 확장자입니다.", "File Error");
                                    oInput.value = "";
                                    return false;
                                }

                                upload_img_wrap(oInput);
                            }
                            return true;
                        }

                        async function insert_inquery() {

                            let isCheck = $("#is-agree").is(":checked");
                            let qtType = $("#qtType").val();
                            let mtName = $("#mtName").val();
                            let mtHp = $("#mtHp").val();
                            let mtEmail1 = $("#mtEmail1").val();
                            let mtEmail2 = $("#mtEmail2").val();
                            let mtEmail = "";
                            let qtTitle = $("#qtTitle").val();
                            let qtContent = $("#qtContent").val();

                            let error_count = 0;

                            if (!isCheck) return open_modal_alert("개인정보 수집 및 이용에 동의해주세요.");
                            if (qtType == null || qtType == "") {
                                error_count++
                            }
                            if (!validation_text(mtName)) {
                                error_count++
                            }
                            if (!validation_text(mtHp) || mtHp.length != 13) {
                                error_count++
                            }
                            if (!validation_text(qtTitle)) {
                                error_count++
                            }
                            if (!validation_text(qtContent)) {
                                error_count++
                            }
                            if (validation_text(mtEmail1) && validation_text(mtEmail1) ) {
                                mtEmail=mtEmail1 + "@" + mtEmail2;
                            }
                            if (error_count > 0) {
                                return open_modal_alert("필수 입력사항을 정확히 입력해주세요.");
                            }


                            let params = {
                                action: 'insert_inquery',
                                qtType: qtType,
                                mtName: mtName,
                                mtHp: mtHp,
                                mtEmail: mtEmail,
                                qtTitle: qtTitle,
                                qtContent: qtContent
                            }

                            let files = await fileArray($('input[type="file"]').get(0).files);
                            if (files.length > 0) {
                                params['files'] = files;
                            } 
                            //else return open_modal_alert("필수 입력사항을 확인해주세요.");

                            console.log(params);

                            let res = await awaitPostMultipart("./queryUpdate.do", params, true);

                            if (res.result == 'success') {
                                console.log(res);
                                open_modal_replace(`./queryFindNm`, "문의가 등록되었습니다.");
                            } else {
                                if (res.error_code) {
                                    console.log(res.error_code, res.error_detail);
                                    open_modal_reload(res.error_code, res.error_detail);
                                } else {
                                    open_modal_reload();
                                }
                            }

                        }

                        $(document).on('keyup', '#mtHp', function (e) {
                                $(this).val(validation_hypen(validation_number($(this).val())));
                            });
                            $(document).on('blur', '#mtHp', function (e) {
                                $(this).val(validation_hypen(validation_number($(this).val())));
                            });

                    </script>
                    <%@ include file="inc/modal.jsp" %>
                        <%@ include file="inc/tail.jsp" %>