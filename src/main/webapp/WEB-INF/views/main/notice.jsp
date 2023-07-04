<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <c:set var="chk_menu" value="4" />
            <c:set var="chk_sub_menu" value="0" />
            <c:set var="get_txt" value="?search_filter=${param.search_filter}&search_value=${param.search_value}&pg=" />
            <%@ include file="inc/config.jsp" %>
                <%@ include file="inc/head.jsp" %>
                    <style>
                        body {
                            background-color: #fff;
                        }

                        .sub_pg {
                            padding-top: 0;
                            margin-top: 5rem;
                        }
                    </style>
                    <div class="sub_pg">
                        <div class="sub_top container-fluid">
                            <div class="container">
                                <div class="breadcrumbs">
                                    <ul class="d-flex pt_40">
                                        <li class="mr_14"><a href="/main/index" class="fs_14 fw_400 text-light2"><img
                                                    src="${CDN_HTTP}/images/ico_bread_home.svg" alt="홈" class="mr-2">
                                                홈</a></li>
                                        <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표">
                                        </li>
                                        <li class="mr_14"><a href="javascript:avoid(0)"
                                                class="fs_14 fw_400 text-light2 cursor_text">고객센터</a></li>
                                        <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표">
                                        </li>
                                        <li class="mr_14"><a href="/main/notice"
                                                class="fs_14 fw_400 text-light2">공지사항</a></li>
                                    </ul>
                                </div>
                                <p class="tit_h1 mt_50">고객센터</p>
                                <p class="sub_top_tit info_line fs_18 line_h1_3 fw_400 mt-3">온코마스터의 다양한<br />
                                    공지사항을 확인해보세요.</p>
                            </div>
                        </div>
                        <div class="container sub_container custom_line mb_50">
                            <p class="tit_h2">공지사항</p>
                            <!-- <div class="search_wrap">    
                                <div class="sea_wrap">
                                    <input type="search" class="form-control" placeholder="검색해주세요.">
                                    <span><input type="submit" class="search_icon" value=""></span>
                                </div>
                            </div> -->
                            <div class="d-flex align-items-end justify-content-between mb-2 to_wrap">
                                <p class="fs_16 fw_500 mt_58 line_h1_3">총 <span
                                        class="fs_16 fw_600 text-primary">${fn:length(notices)}개</span>의 글이 있습니다.</p>
                                <p class="fc_4D67 fs_15 fw_300 d-flex align-items-center scroll_txt line_h1_3"><i
                                        class="xi-exchange fw_600 fs_18 pr-2"></i>스크롤해서 확인해주세요.</p>
                            </div>
                            <div class="table_scroll mt-3">
                                        <c:choose>
                                            <c:when test="${empty notices }">
                                                <div class="text-center pt-5">
                                                    <img src="${CDN_HTTP}/images/none_content.svg" alt="내용없음"/>
                                                    <p class="text-light fs_18 fw_500">공지사항이 없습니다.</p>
                                                </div>
                                             </c:when>
                                            <c:otherwise>
                                                <table class="notice_table w-100">
                                                    <thead>
                                                        <tr>
                                                            <th class="tg-t31z fs_16 fw_400 text-secondary num">번호</th>
                                                            <th class="tg-t31z text-left pl_20 text-secondary">제목</th>
                                                            <th class="tg-t31z text-secondary num">게시일</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:set var="counts" value="${page['counts']}"></c:set>
                                                        <c:forEach items="${notices}" var="notice">
                                                            <tr>
                                                                <td class="tg-wman fs_14 fw_400 num">${counts}</td>
                                                                <td
                                                                    class="tg-wman text-left fs_16 fw_600 pl_20 line_h1_5">
                                                                    <a href="/main/noticeCont/${notice.idx}">${notice.ntTitle
                                                                        }</a></td>
                                                                <fmt:formatDate value="${notice.ntWdate}"
                                                                    pattern="yyyy.MM.dd HH:mm" var="ntWdate" />
                                                                <td class="tg-wman fs_14 fw_400 num">${ntWdate }</td>
                                                            </tr>
                                                            <c:set var="counts" value="${counts - 1}" />
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </c:otherwise>
                                        </c:choose>
                                        <!-- 문의 내역 없을 경우 -->
                                        <!-- <tr>
                                    <td class="fs_16 fw_600 text-light2 text-center py_120" colspan="3">등록된 공지사항이 없습니다.</td>
                                </tr> -->

                                        <!-- 신청내역이 없을 때 -->
                                        <!-- <div class="text-center pt-5">
                                <img src="${CDN_HTTP}/images/none_content.svg" alt="내용없음"/>
                                <p class="text-light fs_18 fw_500">신청내역이 없습니다.</p>
                            </div>
                            <ul class="pagination">
                                <li class="mr-2"><a href="#" class="disabled"><i class="xi-arrow-left"></i></a></li>
                                <li class="mb-n1"><a href="#" class="on">1</a></li>
                                <li class="mb-n1"><a href="#">2</a></li>
                                <li class="mb-n1"><a href="#">3</a></li>
                                <li class="mb-n1"><a href="#">4</a></li>
                                <li class="ml-2"><a href="#"><i class="xi-arrow-right"></i></a></li>
                            </ul> -->
                                        <%@ include file="inc/paging.jsp" %>
                            </div>
                        </div>
                    </div>


                    <%@ include file="inc/tail.jsp" %>