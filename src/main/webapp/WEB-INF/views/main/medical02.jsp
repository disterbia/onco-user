<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="chk_menu" value="0"/>
<c:set var="chk_sub_menu" value="1"/>

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
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">NGS검사란</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">NGS검사란?</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">NGS검사를 소개합니다.</p>
        </div>
    </div>
    <div class="container sub_container mb_50">
        <div class="medical_wrap text-center">
            <p class="tit_h1 line_h1_4"  data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">차세대 염기서열 분석<br/>
            (Next Generation Sequencing-NGS)이란?</p>
            <p class="tit_h4 line_h1_4 mt_34"  data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">차세대 염기서열 분석이란 <span class="text-primary">수 십-수백개 유전자를 한 번에 대량으로 분석하는 기술로</span>
            이를 통해 빠른 시간 안에 개인 유전체 분석을 할 수 있습니다.
            차세대염기서열분석 기반 유전자 패널 검사를 통해 의심 암 질환과
            관련된 유전자 이상 여부를 확인하여 관련 질환을 예방, 진단, 치료할 수 있습니다.</p>
            
        <div class="mt_100">
            <div class="row mx-0 medi02_wrap justify-content-center">
                <div class="row col-sm-12 col-md-12 col-lg-6 medi02_left">
                    <div class="col-6 py-4">
                        <div class="rounded-sm text-center bg-deep-light medi02_box">
                            <div>
                                <img src="${CDN_HTTP}/images/medical_m02_n1.png" alt="검체 채취">
                                <p class="fs_22 fw_400 text-center mt-3 line_h1_4">검채 채취<br/>
                                    (조직 및 혈액)
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 py-4">
                        <div class="rounded-sm text-center bg-deep-light medi02_box">
                            <div>
                                <img src="${CDN_HTTP}/images/medical_m02_n2.png" alt="NGS 유전자 검사">
                                <p class="fs_22 fw_400 text-center mt-3 line_h1_4">NGS<br/>
                                    유전자 검사
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 py-4">
                        <div class="rounded-sm text-center bg-deep-light medi02_box">
                            <div>
                                <img src="${CDN_HTTP}/images/medical_m02_n3.png" alt="유전자 변이 여부 확인">
                                <p class="fs_22 fw_400 text-center mt-3 line_h1_4">유전자 변이<br/>
                                    여부 확인
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 py-4">
                        <div class="rounded-sm text-center bg-deep-light medi02_box">
                            <div>
                                <img src="${CDN_HTTP}/images/medical_m02_n4.png" alt="분자종양보드를 통한 NGS 검사 결과 분석">
                                <p class="fs_22 fw_400 text-center mt-3 line_h1_4">분자종양보드를<br/>
                                    통한 NGS 검사 결과 분석
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row col-sm-12 col-md-12 col-lg-6  py-4 px-4 medi02_right">
                    <div class="col-12 medi02_wrap_right text-center">
                        <div class="medi02_right_r  d-flex align-items-center justify-content-center">
                            <div>
                                <img src="${CDN_HTTP}/images/medical_m02_n5.png" alt="암 질환의 예방, 진단, 치료">
                                <p class="fs_22 text-white fw_700 text-center mt-3 line_h1_4">암 질환의<br/>예방, 진단, 치료</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>



    </div>
</div>
<script>
    AOS.init();
</script>

<%@ include file="inc/tail.jsp"%>