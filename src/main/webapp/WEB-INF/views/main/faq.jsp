<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="chk_menu" value="4"/>
<c:set var="chk_sub_menu" value="0"/>
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
                    <li class="mr_14"><a href="/main/faq" class="fs_14 fw_400 text-light2">고객상담</a></li>
                </ul>
            </div>
            <p class="tit_h1 mt_50">고객센터</p>
            <p class="sub_top_tit info_line fs_18 line_h1_3 fw_400 mt-3">온코마스터 서비스이용에<br/>
            관련된 문의사항을 해결해드립니다.</p>
        </div>
    </div>
    <div class="container sub_container2 notice_wrap mb_50">
        <p class="tit_h1 text-center mb-sm-5 mb_20">고객상담</p>
            <div class="tab_nav_wrap none_scroll_bar mb_50 pb_30">
                <div class="tab_nav">
                    <div class="tab_link">
                        <a href="/main/faq" class="btn_tab btn on">자주 묻는 질문</a>
                    </div>
                    <div class="tab_link">
                        <c:if test="${not empty SPRING_SECURITY_CONTEXT}">
                            <a href="/main/inquery" class="btn_tab btn">1:1 문의</a>
                        </c:if>
                        
                        <c:if test="${empty SPRING_SECURITY_CONTEXT}">
                            <a href="/main/queryNm" class="btn_tab btn">1:1 문의</a>
                        </c:if>
                    </div>

                    <div class="tab_link">
                        <c:if test="${not empty SPRING_SECURITY_CONTEXT}">
                            <a href="/main/inqueryList" class="btn_tab btn">나의 문의내역</a>
                        </c:if>
                        <c:if test="${empty SPRING_SECURITY_CONTEXT}">
                            <a href="/main/queryFindNm" class="btn_tab btn">나의 문의내역</a>
                        </c:if>
                    </div>
                </div>
        </div>
        <div class="accordion acc_style_1 table_scroll" id="accordion_faq">
            <c:choose>
            <c:when test= "${empty faqs}">
            
                    <div class="text-center pt-5">
                        <img src="${CDN_HTTP}/images/none_content.svg" alt="내용없음"/>
                        <p class="text-light fs_18 fw_500">등록된 자주 묻는 질문이 없습니다.</p>
                    </div>
         
                    <!-- <div class="card">
                        <p class="fs_16 fw_600 text-light2 text-center py_120" colspan="3">등록된 공지사항이 없습니다.</p>
                    </div> -->
            </c:when>
            <c:otherwise>
                <c:set var="counts" value="${page['counts']}"></c:set>
                <c:forEach items="${faqs}" var="faq" varStatus="loop">

                    <div class="card">
                        <div class="card-header">
                            <button class="btn btn-block text-left accordion_tit" type="button" data-toggle="collapse" data-target="#collapse${loop.index+1}" aria-expanded="false" aria-controls="collapse${loop.index+1}">   
                                <div class="d-flex align-items-center line_h1_3">
                                    <strong class="faq_img"><img src="${CDN_HTTP}/images/faq_q.png"></strong>
                                    <p class="faq_tit">${faq.ftTitle}</p>                                
                                </div>
                                <div class="btn_accordion">
                                </div>
                            </button>
                        </div>
                        <div id="collapse${loop.index+1}" class="collapse" data-parent="#accordion_faq">
                            <div class="card-body">
                                <div class="d-flex">
                                    <img src="${CDN_HTTP}/images/faq_a.png" class="faq_img">
                                    <p>                                    
                                    ${faq.ftContent}
                                    </p>                                
                                </div>                        
                            </div>
                        </div>
                    </div>
                    <c:set var="counts" value="${counts - 1}"/>
                </c:forEach>

            </c:otherwise>
        </c:choose>
                    <!-- 문의 내역 없을 경우 -->
                    <!-- <div class="card">
                        <p class="fs_16 fw_600 text-light2 text-center py_120" colspan="3">등록된 공지사항이 없습니다.</p>
                    </div> -->


            <!-- 신청내역이 없을 때 -->
            <!-- <div class="text-center pt-5">
                <img src="${CDN_HTTP}/images/none_content.svg" alt="내용없음"/>
                <p class="text-light fs_18 fw_500">공지사항이 없습니다.</p>
            </div> -->
        </div>
        <%@ include file="inc/paging.jsp" %>
        
    </div>
</div>


<%@ include file="inc/tail.jsp"%>