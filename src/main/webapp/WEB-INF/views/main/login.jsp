<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="inc/config.jsp"%>
<%@ include file="inc/head.jsp"%>
<style>
    body{
        background-color: #fff;
    }
    .h_menu{
        display: none;
    }
</style>

<div class="wrap member_wrap">
    <div class="container-fluid px-0">
        <div class="row login_wrap no-gutters">
            <div class="col-12 col-xl-7 d-none d-xl-flex bg_login">
                <img src="${CDN_HTTP}/images/logo_white.png" alt="온코마스터 로고" class=" cursor" onclick="location.href='/main/index'">
            </div>
            <div class="col-12 col-xl-5 login_content_wrap">
                <div class="login_content">                    
                    <h2 class="h2">로그인</h2>
                    <p class="fs_16 text-light fw_400 mb-5">이용을 위해 로그인이 필요합니다.</p>

                    <div class="form-group">
                        <input type="text" name=mtId id="mtId" class="form-control form-control-lg" placeholder="아이디 입력" onKeyPress="if( event.keyCode==13 ){doLoginValid();}">                     
                    </div>
                    <div class="form-group">
                        <input type="password" name="mtPwd" id="mtPwd" class="form-control form-control-lg" placeholder="비밀번호 입력" autoComplete="off" onKeyPress="if( event.keyCode==13 ){doLoginValid();}">
                    	<small class="form-text text-danger d-none text_wrong_id_pw"><img class="mr-2" src="${CDN_HTTP}/images/ic_label_danger.png">로그인 정보가 일치하지 않습니다.</small>  
                    </div>
                    
<!--                     <button class="btn btn-lg btn-primary btn-block mt-5">로그인</button> -->
                    <div class="mt-3"><button class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" type="button"  onclick="doLoginValid();">로그인</button></div>
                    <a href="/main/joinStart" class="text-light text-center mt_20 fs_18 fw_400 text_unline d-block">회원가입</a>
                </div>
            </div>
        </div>
    </div>
</div>


<%@ include file="inc/tail.jsp"%>

<script>
    function doLoginValid(){
        if($("#mtId").val().trim() == '' || $("#mtPwd").val() == ''){
            open_modal_alert("아이디와 비밀번호를 모두 입력해주세요.");
            return;
        }
        doLogin();
    }
    
    async function doLogin(){
        try {
            let params = {
                mtId: $("#mtId").val(),
                mtPwd:  $("#mtPwd").val(),
            }
            //statusText "SyntaxError: Failed to execute 'setRequestHeader' on 'XMLHttpRequest': '' is not a valid HTTP header field name."
            let res = await awaitPost('/main/loginUpdate.do', params, false);   
            console.log(res);
            if(res.result == 'success'){
                location.replace('/main/index');
            }else if(res.result == 'fail'){
			$('.text_wrong_id_pw').html(`<img class="mr-2" src="\${CDN_HTTP}/images/ic_label_danger.png">로그인 정보가 일치하지 않습니다`);
			$('.text_wrong_id_pw').removeClass('d-none').addClass('d-block');
		}else{
			$('.text_wrong_id_pw').html(`<img class="mr-2" src="\${CDN_HTTP}/images/ic_label_danger.png">로그인 정보가 일치하지 않습니다`);
			$('.text_wrong_id_pw').removeClass('d-none').addClass('d-block');
		}
        } catch (error) {
            console.log(error);
            open_modal_reload();
        }
    }
    </script>