<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="inc/config.jsp"%>
<%@ include file="inc/head.jsp"%>
<div class="main_wrap">
    <div class="sec1_wrap position-relative">
        <div class="container-fluid px-0">
            <div class="maintop_txt_wrap">
                <p class="deco_txt montserrat" data-aos="fade-up" data-aos-duration="1300">onco MASTER</p>
                <p class="main_tit" data-aos="fade-up" data-aos-duration="1500">환자중심 암<br/>
                    정밀의료 플랫폼
                </p>
                <p class="fs_21 fw_300 sub_tit" data-aos="fade-up" data-aos-duration="1800">암 관련 모든 정보를 융합하고,<br class="d-none"/> 개인 맞춤형 정보를 제공합니다. </p>
                <button type="button" data-aos="fade-up" data-aos-duration="2000" onclick="location.href='/main/serviceInfo'" class="btn btn-outline-primary btn-md d-flex justify-content-between align-items-center">서비스알아보기 <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24" height="24" viewBox="0 0 24 24">
                    <defs>
                        <clipPath id="clip-path">
                        <rect id="사각형_8155" data-name="사각형 8155" width="24" height="24" transform="translate(349 653)" fill="none" stroke="#707070" stroke-width="1"/>
                        </clipPath>
                    </defs>
                    <g id="ico_btn_arrow_b" transform="translate(-349 -653)" clip-path="url(#clip-path)">
                        <g id="g_34040" data-name="그룹 34040" transform="translate(578.361 -32.829) rotate(45)">
                            <path id="g_40251" data-name="패스 40251" d="M338.979,657.872V641.677" transform="translate(0.74 -2.638)" fill="none" stroke="#2bbfff" stroke-width="1.5"/>
                            <path id="g_40252" data-name="패스 40252" d="M331.865,646.477l7.437-7.437,7.437,7.437" transform="translate(0.418)" fill="none" stroke="#2bbfff" stroke-width="1.5"/>
                        </g>    
                    </g>
                    </svg>
                </button>
            </div>
            <div class="lottie_wrap">
                <lottie-player src="${CDN_HTTP}/images/onco_lottie.json"  background="transparent"  speed="1"  loop  autoplay></lottie-player>
            </div>
            <div class="swiper swiper-video-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <video autoplay muted loop playsinline>
                            <source src="${CDN_HTTP}/video/video1.mp4" type="video/mp4">
                        </video>        
                    </div>
                    <div class="swiper-slide">
                    <video autoplay muted loop playsinline>
                        <source src="${CDN_HTTP}/video/video2.mp4" type="video/mp4">
                    </video>
                    </div>
                    <div class="swiper-slide">
                        <video autoplay muted loop playsinline>
                            <source src="${CDN_HTTP}/video/video3.mp4" type="video/mp4">
                        </video> 
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <!-- If we need navigation buttons -->
            <div class="swiper_btn_wrap">
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
            <div class="deco_scrolldown">
                <img src="${CDN_HTTP}/images/main_slidedown.png" alt="스크롤다운"/>
                <p class="montserrat fs_13 fw_400 text_element">SCROLL DOWN</p>
            </div>
        </div>
    </div>
    <div class="container-fluid sec2">
        <div class="main_text_wrap">
            <p class="deco_txt montserrat" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">SERVICE PAPER</p>
            <P class="fs_50 fw_700 main_tit" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1500">온코마스터 서비스지</P>
            <p class="fs_21 fw_300 sub_tit" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1800">NGS 유전체 분석 결과를 분석하고<br class="d-none"/> 맞춤 정보를 무료로 제공합니다.</p>
            <button type="button" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="2000" class="btn btn-outline-primary btn-md d-flex justify-content-between mx-auto align-items-center" onclick="location.href='/main/serviceStart'">서비스 신청하기 <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24" height="24" viewBox="0 0 24 24">
                <defs>
                    <clipPath id="clip-path">
                    <rect id="사각형_8155" data-name="사각형 8155" width="24" height="24" transform="translate(349 653)" fill="none" stroke="#707070" stroke-width="1"/>
                    </clipPath>
                </defs>
                <g id="ico_btn_arrow_b" transform="translate(-349 -653)" clip-path="url(#clip-path)">
                    <g id="g_34040" data-name="그룹 34040" transform="translate(578.361 -32.829) rotate(45)">
                        <path id="g_40251" data-name="패스 40251" d="M338.979,657.872V641.677" transform="translate(0.74 -2.638)" fill="none" stroke="#2bbfff" stroke-width="1.5"/>
                        <path id="g_40252" data-name="패스 40252" d="M331.865,646.477l7.437-7.437,7.437,7.437" transform="translate(0.418)" fill="none" stroke="#2bbfff" stroke-width="1.5"/>
                    </g>
                </g>
                </svg>
            </button>
        </div>
        <ul class="row row-cols-1 row-cols-md-3 sec2_iconwrap" >
            <li class="mx-auto text-center" data-aos="fade-up" data-aos-anchor-placement="bottom-bottom"  data-aos-duration="1300">
                <img src="${CDN_HTTP}/images/ico_step1.png" alt="회원가입" class="mb-5"/>
                <p class="fs_16 fw_800 montserrat fc_ff9e mt-5">STEP 01</p>
                <P class="fs_30 fw_700 mt-5">회원가입</P>
            </li>
            <li class="mx-auto text-center" data-aos="fade-up" data-aos-anchor-placement="bottom-bottom"  data-aos-duration="1300">
                <img src="${CDN_HTTP}/images/ico_step2.png" alt="서류 제출" class="mb-5"/>
                <p class="fs_16 fw_800 montserrat fc_2bbf mt-5">STEP 02</p>
                <P class="fs_30 fw_700 mt-5">서류 제출</P>
            </li>
            <li class="mx-auto text-center" data-aos="fade-up" data-aos-anchor-placement="bottom-bottom"  data-aos-duration="1300">
                <img src="${CDN_HTTP}/images/ico_step3.png" alt="서비스지 제공" class="mb-5"/>
                <p class="fs_16 fw_800 montserrat fc_ff9e mt-5">STEP 03</p>
                <P class="fs_30 fw_700 mt-5">서비스지 제공</P>
            </li>
        </ul>
        <div class="sec2_bg" ></div>
    </div>
    <div class="container-fluid sec3 px-0">
        
        <img src="${CDN_HTTP}/images/main_sec3.png" alt="온코" data-aos="fade-up" data-aos-anchor-placement="bottom-bottom"  data-aos-duration="1300"/>
        <!-- <div class="main_text_wrap">
            <p class="deco_txt montserrat" data-aos="fade-up"  data-aos-anchor-placement="top-bottom" data-aos-duration="1300">MEMBERS</p>
            <P class="fs_50 fw_700 main_tit" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1500">온코마스터 구성원</P>
            <p class="fs_21 fw_300 sub_tit"data-aos="fade-up"   data-aos-anchor-placement="top-bottom" data-aos-duration="1800">온코마스터의 구성원들을 소개합니다.</p>
            <button type="button" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="2000" class="btn btn-outline-primary btn-md d-flex justify-content-between mx-auto align-items-center" onclick="location.href='/main/companyTeam'">구성원 더보기 <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24" height="24" viewBox="0 0 24 24">
                <defs>
                    <clipPath id="clip-path">
                    <rect id="사각형_8155" data-name="사각형 8155" width="24" height="24" transform="translate(349 653)" fill="none" stroke="#707070" stroke-width="1"/>
                    </clipPath>
                </defs>
                <g id="ico_btn_arrow_b" transform="translate(-349 -653)" clip-path="url(#clip-path)">
                    <g id="g_34040" data-name="그룹 34040" transform="translate(578.361 -32.829) rotate(45)">
                        <path id="g_40251" data-name="패스 40251" d="M338.979,657.872V641.677" transform="translate(0.74 -2.638)" fill="none" stroke="#2bbfff" stroke-width="1.5"/>
                        <path id="g_40252" data-name="패스 40252" d="M331.865,646.477l7.437-7.437,7.437,7.437" transform="translate(0.418)" fill="none" stroke="#2bbfff" stroke-width="1.5"/>
                    </g>
                </g>
                </svg>
            </button>
        </div>
        <div class="position-relative sec3_web">
            <div class="sec3_com sec3_left"  data-aos="fade-up" data-aos-duration="1300">
                <img src="${CDN_HTTP}/images/pro_img1.png" alt="장우영 대표" />
                <div class="txt" data-aos="fade-up" data-aos-duration="1800">
                    <p class="fw_700 fs_32">장우영 <span class="fw_300 fs_20">대표 CEO</span></p>
                    <p class="text-right mt-3 line_h1_4 fw_300 fs_19">온코마스터는 암 환자를 위한<br/>
                    "정밀 의료 서비스"를 <br/>
제공합니다.</p>
                </div>
            </div>
            <div class="sec3_com sec3_right"  data-aos="fade-up" data-aos-duration="1000">
                <img src="${CDN_HTTP}/images/pro_img2.png" alt="최윤지 이사" />
                <div class="txt" data-aos="fade-up" data-aos-duration="1800">
                    <p class="fw_700 fs_32">최윤지 <span class="fw_300 fs_20">이사 CMO</span></p>
                    <p class="text-left mt-3 line_h1_4 fw_300 fs_19">빅데이터와 AI를 활용해<br/>
암 환자의 치료 효과 예측이 가능한 <br/>
‘메디컬 트윈 시스템’을 구축하는<br/>
것을 목표로 하고 있습니다.</p>
                </div>
            </div>
        </div> -->
        <!-- 모바일 -->
        <!-- Swiper -->
        <div class="swiper sec3_slide" data-aos="fade-up"  data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
            <div class="swiper-wrapper">
            <div class="swiper-slide sec3_slide1_wrap">
                <div class="sec3_slide1 text-center">
                    <img src="${CDN_HTTP}/images/pro_img1.png" alt="장우영 대표"/>
                    <div class="txt mt-5">
                        <p class="fw_700 fs_32">장우영 <span class="fw_300 fs_20">대표 CEO</span></p>
                        <p class="text-center mt-3 line_h1_4 fw_300 fs_19">온코마스터는 암 환자를 위한<br/>
                        "정밀 의료 서비스"를 <br/>
    제공합니다.</p>
                    </div>

                </div>
            </div>
            <div class="swiper-slide ">
                <div class="sec3_slide2 text-center">
                    <img src="${CDN_HTTP}/images/pro_img2.png" alt="최윤지 이사"/>
                    <div class="txt mt-5">
                        <p class="fw_700 fs_32">최윤지 <span class="fw_300 fs_20">이사 CMO</span></p>
                        <p class="text-center mt-3 line_h1_4 fw_300 fs_19">빅데이터와 AI를 활용해<br/>
    암 환자의 치료 효과 예측이 가능한 <br/>
    ‘메디컬 트윈 시스템’을 구축하는<br/>
    것을 목표로 하고 있습니다.</p>
                    </div>
                </div>
           
            </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>

    </div>
</div>
<script>
    var swiper = new Swiper('.swiper-video-container', {
        effect: 'fade',
        spaceBetween: 0,
        centeredSlides: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        breakpoints: {
          280: {
            slidesPerView: 1,
            spaceBetween: 0,
          },
        },
        });

        /* sec3 */
        var swiper = new Swiper(".sec3_slide", {
        cssMode: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        pagination: {
            el: ".swiper-pagination",
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        mousewheel: true,
        keyboard: true,
        });

        // AOS 애니메이션 로드
        AOS.init();

</script>
<%@ include file="inc/tail.jsp"%>