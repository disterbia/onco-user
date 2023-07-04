<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <%@ include file="inc/config.jsp" %>
                <%@ include file="inc/head.jsp" %>
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
                                        <li class="mr_14"><a href="/main/index" class="fs_14 fw_400 text-light2"><img
                                                    src="${CDN_HTTP}/images/ico_bread_home.svg" alt="홈" class="mr-2">
                                                홈</a></li>
                                        <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표">
                                        </li>
                                        <li class="mr_14"><a href="javascript:avoid(0)"
                                                class="fs_14 fw_400 text-light2 cursor_text">고객센터</a></li>
                                        <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표">
                                        </li>
                                        <li class="mr_14"><a href="javascript:avoid(0)"
                                                class="fs_14 fw_400 text-light2 cursor_text">고객상담</a></li>
                                    </ul>
                                </div>
                                <p class="tit_h1 mt_50">고객센터</p>
                                <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">온코마스터 서비스이용에
                                    관련된 문의사항을 해결해드립니다.</p>
                            </div>
                        </div>
                        <div class="container sub_container2 mb_50">
                            <p class="tit_h1 text-center mb-sm-5 mb_20">고객상담</p>
                            <div class="tab_nav_wrap none_scroll_bar">
                                <div class="tab_nav">
                                    <div class="tab_link">
                                        <a href="/main/faq" class="btn_tab btn">자주 묻는 질문</a>
                                    </div>
                                    <div class="tab_link">
                                        <a href="/main/queryNm" class="btn_tab btn">1:1 문의</a>
                                    </div>
                                    <div class="tab_link">
                                        <a href="/main/queryFindNm" class="btn_tab btn on">나의 문의내역</a>
                                    </div>
                                </div>
                            </div>
                            <div class="form_wrap pt-5 mt-5">
                                <form action="">
                                    <div class="join_done_wrap inq_wr">
                                        <div class="border-bottom border-border inq_wr_top">
                                            <h2 class="tit_h2">나의 문의내역 조회</h2>
                                            <p class="fw_500 mt-3 pb-1 text-light line_h1_2">비회원 문의시 등록했던 이름과 연락처를
                                                입력해주세요.</p>
                                        </div>
                                        <div class="border-bottom pb-5 inq_wr_body">
                                            <div class="ip_wr">
                                                <div class="ip_tit">
                                                    <h5 class="position-relative">이름</h5>
                                                </div>
                                                <input type="text" class="form-control" placeholder="이름" id="qtName">
                                            </div>
                                            <div class="ip_wr mt-5 mb-2 ip_invalid">
                                                <div class="ip_tit">
                                                    <h5 class="position-relative">연락처</h5>
                                                </div>
                                                <input type="text" class="form-control" placeholder="'-' 제외하고 숫자만 입력"
                                                    maxlength="13" id="qtHp">
                                                <!-- <div class="form-text ip_invalid"><i class="ri-error-warning-line"></i> '-' 제외하고 숫자만 입력해주세요!</div> -->
                                            </div>
                                        </div>
                                        <div class="pt_20">
                                            <button type="button"
                                                class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto mt-0"
                                                style="max-width: 34.2rem;" onclick="getQueryList();">나의 문의내역 조회하기 <img
                                                    src="${CDN_HTTP}/images/ico_btn_arrow.png"
                                                    alt="나의 문의내역 조회하기"></button>
                                            <!-- 등록내역이 없을 때 -->
                                            <!-- <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto mt-0" style="max-width: 34.2rem;" onclick="location.href='inquiry_nocont.php'">나의 문의내역 조회하기 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="나의 문의내역 조회하기"></button> -->
                                        </div>
                                    </div>
                                </form>

                                <!-- 등록내역 없음 -->
                                <!-- <div class="border_2 rounded-xl py_40 join_done_wrap text-center px-3">
                <h3 class="tit_h3 fs_24 fw_700">등록내역이 없습니다.</h3>
                <p class="fw_500 text-light mt-3">등록한 이름과 연락처를 다시 확인해주세요!</p>
                <div class="mt-5 pt-2">
                    <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto mt-0" onclick="location.href='#'">다시 조회하기 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="다시 조회하기"></button>
                </div>
            </div> -->
                                <!-- //등록내역 없음 -->
                            </div>
                        </div>
                    </div>

                    <%@ include file="inc/tail.jsp" %>

                        <script>
                            function getQueryList() {
                                let qtName = $("#qtName").val();
                                let qtHp = $("#qtHp").val();
                                let error_count = 0;

                                if (!validation_text(qtName)) {
                                    error_count++
                                }
                                if (!validation_text(qtHp) || qtHp.length != 13) {
                                    error_count++
                                }

                                if (error_count > 0) {
                                    return open_modal_alert("필수 입력사항을 정확히 입력해주세요.");
                                }

                                location.href = '/main/queryListNm/' + qtName + '/' + qtHp;
                            }

                            $(document).on('keyup', '#qtHp', function (e) {
                                $(this).val(validation_hypen(validation_number($(this).val())));
                            });
                            $(document).on('blur', '#qtHp', function (e) {
                                $(this).val(validation_hypen(validation_number($(this).val())));
                            });
                        </script>