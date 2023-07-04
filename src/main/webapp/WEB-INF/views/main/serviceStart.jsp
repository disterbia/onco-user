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
        margin-top: 5rem;
    }
</style>
<div class="sub_pg">
    <div class="sub_top container-fluid">
        <div class="container">
            <div class="breadcrumbs">
                <ul class="d-flex pt_40">
                    <li class="mr_14"><a href="/main/index" class="fs_14 fw_400 text-light2"><img src="${CDN_HTTP}/images/ico_bread_home.svg" alt="홈" class="mr-2"> 홈</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">온코마스터 서비스</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="/main/applyStart" class="fs_14 fw_400 text-light2">서비스신청</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">서비스 신청</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">암 환자 분들을 위한 <span>무료 서비스</span> 입니다.</p>
            <p class="sub_top_txt fs_16 fw_400 line_h1_3 mt-3">제출해주신 임상 기록과 암 유전자검사 결과 기록을 기반으로<br/>
            변이 정보, 약제 정보,임상 정보 등을 리포트 형태로 제공해드립니다.</p>
        </div>
    </div>
    <div class="container sub_container mb_50">
        <p class="tit_h2 tit_h2_img">신청 전에 확인해주세요! <span><img src="${CDN_HTTP}/images/apply_check.svg" alt="확인해주세요." class="pl-3"/></span></p>
        <p class="info_line fs_22 mt-4 line_h1_4">서비스를 신청하기 위해서는 <span class="fw_600">병원 의무기록지</span>와 <span class="fw_600">암 유전자검사 결과지</span>를 필수로 제출해주셔야 합니다.</p>
        <div class="mt_40 apply_check_box">
            <div>
                <p class="fs_18 fw_600 line_h1_4">01. 병원 의무기록지란?</p>
                <p class="fs_20 fw_300 line_h1_4">병원 의무기록지란, 질병 관련 사항 및 병원이 치료를 위해 시행한 모든 사항이 기록된 문서입니다.</p>
                <p class="fs_20 fw_300 line_h1_4">온코마스터로 전달해 주시는 의무기록지 내 아래 2가지 항목의 정보가 반드시 포함되어야 합니다.</p>
                <p class="fs_20 fw_300 line_h1_4 slash position-relative pl-3 mt-4"> 암 관련 치료내역 및 처방약제 내역</p>
                <p class="fs_20 fw_300 line_h1_4 slash position-relative pl-3"> 암 조직검사기록 (병리기록)</p>
            </div>
            <div class="mt_45">
                <p class="fs_18 fw_600 line_h1_4">02. 암 유전자검사 결과지란?</p>
                <p class="fs_20 fw_300 line_h1_4">암 유전자검사 결과지란, 암 관련 유전자 변이 내용이 포함된 검사 결과가 기록된 문서입니다.</p>
                <p class="fs_20 fw_300 line_h1_4 slash position-relative pl-3  mt-4"> 선별급여 항목의 차세대염기서열분석 (NGS, Next Generation Sequencing) 기반 유전자 패널 검사 결과지</p>
            </div>
            <p class="mt_40 fs_18 fw_300 text_unline">* 서류 발급은 내원하시는 병원에 문의 부탁드립니다.</p>
        </div>
    </div>
    <c:if test="${not empty SPRING_SECURITY_CONTEXT}">
        <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto" onclick="location.href='/main/applyForm'">신청하기 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="바로가기"/></button>
    </c:if>
    <c:if test="${empty SPRING_SECURITY_CONTEXT}">
        <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto" onclick="location.href='/main/serviceFormNm'">신청하기 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="바로가기"/></button>
    </c:if>
</div>

<%@ include file="inc/tail.jsp"%>