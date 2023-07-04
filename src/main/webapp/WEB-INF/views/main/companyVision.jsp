<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="inc/config.jsp"%>
<%@ include file="inc/head.jsp"%>
<style>
    body {
        background-color: #fff;
    }

    .sub_pg {
        padding-top: 0;
        margin-top: 5rem;
    }
</style>
<script>
    AOS.init();
</script>
<div class="sub_pg">
    <div class="sub_top container-fluid">
        <div class="container">
            <div class="breadcrumbs">
                <ul class="d-flex pt_40">
                    <li class="mr_14"><a href="/main/index" class="fs_14 fw_400 text-light2"><img src="${CDN_HTTP}/images/ico_bread_home.svg" alt="홈" class="mr-2"> 홈</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="/main/company" class="fs_14 fw_400 text-light2 cursor_text">온코마스터 소개</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">비전 및 목표</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">비전 및 목표</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">온코마스터를 비전 및 목표를 소개합니다.</p>
        </div>
    </div>
    <div class="container sub_container mb_50 pb-0">
        <div class="text-center" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
            <p class="mb-5"><img src="${CDN_HTTP}/images/logo_deco4.png" alt="데코이미지"></p>
            <p class="tit_h1 fw_600 mb-3 mb-md-5 line_h1_3">차세대 의료 패러다임<br>
                정밀의료 분야 전문 기업, 온코마스터</p>

        </div>
        <div class="visoin_wrap fw_600" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300"  data-aos-offset="100">
            <div class="visoin_wrap_box" data-aos="flip-left"    data-aos-delay="300"    data-aos-offset="100">
                <img src="${CDN_HTTP}/images/vison_ico01.png" alt="데코이미지">
                <p class="visoin_txt">신뢰 있는 암환자 대상
                    정밀 의료 서비스</p>
            </div>
            <div class="visoin_wrap_box" data-aos="flip-left"   data-aos-delay="500"    data-aos-offset="100">
                <img src="${CDN_HTTP}/images/vison_ico02.png" alt="데코이미지">
                <p class="visoin_txt">암 환자 맞춤형 치료법
                    및 임상 제안</p>
            </div>
            <div class="visoin_wrap_box" data-aos="flip-left"   data-aos-delay="700"    data-aos-offset="100">
                <img src="${CDN_HTTP}/images/vison_ico03.png" alt="데코이미지">
                <p class="visoin_txt">유전체 데이터 기반
                    암 진단 및 치료법 기여</p>
            </div>
        </div>

    </div>

</div>


<%@ include file="inc/tail.jsp"%>