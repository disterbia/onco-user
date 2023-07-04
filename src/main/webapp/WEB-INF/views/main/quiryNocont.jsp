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
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">고객센터</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">고객상담</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">고객센터</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">온코마스터 서비스이용에
                관련된 문의사항을 해결해드립니다.</p>
        </div>
    </div>
    <div class="container sub_container2 mb_50">
        <p class="tit_h1 text-center mb-sm-5 mb_20">고객상담</p>
        <div class="tab_nav_wrap none_scroll_bar">
            <div class="tab_nav">
                <div class="tab_link">
                    <a href="/main/faq" class="btn_tab btn on">자주 묻는 질문</a>
                </div>
                <div class="tab_link">
                    <c:if test="${not empty SPRING_SECURITY_CONTEXT}">
                        <a href="/main/inquery" class="btn_tab btn">1:1 문의</a>
                    </c:if>
                    
                    <c:if test="${empty SPRING_SECURITY_CONTEXT}">
                        <a href="/main/queryNm" class="btn_tab btn">1:1 문의</a>
                    </c:if>
                </div>

                <div class="tab_link">
                    <c:if test="${not empty SPRING_SECURITY_CONTEXT}">
                        <a href="/main/inqueryList" class="btn_tab btn">나의 문의내역</a>
                    </c:if>
                    <c:if test="${empty SPRING_SECURITY_CONTEXT}">
                        <a href="/main/queryFindNm" class="btn_tab btn">나의 문의내역</a>
                    </c:if>
                </div>
            </div>
        </div>
        <div class="form_wrap pt-5 mt-5">
        <form action="">
                <div class="border_2 rounded-xl py_40 join_done_wrap px-3">
                    <div class="text-center">
                        <p class="fs_30 fw_700 mt_23">등록내역이 없습니다.</p>
                        <p class="fs_16 fw_400 mt-4 text-light line_h1_3">등록한 이름과 연락처를 다시 확인해주세요!</p>
                    </div>

                    <!-- button -->
                    <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto mt-5" onclick="location.href='/main/inquiryNm'">다시조회하기 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="로그인하기"/></button>

                </div>
            </form>
            
        </div>
    </div>
</div>

<%@ include file="inc/tail.jsp"%>