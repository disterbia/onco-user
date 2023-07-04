<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="chk_menu" value="0"/>
<c:set var="chk_sub_menu" value="0"/>

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
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">암 정밀의료</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">암 정밀의료</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">암 정밀의료를 소개합니다.</p>
        </div>
    </div>
    <div class="container sub_container mb_50">
        <div class="medical_wrap medical_01 text-center">
            <p class="tit_h1"  data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">정밀의료란?</p>
            <p class="tit_h4 line_h1_4 mt_34"  data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">유전정보, 임상정보, 생활환경 및 습관 정보 등을 토대로
    보다 정밀하게 환자 각 개인을 분류하고 이를 고려해
    개인 맞춤형 진단 치료방법을 제공하는 <sapn class="text-primary">차세대 의료 패러다임</sapn>입니다.</p>
            <img src="${CDN_HTTP}/images/medical_m1_img.png" alt="암 정밀의료" class="mt_60 mb-3"  data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1500" >
            <img src="${CDN_HTTP}/images/medical_m1_img2.png" alt="암 정밀의료" class="mt_100"  data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1800" >
        </div>

        
    </div>
</div>

<script>
    AOS.init();
</script>

<%@ include file="inc/tail.jsp"%>