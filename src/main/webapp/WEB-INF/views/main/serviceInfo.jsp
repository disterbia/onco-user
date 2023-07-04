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
                    <li class="mr_14"><a href="/main/serviceInfo" class="fs_14 fw_400 text-light2 cursor_text">온코마스터 서비스</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="/main/serviceInfo" class="fs_14 fw_400 text-light2 cursor_text">서비스 소개</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">서비스 소개</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">암 유전자 검사 결과지와 환자 임상 정보를 기반으로 정보를 분석하여
                개인 맞춤형 지식 정보를 무료로 제공합니다.</p>
        </div>
    </div>
    <div class="container" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
        <p class="service_tit1 fw_700">서비스지 항목 <img src="${CDN_HTTP}/images/ico1.png" alt="꾸밈" width="20px"></p>
        <section class="service_wrap1">
            <dl class="s_b1">
                <dt class="fw_700 mb-4"  >유전자변이정보</dt>
                <dd class="line_h1_3 fs_19">보유하고 계신 유전자변이에 대한 설명 및 통계를 알려드립니다.<br><br><br><br><br></dd>
            </dl>
            <dl class="s_b2">
                <dt class="fw_700  mb-4">약제 및 임상 정보</dt>
                <dd class="line_h1_3 fs_19 wh_pre">보유하고 계신 유전자변이에 효과가 있는 약제 정보와 현재 진행되고
                있는 임상 정보를 제공합니다.<br><br><br><br><br></dd>
            </dl>
        </section>

    </div>
    <section class="service_wrap2" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
        <div class="container">
            <h3 class="tit_h1">서비스 제공 과정</h3>
            <div class="service_box">
                <dl data-aos="fade-up" data-aos-anchor-placement="top-bottom"  data-aos-delay="200"  data-aos-duration="500">
                    <dt class=" mb-4"><span class="montserrat font-italic fw_200 fs_14 mb-2 d-block">STEP 01</span> <b class="fw_700">회원가입</b></dt>
                    <dd class="fw_300">
                        <p>본인의 정보로 홈페이지를 통해 회원가입</p>
                        <p class="mt-5 mb-3"><span class="titdeco d-inline-block ">서비스 대상</span></p>
                        <p>현재 암 진단 받고 치료중인 환자
                            암 유전자검사를 받으신 분</p>
                        <a href="/main/serviceUse" class="py-3 d-inline-block u_btn mt-4">대상확인하기 <img src="${CDN_HTTP}/images/arrow01.png" alt="꾸밈" width="15px"></a>
                    </dd>
                </dl>
                <dl data-aos="fade-up" data-aos-anchor-placement="top-bottom"  data-aos-delay="600" data-aos-duration="500">
                    <dt class=" mb-4"><span class="montserrat font-italic fw_200 fs_14 mb-2 d-block">STEP 02</span> <b class="fw_700">서류제출</b></dt>
                    <dd>병원 의무기록지 및 암 유전자 검사 결과지 제출</dd>
                </dl>
                <dl data-aos="fade-up" data-aos-anchor-placement="top-bottom"  data-aos-delay="700" data-aos-duration="500">
                    <dt class=" mb-4"><span class="montserrat font-italic fw_200 fs_14 mb-2 d-block">STEP 03</span> <b class="fw_700">서비스지 작성</b></dt>
                    <dd>전달받은 환자 임상정보를 분석하여
                        맞춤형 지식 정보 추출</dd>
                </dl>
                <dl data-aos="fade-up" data-aos-anchor-placement="top-bottom"  data-aos-delay="800" data-aos-duration="500">
                    <dt class=" mb-4"><span class="montserrat font-italic fw_200 fs_14 mb-2 d-block">STEP 04</span> <b class="fw_700">서비스지 수령</b></dt>
                    <dd>춤형 암환자 지식정보 서비스지 수령
                        <p class="mt-5 mb-3"><span class="titdeco d-inline-block ">암 관련 정보 업데이트 시 서비스 지속적 제공</span></p>

                    </dd>
                </dl>
            </div>
        </div>

    </section>
    <div class="container" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
        <h3 class="tit_h1">제출 서류 상세 소개</h3>
        <dl class="dl_st1">
            <dt>01. 병원 의무기록지</dt>
            <dd class="line_h1_8">병원 의무기록지란, 질병 관련 사항 및 병원이 치료를 위해 시행한 모든 사항이 기록된 문서입니다.<br>
                온코마스터 서비스 제공을 위해서는 귀하의 병원 의무기록지 내 암 관련 치료내역 및 처방약제 내역, 암 조직검사기록(병리 기록)의 사항 수집이 필수적입니다.<br>
                온코마스터 서비스를 제공받기 위해 귀하의 병원 의무기록지를 전달해주실 때 위 항목이 포함되어 있는지 점검 후 보내주시길 바랍니다.</dd>
        </dl>
        <dl class="dl_st1">
            <dt>02. 암 유전자검사 결과지</dt>
            <dd class="line_h1_8">암 관련 유전자 변이 내용이 포함된 검사 결과가 기록된 문서입니다.<br>
예시&#41;	 선별급여 항목의 차세대 염기서열 분석 (NGS, Next Generation Sequencing) 기반 유전자 패널 검사결과지</dd>
        </dl>
    </div>

</div>

<script>
    AOS.init();
</script>

<%@ include file="inc/tail.jsp"%>