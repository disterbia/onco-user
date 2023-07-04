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
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">개인정보처리방침</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">개인정보처리방침</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">온코마스터 개인정보처리방침입니다.</p>
        </div>
    </div>
    <div class="container sub_container mb_50">
<!--         <div class="d-flex align-items-center justify-content-end mb-md-5 mb_20"> -->
<!--             <button type="button" class="btn btn-secondary px-5 mt-0 btn_download" onclick="location.href='./'"><i class="xi-download mr-2"></i>전문다운로드</button> -->
<!--         </div> -->
        ${terms.ttContent}
    </div>
</div>


<%@ include file="inc/tail.jsp"%>