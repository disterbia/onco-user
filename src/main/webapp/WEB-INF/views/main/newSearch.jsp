<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="chk_menu" value="1"/>
<c:set var="chk_sub_menu" value="0"/>
<c:set var="get_txt" value="?search_filter=${param.search_filter}&search_value=${param.search_value}&pg="/>
<c:set var="queryString" value="${pageContext.request.queryString}" />
<%@ include file="inc/config.jsp"%>
<%@ include file="inc/head.jsp"%>
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
                </ul>
            </div>
            <p class="tit_h1 mt_50">최신 암 정보</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">온코마스터에서 최신 암 정보를 확인해보세요.</p>
        </div>
    </div>
    <div class="container sub_container mb_50">
        <div class="border rounded new_search_box">
            <h3 class="tit_h3 fw_700">검색</h3>
            <div class="search_wrap">
                <div class="ip_wr mt-5">
                    <div class="ip_tit d-flex align-items-center justify-content-between">
                        <h5 class="fw_600">암종</h5>
                    </div>
                    <select class="form-control custom-select" id="search_filter">
                        <option selected value="0" <c:if test="${empty param.search_filter}">selected</c:if>>전체</option>
                        <c:forEach var="diagnosis" items="${diagnoisList}">
                            <option value="${diagnosis.idx}" <c:if test="${param.search_filter eq diagnosis.idx}">selected</c:if>>${diagnosis.dtName}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="ip_wr mt-5">
                    <div class="ip_tit d-flex align-items-center justify-content-between">
                        <h5 class="fw_600">유전자 변이</h5>
                    </div>
                    <select class="form-control custom-select" id="search_filter2">
                        <option selected value="0" <c:if test="${empty param.search_filter2}">selected</c:if>>전체</option>
                        <c:forEach var="gene" items="${geneList}">
                            <option value="${gene.idx}" <c:if test="${param.search_filter2 eq gene.idx}">selected</c:if>>${gene.gtName}</option>
                        </c:forEach>
     
                    </select>
                </div>
                <div class="ip_wr mt-5">
                    <div class="ip_tit">
                        <h5 class="fw_600">정보유형</h5>
                    </div>
                    <div class="checks_wr">
                        <div class="checks mb-0">
                            <label class="d-inline-flex">
                                <input type="checkbox" name="chk1" value="1" id="search_type" <c:if test="${param.search_type eq '1'}">checked</c:if>>
                                <span class="ic_box"><i class="ri-check-line"></i></span>
                                <div class="chk_p">
                                    <p>약제정보</p>
                                </div>
                            </label>
                        </div>
                        <div class="checks mb-0 mr-0">
                            <label class="d-inline-flex">
                                <input type="checkbox" name="chk1" value="1" id="search_type2" <c:if test="${param.search_type2 eq '1'}">checked</c:if>>
                                <span class="ic_box"><i class="ri-check-line"></i></span>
                                <div class="chk_p">
                                    <p>임상시험</p>
                                </div>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="ip_wr mt-5">
                    <div class="ip_tit">
                        <h5 class="fw_600">키워드 검색</h5>
                    </div>
                    <input type="search" class="form-control" placeholder="검색를 입력해주세요" value="${param.search_value}" id="search_value" onKeyPress="if( event.keyCode==13 ){content_search();}">
                </div>
                <div class="align-self-end d-flex align-items-center justify-content-center mt-5"> 
                    <button type="button" class="btn text-primary btn-sm px-0 mt-0 mr_20 w-auto btn_reset fs_15"  onclick="location.href='${path}'"><img src="${CDN_HTTP}/images/ico_reset.svg" alt="초기화" class="mr_08">초기화</button>
                    <button type="button" class="btn btn-primary btn-sm px-5 mt-0" onclick="content_search()">검색</button>
                </div>
            </div>
        </div>
        <c:if test='${queryString != null}'>
            <div class="search_list">
                <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
                    <c:forEach var="content" items="${contents}">
                        <div class="col">
                            <a href="/main/newCont/${content.idx}" class="li_wr">
                                <div class="rect rect4">
                                    <img src="${content.ctThumbnail}">
                                </div>
                                <div class="li_txt">
                                    <p class="li_label">${content.dtName}</p>
                                    <p class="li_name line2_text">${content.ctTitle}</p>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <%@ include file="./inc/paging.jsp" %>
        </c:if>
        <c:if test='${queryString == null}'>
            <div class="search_list">
                <div class="li_tit d-flex align-items-center justify-content-between">
                    <p class="tit_name">최신 정보</p>
                    <a href="/main/newSearch?search_value=" class="fs_14">전체보기 <img src="${CDN_HTTP}/images/ico_arrow_right.svg" class="ml-2 mb-1"></a>
                </div>
                <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
                    <c:forEach var="cont" items="${newList}">
                    <div class="col">
                        <a href="/main/newCont/${cont.idx}" class="li_wr">
                            <div class="rect rect4">
                                <img src="/mng/download/${cont.ctThumbnail}">
                            </div>
                            <div class="li_txt">
                                <p class="li_label">${cont.dtName}</p>
                                <p class="li_name line2_text">${cont.ctTitle}</p>
                            </div>
                        </a>
                    </div>
                    </c:forEach>
                </div>
            </div> 
            <div class="search_list">
                <div class="li_tit d-flex align-items-center justify-content-between">
                    <p class="tit_name">유전자 변이</p>
                    <a href="/main/newSearch?search_filter2=0" class="fs_14">전체보기 <img src="${CDN_HTTP}/images/ico_arrow_right.svg" class="ml-2 mb-1"></a>
                </div>
                <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
    
                    <c:forEach var="cont" items="${geneCatList}">
                        <div class="col">
                            <a href="/main/newCont/${cont.idx}" class="li_wr">
                                <div class="rect rect4">
                                    <img src="${cont.ctThumbnail}">
                                </div>
                                <div class="li_txt">
                                    <p class="li_label">${cont.dtName}</p>
                                    <p class="li_name line2_text">${cont.ctTitle}</p>
                                </div>
                            </a>
                        </div>
                        </c:forEach>
                </div>
            </div>
            <div class="search_list">
                <div class="li_tit d-flex align-items-center justify-content-between">
                    <p class="tit_name">약제정보</p>
                    <a href="/main/newSearch?search_type=1" class="fs_14">전체보기 <img src="${CDN_HTTP}/images/ico_arrow_right.svg" class="ml-2 mb-1"></a>
                </div>
                <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
                    <c:forEach var="cont" items="${category1List}">
                        <div class="col">
                            <a href="/main/newCont/${cont.idx}" class="li_wr">
                                <div class="rect rect4">
                                    <img src="${cont.ctThumbnail}">
                                </div>
                                <div class="li_txt">
                                    <p class="li_label">${cont.dtName}</p>
                                    <p class="li_name line2_text">${cont.ctTitle}</p>
                                </div>
                            </a>
                        </div>
                        </c:forEach>
                
                </div>
            </div>
            <div class="search_list mb-0">
                <div class="li_tit d-flex align-items-center justify-content-between">
                    <p class="tit_name">임상시험</p>
                    <a href="/main/newSearch?search_type2=1" class="fs_14">전체보기 <img src="${CDN_HTTP}/images/ico_arrow_right.svg" class="ml-2 mb-1"></a>
                </div>
                <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
                    <c:forEach var="cont" items="${category2List}">
                        <div class="col">
                            <a href="/main/newCont/${cont.idx}" class="li_wr">
                                <div class="rect rect4">
                                    <img src="${cont.ctThumbnail}">
                                </div>
                                <div class="li_txt">
                                    <p class="li_label">${cont.dtName}</p>
                                    <p class="li_name line2_text">${cont.ctTitle}</p>
                                </div>
                            </a>
                        </div>
                        </c:forEach>
                </div>
            </div>
        </c:if>

    </div>
</div>

<%@ include file="inc/tail.jsp"%>

<script>
	//해당 페이지 검색옵션
	haveSearchValue = true,  haveSearchFilter = true, haveSearchFilter2 = true,  haveSearchType = true, haveSearchType2 = true;
	haveDatePicker2 = false, haveDatePicker = false;
	
	function content_search(){
		location.href = make_search_path(`${path}`);
	}
</script>