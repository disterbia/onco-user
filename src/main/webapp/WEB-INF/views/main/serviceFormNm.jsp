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
                            <input type="data" class="form-control">
                        </div>
                        <div class="ip_wr col-md-6 mb_30">
                            <div class="ip_tit">
                                <h5>생년월일</h5>
                            </div>
                            <input type="date" class="form-control position-relative">
                        </div>
                    </div>
                    <div class="form-row mt-3 mb_30">
                        <div class="ip_wr ip_valid col-md-6">
                            <div class="ip_tit">
                                <h5>휴대폰 번호</h5>
                            </div>
                            <div class="d-flex align-items-center">
                                <div class="ph_wrap">
                                    <input type="text" class="form-control" placeholder="'-'제외하고 숫자만 입력">
                                </div>
                                <!-- <button type="button" class="btn btn-outline-primary btn-sm ml-3">회원인증</button> -->
                                <!-- 회원 아닐 시 모달 -->
                                <button type="button" class="btn btn-outline-primary btn-sm ml-3" data-toggle="modal" data-target="#apply_join_modal" onclick="open_modal_replace(`./login`, `로그인 후 이용 가능합니다.`);">회원인증</button>
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
                            <select class="form-control custom-select" id="mtDiagnosisCode">
                                <option selected value="0">암종 선택</option>
                                <c:forEach var="diagnosis" items="${diagnoisList}">
                                    <option value="${diagnosis.idx}">${diagnosis.dtName}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="직접입력">
                        </div>
                    </div>
                    <div class="form-row mt-3 mb_30 border-bottom pb_40">
                        <div class="ip_wr col-md-6 mb_30">
                            <div class="ip_tit">
                                <p class="fs_16 fw_500">병원명</p>
                            </div>
                            <input type="data" class="form-control" placeholder="병원명">
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
                            <select class="form-control custom-select">
                                <option selected>서류 제출 방식 선택</option>
                                <option value="1">하단에 문서 첨부(신청시 홈페이지 통한 제출)</option>
                                <option value="2">이메일 제출</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-row mt-3 mb_30">
                        <div class="ip_wr col-md-12">
                            <div class="ip_tit">
                                <h5>서비스지 수령 방식</h5>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <select class="form-control custom-select">
                                <option selected>서비스지 수령 방식 선택</option>
                                <option value="1">이메일로 받기</option>
                                <option value="2">문자로 받기</option>
                                <option value="3">카카오톡으로 받기</option>
                            </select>
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
                    </div>
                    <div class="form-row mt-3 mb_30">
                        <div class="ip_wr col-md-6">
                            <div class="ip_tit">
                                <p class="fs_16 fw_500">병원 의무기록지</ㅔ>
                            </div>
                            <div class="form-group upload_file_item mt-3">
                                <label onclick="open_modal_replace('/main/login','로그인 후 이용 가능합니다.');" class="file_upload square"><i class="xi-file-add-o pr-2"></i> 문서첨부</label>
                                <input type="file" class="form-control-file d-none" id="multipartFile" >
                            </div>
                        </div>
                        <div class="file_cont_wrap col-md-12 scrolly_bar">

                        </div>
                    </div>
                    <div class="form-row mt-3 mb_30">
                        <div class="ip_wr col-md-6">
                            <div class="ip_tit">
                                <p class="fs_16 fw_500">암 유전자검사 결과지</p>
                            </div>
                            <div class="form-group upload_file_item mt-3">
                                <label onclick="open_modal_replace('/main/login','로그인 후 이용 가능합니다.');" class="file_upload square"><i class="xi-file-add-o pr-2"></i> 문서첨부</label>
                                <input type="file" class="form-control-file d-none" id="multipartFile2" >
                            </div>
                        </div>
                        
                        <div class="file_cont_wrap col-md-12 scrolly_bar">

                        </div>
                    </div>
                    <!-- button -->
                    <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto mt_40"  onclick="open_modal_replace(`./login`, `로그인 후 이용 가능합니다.`);">신청하기 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="바로가기"/></button>
                </div>
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
</script>
<%@ include file="inc/modal.jsp"%>
<%@ include file="inc/tail.jsp"%>