<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="chk_menu" value="0"/>
<c:set var="chk_sub_menu" value="2"/>

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
<div class="sub_pg">
    <div class="sub_top container-fluid">
        <div class="container">
            <div class="breadcrumbs">
                <ul class="d-flex pt_40">
                    <li class="mr_14"><a href="/main/index" class="fs_14 fw_400 text-light2"><img src="${CDN_HTTP}/images/ico_bread_home.svg" alt="홈" class="mr-2"> 홈</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="/main/medical01" class="fs_14 fw_400 text-light2 cursor_text">암 정밀의료</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">표적치료제</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">표적치료제</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">표적치표제를 소개합니다.</p>
        </div>
    </div>
    <div class="container sub_container mb_50">
        <div class="medical_wrap text-center">
            <p class="tit_h1 line_h1_4" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">표적치료제?</p>
            <p class="tit_h4 line_h1_4 mt_34" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">기존 세포독성항암제는 분열하는 세포를 공격하는 특성으로 인해,
                암세포 뿐만 아니라 빠르게 분열하는 정상 세포인 피부, 점막,
                혈액세포도 공격하여 탈모, 설사, 백혈구 감소증 등의 부작용을 유발합니다.
                표적 치료제는 <span class="text-primary ">암세포에만 발현하는 특정 표적을 공격</span>하기 때문에 암세포만 골라 죽일 수 있습니다.
                그러므로 부작용은 줄이고 치료 효과는 획기적으로 높일 수 있습니다.</p>
        </div>
        <p class="text-center medist_01 px-4" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
            <img src="${CDN_HTTP}/images/bg_bglogo2.png" alt="TARGETED AGENTS">
        </p>
        <p class="text-center" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
            <img src="${CDN_HTTP}/images/medical_img1.png" alt="세포독성항암제" class="mt-5 px-3">
            <img src="${CDN_HTTP}/images/medical_img2.png" alt="표적치료제" class="mt-5 px-3">
        </p>



    </div>
</div>
<script>
    AOS.init();
</script>

<%@ include file="inc/tail.jsp"%>