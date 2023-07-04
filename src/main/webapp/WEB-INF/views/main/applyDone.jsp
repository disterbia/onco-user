<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="inc/config.jsp"%>
<%@ include file="inc/head.jsp"%>
<style>
    body{
        background-color: #fff;
    }
    @media (max-width: 767.98px) { 
    .sub_pg{
        padding-top: 5rem;
        }
    }
</style>
<div class="sub_pg">
    <div class="container">
        <div class="form_wrap">
            <form action="">
                <div class="">
                    <div class="text-center">
                        <img src="${CDN_HTTP}/images/ico_check.svg" alt="서비스지 신청 완료"/>
                        <p class="fs_30 fw_700 mt-5 line_h1_4">서비스지 <span class="text_primary">신청 완료</span>되었습니다.</p>
                        <img src="${CDN_HTTP}/images/apply_done_img.svg" alt="서비스지 신청 완료" class="mt_36"/>
                    </div>

                    <div class="bg-deep-light rounded mx-auto mt_35 py_60 mb_40 px-3">
                        <p class="fs_22 fw_600 text-center line_h1_6">"필수 서류를 제출해주셔야 서비스지 제공이 가능합니다.</br>
                        서류 제출 완료 시점부터 발송까지 1달 정도 소요됩니다."</p>
                        <div class="mt_40 mx-auto text-center">
                            <p class="fs_18 fw_600 line_h1_3">서비스 신청 취소</p>
                            <p class="fs_18 fw_300 line_h1_3 mt-3">[고객센터] > [1:1 문의]를 통해 남겨주세요.</p>
                        </div>
                        <div class="mt_40 mx-auto text-center">
                            <p class="fs_18 fw_600 line_h1_3">이메일 서류 제출처</p>
                            <p class="fs_18 fw_300 line_h1_3 mt-3"><a href="mailto:service@oncomaster.co.kr">service@oncomaster.co.kr</a></p>
                        </div>
                    </div>
                    <!-- button -->
                    <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto" onclick="location.href='/main/applyList'">내 신청 확인하기 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="로그인하기"/></button>
                    <!-- 메인으로 -->
                    <p class="text-center mt-5">
                        <a href="/main/index" class=" fs_18 mt_26 fw_400 text-light text_unline text-center">메인으로</a>
                    </p>
                </div>
            </form>
        </div>
    </div>
</div>


<%@ include file="inc/tail.jsp"%>