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
<div class="sub_pg">
    <div class="sub_top container-fluid">
        <div class="container">
            <div class="breadcrumbs">
                <ul class="d-flex pt_40">
                    <li class="mr_14"><a href="/main/index" class="fs_14 fw_400 text-light2"><img src="${CDN_HTTP}/images/ico_bread_home.svg" alt="홈" class="mr-2"> 홈</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="/main/company" class="fs_14 fw_400 text-light2 cursor_text">온코마스터 소개</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">회사 소개</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">회사 소개</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">온코마스터를 소개합니다.</p>
        </div>
    </div>
    <div class="container sub_container mb_50 pb-0">
        <div class="text-center" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
            <p class="mb-5"><img src="${CDN_HTTP}/images/logo_deco.png" alt="데코이미지"></p>
            <p class="tit_h1 fw_600 mb-3 mb-md-5">환자중심 암 정밀의료 플랫폼, 온코마스터</p>
            <p class="tit_h4 line_h1_4 mb-5">(주)온코마스터는 고려대학교 의료기술지주의 자회사이며,
                국가 의료 R&D 연구로 선정된 K-MASTER 정밀의료 사업단의
                성과를 기반으로 설립된 암 정밀의료 전문 기업입니다.</p>
        </div>
        <p class="text-center py-5" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1700"><img src="${CDN_HTTP}/images/logo_deco2.png" alt="데코이미지"></p>

    </div>
    <div class="com_info">
        <div class="container">
            <div class="com_info_l"  data-aos="fade-right" data-aos-anchor-placement="top-bottom" data-aos-duration="1000">
                <dl>
                    <dt><span>Point 01</span>개인별 맞춤 “정밀 의료 서비스"</dt>
                    <dd>당사는 유전자 분석 데이터와 임상 데이터를 모아 빅데이터를 구축하고,
                        암 환자에게 유용한 치료 방법을 권장하는 tool을 개발하여 개인별 맞춤
                        지식인 “정밀 k의료 서비스” 를 제공합니다.</dd>
                </dl>
                <dl>
                    <dt><span>Point 02</span>빅데이터와 'AI'</dt>
                    <dd>추후에는 확보한 빅데이터와 AI를 활용해 암 환자의 치료 효과 예측이
가능한 ‘메디컬 트윈 시스템’을 구축하는 것을 목표로 하고 있습니다.</dd>
                </dl>
                <dl>
                    <dt><span>Point 03</span>다양한 분야 도전</dt>
                    <dd>당사는 암 환자에게 지식정보를 제공하고, 암 환자로부터 임상 정보를 수집하여
DB를 구축하는 등 다양한 분야의 업무를 추진하고 있습니다.</dd>
                </dl>
            </div>
        </div>

        <div class="com_info_r" data-aos="fade-left" data-aos-anchor-placement="top-bottom" data-aos-duration="1000">
            <p><img src="${CDN_HTTP}/images/company_img2.png" alt="데코이미지"></p>
        </div>
    </div>
</div>

<script>
    AOS.init();
</script>
<%@ include file="inc/tail.jsp"%>