<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="chk_menu" value="1"/>
<c:set var="chk_sub_menu" value="0"/>

<%@ include file="inc/config.jsp"%>
<%@ include file="inc/head.jsp"%>
<script src="https://www.youtube.com/iframe_api"></script>
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
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">최신 암 정보</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">유전자 변이</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">최신 암 정보</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">온코마스터에서 최신 암 정보를 확인해보세요.</p>
        </div>
    </div>
    <div class="container sub_container mb_50">
        <div class="border-border border-top mb_40">
            <div class="px-sm-3 px-0 border-bottom inq_cont_wr">
                <h3 class="tit_h3 line_h1_4 line_text line1_text">${content.ctTitle}</h3>
                <fmt:formatDate value="${content.ctWdate}" pattern="yyyy.MM.dd HH:mm" var="ctWdate" />
                <p class="mt-3 fs_15 text-light"><span>${ctWdate}</span></p>
            </div>
            <div class="px-sm-3 px-0 border-bottom border-c9c9c9 inq_cont_wr">
                
                <div class="detail_vd">
                    <div id="player"></div>
                    <!-- <iframe src="${content.ctUrl}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe> -->
                </div>
                <div class="wh_pre line_h1_8">${content.ctContent}</div>
            </div>
        </div>
        <div class="pt-sm-0 pt-3">
            <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center mx-auto mt-0" onclick="history.back();">목록으로 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="목록으로"></button>
        </div>
    </div>
</div>

<script>
    // This function creates an <iframe> (and YouTube player) after the API code downloads.
    function onYouTubeIframeAPIReady() {
        var videoUrl = "${content.ctUrl}";
        var videoId = null;

        if (videoUrl.indexOf('youtube.com') !== -1) {
            videoId = videoUrl.split('v=')[1];
            var ampersandPosition = videoId.indexOf('&');
            if(ampersandPosition != -1) {
                videoId = videoId.substring(0, ampersandPosition);
            }
        } else if (videoUrl.indexOf('youtu.be') !== -1) {
            videoId = videoUrl.split('youtu.be/')[1];
        }
        console.log(videoId);
        if (videoId) {
            new YT.Player('player', {
                // height: '390',
                // width: '640',
                videoId: videoId.trim(),
                events: {
                    'onReady': onPlayerReady,
                }
            });
        } else {
            console.error('Invalid YouTube URL');
        }
     
    }

    // This function will be called when the player is ready
    function onPlayerReady(event) {
        event.target.playVideo();
    }
</script>


<%@ include file="inc/tail.jsp"%>