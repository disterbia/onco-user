<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="chk_menu" value="5"/>
<c:set var="chk_sub_menu" value="1"/>
<c:set var="get_txt" value="?search_filter=${param.search_filter}&search_value=${param.search_value}&pg="/>
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
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">고객센터</a></li>
                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                    <li class="mr_14"><a href="javascript:avoid(0)" class="fs_14 fw_400 text-light2 cursor_text">고객상담</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">고객센터</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_600 mt-3">온코마스터 서비스이용에
                관련된 문의사항을 해결해드립니다.</p>
        </div>
    </div>
    <div class="container sub_container2 notice_wrap mb_50">
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
        <div class="d-flex flex-sm-row flex-column-reverse align-items-stretch justify-content-between mb-sm-4 mb-2 mt_58 list_total">
        <!-- 문의내역 없는 경우 list_total에 클래스 none 추가 -->
            <p class="fs_16 fw_500 line_h1_3 mt-sm-0 mt-2">총 <span class="fs_16 fw_600 text-primary">${fn:length(inquerys)}</span>의 글이 있습니다.</p>            
            <p class="fc_4D67 fs_15 fw_300 align-self-sm-center align-self-end d-flex align-items-center justify-content-end scroll_txt line_h1_3"><i class="xi-exchange fw_600 fs_18 pr-2"></i>스크롤해서 확인해주세요.</p>
        </div>
        <div class="table_scroll">
            <table class="notice_table w-100">
                    <c:choose>
                        <c:when test="${empty inquerys}">
                            <div class="inq_none">
                                <img src="${CDN_HTTP}/images/none_content.svg" alt="내용없음">
                                <p class="text-light fs_18 fw_500 wh_pre line_h1_5">문의내역이 없어요.
                                    문의내역을 등록해주세요!</p>
                        </c:when>
                        <c:otherwise>
                            <thead>
                                <tr>
                                    <th class="tg-t31z fs_16 fw_400 text-secondary num">번호</th>
                                    <th class="tg-t31z text-left pl_20 text-secondary">제목</th>
                                    <th class="tg-t31z text-secondary num">게시일</th>
                                    <th class="tg-t31z text-secondary num">답변</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:set var="counts" value="${page['counts']}"></c:set>
                            <c:forEach items="${inquerys}" var="inquery">
                                <tr>
                                    <td class="tg-wman fs_14 fw_400 num">${counts}</td>
                                    <td class="tg-wman text-left fs_16 fw_600 pl_20 line_h1_5"><a href="/main/queryContNm/${inquery.idx}">${inquery.qtTitle }</a></td>
                                    <fmt:formatDate value="${inquery.qtWdate}" pattern="yyyy.MM.dd HH:mm" var="qtWdate" />
                                    <td class="tg-wman fs_14 fw_400 num">${qtWdate }</td>
                                    <td class="tg-wman fs_14 fw_400 num">
                                        <c:choose>
                                            <c:when test="${inquery.qtLevel =='1' || inquery.qtLevel =='0'}">
                                                <div class="condt incomp">미답변</div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="condt comp">답변완료</div>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                </tr>
                            <c:set var="counts" value="${counts - 1}"/>
                            </c:forEach>
                        </tbody>
                        </c:otherwise>
                    </c:choose>        
               
            </table>
        </div>

        <%@ include file="inc/paging.jsp" %>
        
        <!-- 문의 내역 없을 경우 -->
        <!-- <div class="inq_none">
            <img src="${CDN_HTTP}/images/none_content.svg" alt="내용없음">
            <p class="text-light fs_18 fw_500 wh_pre line_h1_5">문의내역이 없어요.
                문의내역을 등록해주세요!</p>
        </div> -->
        <!-- // 문의 내역 없을 경우 -->
    </div>
</div>


<%@ include file="inc/tail.jsp"%>