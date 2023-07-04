<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="inc/config.jsp"%>
<%@ include file="inc/head.jsp"%>
<style>
    body{
        background-color: #fff;
    }
</style>
<div class="sub_pg">
    <div class="container">
        <div class="form_wrap">
            <div class="d-flex align-items-end justify-content-between form_tit_wrap">
                <h1>회원가입을 위해</br>
                약관을 확인해주세요.</h1>
                <img src="${CDN_HTTP}/images/ico_join.svg" alt="회원가입">
            </div>
            <form action="">
                <div class="border-border border-top mt-3 pt_40">
                    <div class="pb_40">
                        <div class="checks_wr">
                            <div class="checks">
                                <label>
                                    <input type="checkbox" name="chk0">
                                    <span class="ic_box"><i class="ri-check-line"></i></span>
                                    <div class="chk_p">
                                        <p class="fs_22 fw_700 ">모두 동의</p>
                                    </div>
                                </label>
                            </div>
                        </div>
                        <p class="fs_16 fw_500 mt-3 pl_32 line_h1_3">온코마스터 이용 약관, 개인정보 수집 및 이용, 추가정보 수신 동의(선택)에 모두 동의합니다.</p>
                    </div>
                    <div class="pb_30">
                        <div class="checks_wr">
                            <div class="checks">
                                <label>
                                    <input type="checkbox" name="chk1">
                                    <span class="ic_box"><i class="ri-check-line"></i></span>
                                    <div class="chk_p">
                                        <p class="fs_18 fw_700 line_h1_3">온코마스터 회원 가입 약관 동의 (필수)</p>
                                    </div>
                                </label>
                            </div>
                        </div>
                        <div class="mt_20">
                            <textarea class="form-control border_none bg-light fs_16 fw_400 px-5 py-5 line_h1_5 scrollb" rows="7">회원 가입을 환영합니다.
(주)온코마스터 회원으로 가입하시어 서비스(이하 ‘서비스’)를 신청해 주셔서 감사합니다. 본 약관은 ㈜온코마스터(이하 ‘당사’) 서비스 이용과 관련하여 당사의 서비스를 제공하는 당사와 이를 이용하는 당사 서비스 회원(이하 ‘회원’)과의 관계를 설명하며 회원의 서비스 이용 시 유익한 정보를 포함하고 있습니다. 당사의 서비스 회원으로 가입하실 경우 회원은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되시므로 잠시 시간을 내어 주의 깊게 살펴봐 주시기 바랍니다. 

(주)온코마스터 회원으로 가입하시어 서비스(이하 ‘서비스’)를 신청해 주셔서 감사합니다. 본 약관은 ㈜온코마스터(이하 ‘당사’) 서비스 이용과 관련하여 당사의 서비스를 제공하는 당사와 이를 이용하는 당사 서비스 회원(이하 ‘회원’)과의 관계를 설명하며 회원의 서비스 이용 시 유익한 정보를 포함하고 있습니다. 당사의 서비스 회원으로 가입하실 경우 회원은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되시므로 잠시 시간을 내어 주의 깊게 살펴봐 주시기 바랍니다.
                            </textarea>
                        </div>
                    </div>
                    <div class="pb_40  border-bottom">
                        <div class="checks_wr">
                            <div class="checks">
                                <label>
                                    <input type="checkbox" name="chk1">
                                    <span class="ic_box"><i class="ri-check-line"></i></span>
                                    <div class="chk_p">
                                        <p class="fs_18 fw_700 line_h1_3">개인정보 수집 및 이용 동의 (필수)</p>
                                    </div>
                                </label>
                            </div>
                        </div>
                        <div class="mt_20">
                            <div class="mt_20 px-5 py-5 border rounded inner_wrap">
                        <div>
                            <div class="checks_wr">
                                <div class="checks">
                                    <label>
                                        <input type="checkbox" name="chk1">
                                        <span class="ic_box"><i class="ri-check-line"></i></span>
                                        <div class="chk_p">
                                            <p class="fs_18 fw_700 line_h1_3">온코마스터 회원 가입 약관 동의 (필수)</p>
                                        </div>
                                    </label>
                                </div>
                            </div>
                            <textarea class="form-control border_none bg-light fs_16 fw_400 px-5 py-5 line_h1_5 mt-3 scrollb" rows="7">회원 가입을 환영합니다.
(주)온코마스터 회원으로 가입하시어 서비스(이하 ‘서비스’)를 신청해 주셔서 감사합니다. 본 약관은 ㈜온코마스터(이하 ‘당사’) 서비스 이용과 관련하여 당사의 서비스를 제공하는 당사와 이를 이용하는 당사 서비스 회원(이하 ‘회원’)과의 관계를 설명하며 회원의 서비스 이용 시 유익한 정보를 포함하고 있습니다. 당사의 서비스 회원으로 가입하실 경우 회원은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되시므로 잠시 시간을 내어 주의 깊게 살펴봐 주시기 바랍니다. 

(주)온코마스터 회원으로 가입하시어 서비스(이하 ‘서비스’)를 신청해 주셔서 감사합니다. 본 약관은 ㈜온코마스터(이하 ‘당사’) 서비스 이용과 관련하여 당사의 서비스를 제공하는 당사와 이를 이용하는 당사 서비스 회원(이하 ‘회원’)과의 관계를 설명하며 회원의 서비스 이용 시 유익한 정보를 포함하고 있습니다. 당사의 서비스 회원으로 가입하실 경우 회원은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되시므로 잠시 시간을 내어 주의 깊게 살펴봐 주시기 바랍니다.
                            </textarea>
                        </div>
                        <div class="mt_20">
                            <div class="checks_wr">
                                <div class="checks">
                                    <label>
                                        <input type="checkbox" name="chk1">
                                        <span class="ic_box"><i class="ri-check-line"></i></span>
                                        <div class="chk_p">
                                            <p class="fs_18 fw_700 line_h1_3">민감정보(건강정보) 수집 이용 동의 (필수)</p>
                                        </div>
                                    </label>
                                </div>
                            </div>
                            <textarea class="form-control border_none bg-light fs_16 fw_400 px-5 py-5 line_h1_5 mt-3 scrollb" rows="7">회원 가입을 환영합니다.
(주)온코마스터 회원으로 가입하시어 서비스(이하 ‘서비스’)를 신청해 주셔서 감사합니다. 본 약관은 ㈜온코마스터(이하 ‘당사’) 서비스 이용과 관련하여 당사의 서비스를 제공하는 당사와 이를 이용하는 당사 서비스 회원(이하 ‘회원’)과의 관계를 설명하며 회원의 서비스 이용 시 유익한 정보를 포함하고 있습니다. 당사의 서비스 회원으로 가입하실 경우 회원은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되시므로 잠시 시간을 내어 주의 깊게 살펴봐 주시기 바랍니다. 

(주)온코마스터 회원으로 가입하시어 서비스(이하 ‘서비스’)를 신청해 주셔서 감사합니다. 본 약관은 ㈜온코마스터(이하 ‘당사’) 서비스 이용과 관련하여 당사의 서비스를 제공하는 당사와 이를 이용하는 당사 서비스 회원(이하 ‘회원’)과의 관계를 설명하며 회원의 서비스 이용 시 유익한 정보를 포함하고 있습니다. 당사의 서비스 회원으로 가입하실 경우 회원은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되시므로 잠시 시간을 내어 주의 깊게 살펴봐 주시기 바랍니다.
                            </textarea>
                        </div>
                            </div>
                        </div>
                    </div>
                    <!-- button -->
                    <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto mt_40">다음으로 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="바로가기"/></button>
                </div>
            </form>
        </div>
    </div>
</div>


<%@ include file="inc/tail.jsp"%>

<script>
    // 모두동의 체크박스 클릭 시 모든 체크박스 체크/해제
    $(document).ready(function() {
        $("input[name='chk0']").click(function() {
            var isChecked = $(this).prop("checked");
            $("input[type='checkbox']").prop("checked", isChecked);
        });
    });

    // "다음으로" 버튼 클릭 시 모든 체크박스가 체크되었는지 확인
    $(document).ready(function() {
        $("button").click(function() {
            var isChecked = true;
            $("input[name='chk1']").each(function() {
                if (!$(this).prop("checked")) {
                    isChecked = false;
                    return false; // 체크되지 않은 체크박스를 찾았을 경우 반복문 종료
                }
            });

            if (isChecked) {
                window.location.href='/main/join';
            } else {
                open_modal_alert("체크되지 않은 체크박스가 있습니다.");
                return;
            }
        });
    });
</script>






