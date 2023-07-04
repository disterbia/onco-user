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
                <div class="border_2 rounded-xl py_40 join_done_wrap px-3">
                    <div class="text-center">
                        <img src="${CDN_HTTP}/images/ico_check.svg" alt="회원가입 완료">
                        <p class="fs_30 fw_700 mt_23">회원가입 완료</p>
                        <p class="fs_18 fw_400 mt-4 line_h1_3">회원가입이 완료되었습니다.</p>
                    </div>

                    <div class="join_info mx-auto">
                        <div class="px-3 text-center w-100">
                            <p class="fs_18 fw_600">아이디</p>
                            <div class="fs_18 fw_600 text-primary mt-3 line_h1_2">${mtId}</div>
                        </div>
                        <div class="px-3 text-center join_info_p2 w-100">
                            <p class="fs_18 fw_600">이름</p>
                            <p class="fs_18 fw_600 text-primary mt-3 ">${mtName}</p>
                        </div>
                    </div>
                    <!-- button -->
                    <button type="button" onclick="location.replace('/main/login')" class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto mt_40">로그인하기 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="로그인하기"/></button>
                    <!-- 메인으로 -->
                    <a href="/main/index" class="d-block w-100 fs_18 mt_26 fw_400 text-light text_unline text-center">메인으로</a>
                </div>
            </form>
        </div>
    </div>
</div>


<%@ include file="inc/tail.jsp"%>