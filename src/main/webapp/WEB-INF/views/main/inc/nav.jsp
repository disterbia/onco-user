<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<nav class="nav_wr">
	<ul class="nav_ul">
		<li class="<c:choose><c:when test="${chk_menu eq '0'}">on</c:when><c:otherwise>off</c:otherwise></c:choose> nav_li">
			<a href="/main/medical01" class="nav_a">암 정밀의료 <i class="ri-arrow-down-s-line"></i></a>
            <ul class="nav_ul2">
				<li><a href="/main/medical01">암 정밀의료</a></li>
				<li><a href="/main/medical02">NGS검사란?</a></li>
				<li><a href="/main/medical03">표적치료제</a></li>
			</ul>
		</li>
		<li class="<c:choose><c:when test="${chk_menu eq '1'}">on</c:when><c:otherwise>off</c:otherwise></c:choose> nav_li">
			<a href="/main/newSearch" class="nav_a">최신 암정보</a>
		</li>
		<li class="<c:choose><c:when test="${chk_menu eq '2'}">on</c:when><c:otherwise>off</c:otherwise></c:choose> nav_li">
			<a href="/main/serviceInfo" class="nav_a">온코마스터 서비스<i class="ri-arrow-down-s-line"></i></a>
            <ul class="nav_ul2">
				<li><a href="/main/serviceInfo">서비스 소개</a></li>
				<li><a href="/main/serviceUse">신청 대상자</a></li>
				<li><a href="/main/serviceStart">서비스 신청</a></li>
			</ul>
		</li>
		<li class="<c:choose><c:when test="${chk_menu eq '3'}">on</c:when><c:otherwise>off</c:otherwise></c:choose> nav_li">
			<a href="/main/company" class="nav_a">온코마스터 소개<i class="ri-arrow-down-s-line"></i></a>
            <ul class="nav_ul2">
				<li><a href="/main/company">회사 소개</a></li>
				<li><a href="/main/companyTeam">구성원 소개</a></li>
				<li><a href="/main/companyVision">비전 및 목표</a></li>
			</ul>
		</li>
		<li class="<c:choose><c:when test="${chk_menu eq '4'}">on</c:when><c:otherwise>off</c:otherwise></c:choose> nav_li">
			<a href="/main/notice" class="nav_a">고객센터<i class="ri-arrow-down-s-line"></i></a>
            <ul class="nav_ul2">
				<li><a href="/main/notice">공지사항</a></li>
				<li><a href="/main/faq">고객상담</a></li>
			</ul>
		</li>
		<li class="<c:choose><c:when test="${chk_menu eq '5'}">on</c:when><c:otherwise>off</c:otherwise></c:choose> nav_li">
			<a href="/main/mypage" class="nav_a">마이페이지<i class="ri-arrow-down-s-line"></i></a>
            <ul class="nav_ul2">
				<li><a href="/main/mypage">내 정보</a></li>
				<li><a href="/main/applyList">서비스 신청 조회</a></li>
			</ul>
		</li>
	</ul>
</nav>