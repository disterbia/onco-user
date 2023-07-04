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
        <div class="d-flex align-items-center justify-content-between border-bottom border-border pb_20">
            <h2 class="tit_h2">나의 문의내역</h2>
            <!-- <button type="button" class="btn btn_delete2 mt-0"><i class="xi-trash-o mr-1"></i>삭제하기</button> -->
        </div>
        <div class="px-sm-3 px-0 border-bottom inq_cont_wr">
            <h3 class="tit_h3 line_h1_4">${inquery.qtTitle}</h3>
            <fmt:formatDate value="${inquery.qtWdate}" pattern="yyyy.MM.dd HH:mm" var="qtWdate" />
            <p class="mt-3 fs_15 text-light"><span>${qtWdate}</span> · <span>            <c:choose>
                <c:when test="${inquery.qtLevel =='1' || inquery.qtLevel =='0'}">
                    미답변
                </c:when>
                <c:otherwise>
                    답변완료
                </c:otherwise>
            </c:choose></span></p>
        </div>
        <div class="px-sm-3 px-0 border-bottom border-c9c9c9 inq_cont_wr">
            <p class="wh_pre line_h1_8">${inquery.qtContent}</p>
        </div>
        <div class="inq_cont_wr">
            <h2 class="tit_h2 mb-3 pb-sm-3 pb-0">문의답변</h2>
            <div class="bg-deep-light inq_cmt p-sm-5 p-3">
                <p class="wh_pre m-md-3 mx-0 my-2 line_h1_8">${inquery.qtAnswer}</p>
            </div>
        </div>
        <div class="pt-sm-0 pt-3">
            <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto mt-0" onclick="location.href='/main/queryListNm/${inquery.mtName}/${inquery.mtHp}'">목록으로 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="목록으로"></button>
        </div>
    </div>
</div>


<%@ include file="inc/tail.jsp"%>