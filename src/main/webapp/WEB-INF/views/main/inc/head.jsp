<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta name="Generator" content="온코마스터">
	<meta name="Author" content="온코마스터">
	<meta name="Keywords" content="온코마스터">
	<meta name="Description" content="온코마스터">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<meta name="apple-mobile-web-app-title" content="온코마스터">
	<meta content="telephone=no" name="format-detection">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta property="og:title" content="온코마스터">
	<meta property="og:description" content="온코마스터">
	<meta property="og:image" content="${CDN_HTTP}/images/og-image.png">
	<link rel="apple-touch-icon" sizes="180x180" href="${CDN_HTTP}/images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="${CDN_HTTP}/images/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="${CDN_HTTP}/images/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="${CDN_HTTP}/images/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="${CDN_HTTP}/images/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="${CDN_HTTP}/images/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="${CDN_HTTP}/images/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="${CDN_HTTP}/images/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="${CDN_HTTP}/images/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="${CDN_HTTP}/images/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="${CDN_HTTP}/images/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="96x96" href="${CDN_HTTP}/images/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="32x32" href="${CDN_HTTP}/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="${CDN_HTTP}/images/favicon-16x16.png">
	<link rel="manifest" href="">
	<link rel="mask-icon" href="" color="#ffffff">
	<meta name="msapplication-TileColor" content="">
	<meta name="theme-color" content="">
	<title>온코마스터</title>
    <!--  CSRF -->
    <meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
    <meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
    <meta id="_csrf_parameter" name="_csrf_parameter" content="${_csrf.parameterName}"/>
<!-- 제이쿼리 -->
<script src="${CDN_HTTP}/js/jquery.min.js"></script>

<!--부트스트랩-->
<!-- 부트스트랩 커스텀 -->
<link rel="stylesheet" href="${CDN_HTTP}/css/boot_custom.css">
<script src="${CDN_HTTP}/js/bootstrap.bundle.min.js"></script>

<!-- 로티 -->
<script src="${CDN_HTTP}/js/lottie.min.js"></script>
<script src="${CDN_HTTP}/js/lottie-player.js"></script>

<!-- xe아이콘 -->
<link href="${CDN_HTTP}/css/xeicon.min.css" rel="stylesheet">

<!-- 리믹스 아이콘 -->
<link href="${CDN_HTTP}/css/remixicon.css" rel="stylesheet">

<!-- ie css 변수적용 -->
<script src="${CDN_HTTP}/js/ie11CustomProperties.min.js"></script>

<!-- 폰트-->
<link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

<!-- JS -->
<script src="${CDN_HTTP}/js/custom.js" defer></script>

<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="${CDN_HTTP}/css/swiper-bundle.min.css" />
<script src="${CDN_HTTP}/js/swiper-bundle.min.js"></script>


<!-- aos -->
<link rel="stylesheet" href="${CDN_HTTP}/css/aos.css" />
<script src="${CDN_HTTP}/js/aos.js"></script>


<!-- CSS -->
<link rel="stylesheet" href="${CDN_HTTP}/css/custom.css"><!-- UI 커스텀 -->
<link rel="stylesheet" href="${CDN_HTTP}/css/common.css"><!-- 헤더/푸터 관련 CSS -->
<link rel="stylesheet" href="${CDN_HTTP}/css/design.css"><!-- 디자인 변경되는 부분 -->
<link rel="stylesheet" href="${CDN_HTTP}/css/design_ls.css"><!-- 이슬디자인css -->
    

	<!-- Custom js -->
	<script type="text/javascript" src="${CDN_HTTP}/js/logic.js"></script>
	<!-- Loading -->
	<link rel="stylesheet" href="${CDN_HTTP}/css/loading.css"> 
	<!-- Logic -->
    <script src="${CDN_HTTP}/js/logic.js"></script>
	<!-- Modal -->
	<script src="${CDN_HTTP}/js/modal.js"></script>
	
	<script>
	var CDN_HTTP = '<c:out value="${CDN_HTTP}"/>';
	</script>
</head>

<body>
	<%@ include file="head_style01.jsp"%>

	 <div class="position-fixed d-none w-100 page_indicator">
  <div class="spinner-border text-primary" role="status">
    <span class="sr-only">Loading...</span>
  </div>
</div>

<div class="modal fade" id="modal_alert" tabindex="-1" >
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-dialog-sm">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close btn_close" data-dismiss="modal" aria-label="Close">
                <img src="${CDN_HTTP}/images/ic_x.png" alt="닫기">
            </button>
        </div>
        <div class="modal-body" id="modal_alert_body">
            <p></p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal" id="modal_alert_btn">확인</button>
        </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal_reload" tabindex="-1" >
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-dialog-sm">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close btn_close" data-dismiss="modal" aria-label="Close">
                <img src="${CDN_HTTP}/images/ic_x.png" alt="닫기">
            </button>
        </div>
        <div class="modal-body" id="modal_reload_body">
            <p></p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal" id="modal_reload_btn">확인</button>
        </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal_go" tabindex="-1" >
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-dialog-sm">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close btn_close" data-dismiss="modal" aria-label="Close">
                <img src="${CDN_HTTP}/images/ic_x.png" alt="닫기">
            </button>
        </div>
        <div class="modal-body" id="modal_go_body">
            <p></p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal" id="modal_go_btn">확인</button>
        </div>
        </div>
    </div>
</div>


<div class="modal fade" id="modal_replace" tabindex="-1" >
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-dialog-sm">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close btn_close" data-dismiss="modal" aria-label="Close">
                <img src="${CDN_HTTP}/images/ic_x.png" alt="닫기">
            </button>
        </div>
        <div class="modal-body" id="modal_replace_body">
            <p></p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal" id="modal_replace_btn">확인</button>
        </div>
        </div>
    </div>
</div>


<div class="modal fade" id="modal_confirm" tabindex="-1" >
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-dialog-sm">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close btn_close" data-dismiss="modal" aria-label="Close">
                <img src="${CDN_HTTP}/images/ic_x.png" alt="닫기">
            </button>
        </div>
        <div class="modal-body" id="modal_confirm_body">
            <p></p>
        </div>
        <div class="modal-footer">
        	<button type="button" class="btn btn-light mr-3" data-dismiss="modal" id="modal_confirm_cancel_btn">취소</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal" id="modal_confirm_btn">확인</button>
        </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal_confirm2" tabindex="-1" >
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-dialog-sm">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close btn_close" data-dismiss="modal" aria-label="Close">
                <img src="${CDN_HTTP}/images/ic_x.png" alt="닫기">
            </button>
        </div>
        <div class="modal-body" id="modal_confirm_body2">
            <p></p>
        </div>
        <div class="modal-footer">
        	<button type="button" class="btn btn-light mr-3" data-dismiss="modal" id="modal_confirm_cancel_btn2">취소</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal" id="modal_confirm_btn2">확인</button>
        </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal_confirm3" tabindex="-1" >
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-dialog-sm">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close btn_close" data-dismiss="modal" aria-label="Close">
                <img src="${CDN_HTTP}/images/ic_x.png" alt="닫기">
            </button>
        </div>
        <div class="modal-body" id="modal_confirm_body3">
            <p></p>
        </div>
        <div class="modal-footer">
        	<button type="button" class="btn btn-light mr-3" data-dismiss="modal" id="modal_confirm_cancel_btn3">취소</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal" id="modal_confirm_btn3">확인</button>
        </div>
        </div>
    </div>
</div>
	