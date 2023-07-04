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
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">공지사항</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">공지사항</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">온코마스터 서비스이용에
                관련된 문의사항을 해결해드립니다.</p>
        </div>
    </div>
    <div class="container sub_container2 mb_50">
        
        <div class="d-flex align-items-center justify-content-between border-bottom border-border pb_20">
        </div>
        <div class="px-sm-3 px-0 border-bottom inq_cont_wr">
            <fmt:formatDate value="${notice.ntWdate}" pattern="yyyy.MM.dd HH:mm" var="ntWdate" />
            <h3 class="tit_h3 line_h1_4">${notice.ntTitle}</h3>
            <p class="mt-3 fs_15 text-light"><span>${ntWdate}</span></p>
        </div>
        <div class="px-sm-3 px-0 border-bottom border-c9c9c9 inq_cont_wr">
            <p class="wh_pre line_h1_8">${notice.ntContent}</p>
        </div>
        <div class="pt-sm-0 mt-5 ">
            <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto mt-0" onclick="location.href='/main/notice'">목록으로 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="목록으로"></button>
        </div>
    </div>
</div>

<%@ include file="inc/tail.jsp"%>