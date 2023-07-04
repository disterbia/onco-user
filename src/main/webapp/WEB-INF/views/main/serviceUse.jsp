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
                    <li class="mr_14"><a href="/main/serviceInfo" class="fs_14 fw_400 text-light2 cursor_text">온코마스터 서비스</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="/main/serviceUse" class="fs_14 fw_400 text-light2 cursor_text">신청 대상자</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">신청 대상자</p>
            <div class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">암 유전자 검사 결과지를 보유한 암 환자분 대상 서비스지 제공 가능합니다.<br>
                <p class="mt-3 text_unline">* 유전자 검사 결과지는 필수 제출 서류입니다.</p>
            </div>
        </div>
    </div>
    <div class="container sub_container ">
        <p class="tit_h1   mb-3 mb-md-5 ">암 유전자 (NGS) 검사 진행 가능 조건 </p>
        <p class="service_t1 fw_300">세부 조건 사항 및 급여 청구 등은 유전자 검사를 진행하는 기관이나 병원에 문의하시면 더 자세한 내용을 확인하실 수 있습니다.</p>
        <div class="row no-gutters ">
            <div class="col-md-6 col-12 mb-5">
                <div class="box_use">
                    <img src="${CDN_HTTP}/images/service_img03.png" alt="암 환자">
                    <p class="text-primary mb-4 box_use_tit fw_700">암 환자</p>
                    <ul class="line_h1_8 list_st01">
                        <li>암 진단을 받고 치료중이신 분 </li>
                        <li>암 유전자 검사를 받으신 분</li>
                    </ul>

                </div>
                <dl class="dl_st1 pl-2 mt-5">
                    <dt class="fw_600">Q. 암 유전자 검사란?</dt>
                    <dd class="line_h1_6">암 관련 유전자 변이 내용이 포함된 검사<br>
                        예시&#41; 선별급여 항목의 차세대 염기서열 분석 (NGS) 기반 유전자 패널 검사
                    </dd>
                </dl>
            </div>
            <div class="col-md-6 col-12  mb-4">
                <div class="box_use">
                    <img src="${CDN_HTTP}/images/service_img04.png" alt="암 환자">
                    <p class="text-primary mb-4 box_use_tit fw_700">암 환자 가족</p>
                    <ul class="line_h1_8 list_st01">
                        <li>암 진단 및 유전자 검사를 통해
                            변이를 확인한 환자의 가족 분</li>

                    </ul>
                </div>
                <div class="allim_deco pl-2 line_h1_5 mt-5">
                    <p class=" flex-shrink-0 mr-4"><img src="${CDN_HTTP}/images/alim_deco.png" alt="암 환자"></p>
                    <p>현재 온코마스터는 암 환자 본인만 서비스를<br>
                        신청할 수 있습니다.</p>
                </div>
            </div>
        </div>

    </div>

</div>

<script>
    AOS.init();
</script>

<%@ include file="inc/tail.jsp"%>