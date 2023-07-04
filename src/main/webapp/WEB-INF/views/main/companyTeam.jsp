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
<div class="sub_pg pb-0"  >
    <div class="sub_top container-fluid">
        <div class="container">
            <div class="breadcrumbs">
                <ul class="d-flex pt_40">
                    <li class="mr_14"><a href="/main/index" class="fs_14 fw_400 text-light2"><img src="${CDN_HTTP}/images/ico_bread_home.svg" alt="홈" class="mr-2"> 홈</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="/main/company" class="fs_14 fw_400 text-light2 cursor_text">온코마스터 소개</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">구성원 소개</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">구성원 소개</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">온코마스터를 소개합니다.</p>
        </div>
    </div>
    <div class=" sub_container   pb-0">
        <div class="text-center" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
            <p class="mb-5"><img src="${CDN_HTTP}/images/logo_deco3.png" alt="데코이미지"></p>
            <p class="tit_h1 fw_600 mb-3 mb-md-5">온코마스터 구성원</p>
            <p class="tit_h4 line_h1_4 mb-5">온코마스터의 구성원들을 소개합니다.</p>
        </div>

        <div class="ceo_wrap_bg"  data-aos="fade-down" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
            <div class="container ceo_wrap">
                <div class="text-center ceo_box">
                    <p><img src="${CDN_HTTP}/images/team5.png" alt="데코이미지" width="415px"></p>
                    <dl >
                        <dt class=""><b class="mr-4">장우영</b>대표 CEO</dt>
                        <dd class="line_h1_4 fw_200">고려대학교 안암병원 정형외과 부교수<br>
                            서울대학교병원 정형외과학 임상강사<br>
                            대한 근골격 종양학회 정회원<br>
                            고려대학교 정형외과학<br>
                            서울대학교 의과대학
                        </dd>
                    </dl>

                </div>
                <div class="text-center ceo_box" >
                    <p><img src="${CDN_HTTP}/images/team11.png" alt="데코이미지" width="415px"></p>
                    <dl>
                        <dt class=""><b class="mr-4">최윤지</b>이사 CMO</dt>
                        <dd class="line_h1_4 fw_200">고려대학교 안암병원 종양혈액내과 부교수<br>
                            대한두경부종양학회 정회원<br>
                            서울아산병원 종양내과 임상강사<br>
                            미국 암 연구학회 정회원<br>
                            고려대학교 의과대학
                        </dd>
                    </dl>
                </div>
            </div>
        </div>


        <!-- 구성원 시작-->
        <div class="bg-deep-light team_wrap">
            <div class="container ">
                <div class="text-center" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
                    <p class="mb-5"><img src="${CDN_HTTP}/images/logo_deco3.png" alt="데코이미지"></p>
                    <p class="tit_h1 fw_600 mb-3 mb-md-5 line_h1_2">온코마스터와 함께 해주시는 분들</p>
                    <p class="tit_h4 line_h1_4 mb-5">온코마스터의 의료진 자문위원들을 소개합니다. </p>
                </div>

                <!-- Swiper -->
                <div class="position-relative" data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-duration="1300">
                    <div class="swiper-button-next"><i class="xi-angle-right-min xi-x"></i></div>
                    <div class="swiper-button-prev"><i class="xi-angle-left-min xi-x"></i></div>
                    <div class="swiper mySwiper_team">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <p class="team_img_w"><img src="${CDN_HTTP}/images/team4.png" alt="데코이미지" width=" "></p>
                                <p class="team_wrap_tit text-center">김주원 자문의원</p>
                                <p class="text-center line_h1_4 fw_200">고려대학교 안암병원 종양내과 임상조교수대우<br>
                                    고려대학교 의과대학</p>
                            </div>
                            <div class="swiper-slide">
                                <p class="team_img_w"><img src="${CDN_HTTP}/images/team6.png" alt="데코이미지" width=" "></p>
                                <p class="team_wrap_tit text-center">김좌훈 자문의원</p>
                                <p class="text-center line_h1_4 fw_200">고려대학교 안암병원 종양혈액내과 임상조교수<br>
                                    경희대학교 의과대학</p>
                            </div>
                            <div class="swiper-slide">
                                <p class="team_img_w"><img src="${CDN_HTTP}/images/team9.png" alt="데코이미지" width=" "></p>
                                <p class="team_wrap_tit text-center">이지원 자문의원</p>
                                <p class="text-center line_h1_4 fw_200">고려대학교 안암병원 종양내과 임상강사<br>
                                    고려대학교 의과대학</p>
                            </div>
                            <div class="swiper-slide">
                                <p class="team_img_w"><img src="${CDN_HTTP}/images/team10.png" alt="데코이미지" width=" "></p>
                                <p class="team_wrap_tit text-center">임아름 자문의원</p>
                                <p class="text-center line_h1_4 fw_200">고려대학교 안암병원 혈액종양내과 임상강사<br>
                                    이화여자대학교 의학전문대학원</p>
                            </div>
                            <div class="swiper-slide">
                                <p class="team_img_w"><img src="${CDN_HTTP}/images/team8.png" alt="데코이미지" width=" "></p>
                                <p class="team_wrap_tit text-center">이수현 자문의원</p>
                                <p class="text-center line_h1_4 fw_200">고려대학교 안암병원 종양혈액내과 교수<br>
                                    연세대학교 의과대학</p>
                            </div>
                            <div class="swiper-slide">
                                <p class="team_img_w"><img src="${CDN_HTTP}/images/team7.png" alt="데코이미지" width=" "></p>
                                <p class="team_wrap_tit text-center">박경화 자문의원</p>
                                <p class="text-center line_h1_4 fw_200">고려대학교 안암병원 종양혈액내과 교수<br>
                                    고려대학교 의과대학</p>
                            </div>
                            <div class="swiper-slide">
                                <p class="team_img_w"><img src="${CDN_HTTP}/images/team3.png" alt="데코이미지" width=" "></p>
                                <p class="team_wrap_tit text-center">이경민 자문의원</p>
                                <p class="text-center line_h1_4 fw_200">고려대학교 구로병원 혈액종양내과 임상조교수대우<br>
                                    고려대학교 의과대학</p>
                            </div>
                            <div class="swiper-slide">
                                <p class="team_img_w"><img src="${CDN_HTTP}/images/team2.png" alt="데코이미지" width=" "></p>
                                <p class="team_wrap_tit text-center">박인혜 자문의원</p>
                                <p class="text-center line_h1_4 fw_200">고려대학교 구로병원 종양내과 교수<br>
                                    연세대학교 의과대학</p>
                            </div>
                            <div class="swiper-slide">
                                <p class="team_img_w"><img src="${CDN_HTTP}/images/team1.png" alt="데코이미지" width=" "></p>
                                <p class="team_wrap_tit text-center">강은주 자문의원</p>
                                <p class="text-center line_h1_4 fw_200">고려대학교 구로병원 혈액종양내과 부교수<br>
                                    고려대학교 의과대학</p>
                            </div>
                        </div>
                    </div>
                </div>

                <script>
                    var swiper = new Swiper(".mySwiper_team", {
                        slidesPerView: 1,
                        breakpoints: {
                            '920': {
                                slidesPerView: 4, 
                            },
                            '480': {
                                slidesPerView: 2, 
                            },
                        },

                        navigation: {
                            nextEl: ".swiper-button-next",
                            prevEl: ".swiper-button-prev",
                        },

                    });
                </script>

            </div>


        </div>

    </div>

</div>


<%@ include file="inc/tail.jsp"%>