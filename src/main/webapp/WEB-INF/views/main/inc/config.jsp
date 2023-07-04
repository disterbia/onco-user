<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="req" value="${pageContext.request}" />
<c:set var="url">${req.requestURL}</c:set>
<c:set var="uri" value="${req.requestURI}" />
<c:set var="baseURL" value="${fn:substring(url, 0, fn:length(url) - fn:length(uri))}${req.contextPath}" />
<c:set var="path" value="${requestScope['javax.servlet.forward.servlet_path']}" /> 
<c:set var="pg" value="${param.pg}" />
<c:if test="${empty pg}"><c:set var="pg" value="1"/></c:if>
<c:set var="row" value="${param.row}" />
<c:if test="${empty row}"><c:set var="row" value="10"/></c:if>
<c:set var="startIndex" value="1" />
<c:if test="${pg > 1}"><c:set var="startIndex" value="${(row * (pg - 1)) + 1}" /></c:if>

<c:set var="APP_AUTHOR" value="온코마스터"/>
<c:set var="APP_TITLE" value="온코마스터"/>
<c:set var="CDN_HTTP" value="/resources/main"/>
<c:set var="KEYWORDS" value="온코마스터"/>
<c:set var="DESCRIPTION" value="온코마스터"/>
<c:set var="VERSION" value="1"/>


<%


HashMap<Integer, String> arr_mt_level = new HashMap<Integer, String>();
arr_mt_level.put(1, "탈퇴");
arr_mt_level.put(2, "회원");
arr_mt_level.put(5, "업체");
arr_mt_level.put(9, "관리자");
request.setAttribute("arr_mt_level", arr_mt_level);



%>
