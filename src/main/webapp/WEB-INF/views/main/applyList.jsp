<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <c:set var="chk_menu" value="5" />
            <c:set var="chk_sub_menu" value="1" />
            <c:set var="get_txt" value="?search_sdate=${param.search_sdate}&search_edate=${param.search_edate}&pg=" />
            <%@ include file="inc/config.jsp" %>
                <%@ include file="inc/head.jsp" %>
                    <style>
                        body {
                            background-color: #fff;
                        }

                        .sub_pg {
                            padding-top: 0;
                        }
                    </style>
                    <div class="sub_pg">
                        <div class="container">
                            <div class="breadcrumbs">
                                <ul class="d-flex pt_40">
                                    <li class="mr_14"><a href="/main/index" class="fs_14 fw_400 text-light2"><img
                                                src="${CDN_HTTP}/images/ico_bread_home.svg" alt="홈" class="mr-2"> 홈</a>
                                    </li>
                                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                                    <li class="mr_14"><a href="javascript:avoid(0)"
                                            class="fs_14 fw_400 text-light2 cursor_text">마이페이지</a></li>
                                    <li class="mr_14"><img src="${CDN_HTTP}/images/ico_bread_arrow.svg" alt="화살표"></li>
                                    <li class="mr_14"><a href="/main/gangnamSpace" class="fs_14 fw_400 text-light2">서비스
                                            신청 조회</a></li>
                                </ul>
                            </div>

                            <p class="tit_sub mt_50">마이페이지</p>
                            <div class="d-flex my_top_wrap">
                                <!--사이즈바-->
                                <div class="side_bar">
                                    <div class="mypage_top mt_25">
                                        <p class="tit_h3 line_h1_4">반갑습니다.<br />
                                            <span>${member.mtName}</span> 님
                                        </p>
                                    </div>
                                    <div class="border mypage_ul">
                                        <a href="/main/mypage" class="border-bottom mypage_ul_left line_h1_3">
                                            내 정보 확인
                                        </a>
                                        <a href="" class="line_h1_3 on ">
                                            서비스 신청 조회
                                        </a>
                                    </div>
                                </div>
                                <!-- 서비스 신청 조회 -->
                                <div class="w-100 mt_40">
                                    <div class="my_service_wrap pl_50">
                                        <div
                                            class="d-flex align-items-end justify-content-between border-border border-bottom form_tit_wrap pb-3">
                                            <p class="tit_sub">서비스 신청 조회</p>
                                        </div>
                                        <form action="">
                                            <!-- 선택되면 .active추가됩니다. -->
                                            <div class="btn-group btn_group_wrap mr_40  mt_30" role="group"
                                                aria-label="Basic example">
                                                <button type="button" id="oneWeekAgo" class="btn btn-secondary">최근
                                                    1주일</button>
                                                <button type="button" id="threeMonthsAgo"
                                                    class="btn btn-secondary">3개월</button>
                                                <button type="button" id="sixMonthsAgo"
                                                    class="btn btn-secondary">6개월</button>
                                            </div>
                                            <div class="form-row mt-3 mb_30 align-items-center mypage_date_wrap">
                                                <div class="ip_wr ip_valid col-md-4 start_date">
                                                    <div class="ip_tit">
                                                        <p class="fs_16 fw_500">시작일</p>
                                                    </div>
                                                    <input type="date" class="form-control position-relative"
                                                        id="datepicker">
                                                </div>
                                                <p class="mt-3 dash">~</p>
                                                <div class="ip_wr ip_valid col-md-4 end_date">
                                                    <div class="ip_tit">
                                                        <p class="fs_16 fw_500">종료일</p>
                                                    </div>
                                                    <input type="date" class="form-control position-relative"
                                                        id="datepicker2">
                                                </div>
                                                <div class="ip_wr ip_valid col-md-2">
                                                    <button type="button" onclick="content_search();"
                                                        class="btn btn-outline-primary btn-sm">조회</button>
                                                </div>
                                                <p class="fs_16 fw_300 mt-3 pl-4">* 기간조회는 최대 1년까지 가능합니다.</p>
                                            </div>
                                            <div class="d-flex align-items-end justify-content-between">
                                                <p class="fs_16 fw_500 mt_58 line_h1_3">총 <span
                                                        class="fs_16 fw_600 text-primary">${fn:length(services)}개</span>의
                                                    글이 있습니다.</p>
                                                <p
                                                    class="fc_4D67 fs_15 fw_300 d-flex align-items-center scroll_txt line_h1_3">
                                                    <i class="xi-exchange fw_600 fs_18 pr-2"></i>스크롤해서 확인해주세요.
                                                </p>
                                            </div>
                                            <div class="table_scroll">
                                                <c:choose>
                                                    <c:when test="${empty services}">
                                                        <div class="text-center pt-5">
                                                            <img src="${CDN_HTTP}/images/none_content.svg" alt="내용없음" />
                                                            <p class="text-light fs_18 fw_500">신청내역이 없습니다.</p>
                                                        </div>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <table class="tg">
                                                            <thead>
                                                                <tr>
                                                                    <th class="tg-jw0j">신청번호</th>
                                                                    <th class="tg-jw0j">신청일자</th>
                                                                    <th class="tg-gdc4">예상수령일자</th>
                                                                    <th class="tg-gdc4 pr-2">신청인</th>
                                                                    <th class="tg-gdc4">서류제출</th>
                                                                    <th class="tg-gdc4">수령방식</th>
                                                                    <th class="tg-gdc4">신청상태</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <c:set var="counts" value="${page['counts']}"></c:set>
                                                                <c:forEach items="${services}" var="service">
                                                                    <tr>
                                                                        <td class="tg-c3ow"><span
                                                                                style="color:#149FDB">${service.stString}</span>
                                                                        </td>
                                                                        <a
                                                                            href="/main/noticeCont/${notice.idx}">${notice.ntTitle}</a>
                                                                        </td>
                                                                        <fmt:formatDate value="${service.stWdate}"
                                                                            pattern="yyyy.MM.dd" var="stWdate" />
                                                                        <td class="tg-c3ow tg-date">${stWdate}</td>
                                                                        <fmt:formatDate value="${service.stReceiveDate}"
                                                                            pattern="yyyy.MM.dd" var="stReceiveDate" />
                                                                        <td class="tg-c3ow tg-date">${stReceiveDate}
                                                                        </td>
                                                                        <td class="tg-c3ow">
                                                                            <a href="#"
                                                                                class="text_unline d-flex-align-items-center justify-content-center"
                                                                                data-toggle="modal"
                                                                                data-target="#service_cont_modal"
                                                                                data-id="${service.idx}">
                                                                                ${member.mtName}
                                                                                <img src="${CDN_HTTP}/images/ico_tg_arrow.svg"
                                                                                    class="pl-1" alt="상세내용">
                                                                            </a>
                                                                        </td>

                                                                        <c:if
                                                                            test="${service.stReceiptFormatCode eq 1}">
                                                                            <td class="tg-c3ow">홈페이지 제출</td>
                                                                        </c:if>
                                                                        <c:if
                                                                            test="${service.stReceiptFormatCode eq 2}">
                                                                            <td class="tg-c3ow">이메일 제출</td>
                                                                        </c:if>
                                                                        <c:if test="${service.stSubmitFormatCode eq 1}">
                                                                            <td class="tg-c3ow">이메일</td>
                                                                        </c:if>
                                                                        <c:if test="${service.stSubmitFormatCode eq 2}">
                                                                            <td class="tg-c3ow">문자</td>
                                                                        </c:if>
                                                                        <c:if test="${service.stSubmitFormatCode eq 3}">
                                                                            <td class="tg-c3ow">카카오톡</td>
                                                                        </c:if>
                                                                        <c:if test="${service.stStateCode eq 1}">
                                                                            <td class="tg-c3ow">
                                                                                <div class="condt shipment_waiting">발송대기
                                                                                </div>
                                                                            </td>
                                                                        </c:if>
                                                                        <c:if test="${service.stStateCode eq 2}">
                                                                            <td class="tg-c3ow">
                                                                                <div class="condt completion">발송완료</div>
                                                                            </td>
                                                                        </c:if>
                                                                        <c:if test="${service.stStateCode eq 3}">
                                                                            <td class="tg-c3ow">
                                                                                <div class="condt reception_waiting">
                                                                                    접수대기</div>
                                                                            </td>
                                                                        </c:if>
                                                                        <c:if test="${service.stStateCode eq 4}">
                                                                            <td class="tg-c3ow">
                                                                                <div class="condt cancel">취소</div>
                                                                            </td>
                                                                        </c:if>
                                                                        <c:if test="${service.stStateCode eq 5}">
                                                                            <td class="tg-c3ow">

                                                                                <div class="condt reception_completion">
                                                                                    접수완료</div>
                                                                            </td>
                                                                        </c:if>
                                                                    </tr>
                                                                    <c:set var="counts" value="${counts - 1}" />
                                                                </c:forEach>
                                                            </tbody>
                                                        </table>
                                                    </c:otherwise>
                                                </c:choose>
                                                <%@ include file="inc/paging.jsp" %>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="service_cont_modal" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg">
                            <div class="modal-content px_40 py_40">
                                <div class="modal-header pb-0 " style="display:block">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <h5 class="modal-title fs_26 fw_700">신청내역</h5>
                                        <button type="button" class="btn_close btn mt-0 pr-0" data-dismiss="modal"
                                            aria-label="Close">
                                            <i class="ri-close-fill fs_25 fc_7070"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="modal-body pt_40 ">
                                    <form>
                                        <div class="form-row pb-4">
                                            <div class="col-md-4 mt-3">
                                                <p class="fs_16 fw_600">신청번호</p>
                                            </div>
                                            <div class="col-md-8 mt-3" id="stString">
                                                <p class="text-primary fw_16 fw_600" id="stString"></p>
                                            </div>
                                        </div>
                                        <div class="form-row pb-4">
                                            <div class="col-md-4 mt-3">
                                                <p class="fs_16 fw_600" >신청일자</p>
                                            </div>
                                            <div class="col-md-8 mt-3">
                                                <p class="text-light fw_16 fw_600" id="stWdate"></p>
                                            </div>
                                        </div>
                                        <div class="form-row pb-4">
                                            <div class="col-md-4 mt-3">
                                                <p class="fs_16 fw_600">예상수령일자</p>
                                            </div>
                                            <div class="col-md-8 mt-3">
                                                <p class="text-light fw_16 fw_600" id="stReceiveDate"></p>
                                                <div class="text-danger mt-3"><i class="ri-error-warning-line"></i> 내부
                                                    사정으로 인해 지연될 수 있습니다.</div>
                                            </div>
                                        </div>
                                        <div class="form-row pb-4">
                                            <div class="col-md-4 mt-3">
                                                <p class="fs_16 fw_600">신청인</p>
                                            </div>
                                            <div class="col-md-8 mt-3">
                                                <p class="text-light fw_16 fw_600">${member.mtName}</p>
                                            </div>
                                        </div>
                                        <div class="form-row pb-4">
                                            <div class="col-md-4 mt-3">
                                                <p class="fs_16 fw_600">서류제출</p>
                                            </div>
                                            <div class="col-md-8 mt-3">
                                                <p class="text-light fw_16 fw_600" id="stReceiptFormat"></p>
                                                <div class="bg-deep-light mt-4 rounded px-3 py-3">
                                                    <p class="slash2 fc_7f91 position-relative pl-3">이메일 서류 제출 시 : <a
                                                            href="mailto:service@oncomaster.co.kr"
                                                            class="fc_7f91">service@oncomaster.co.kr</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row pb-4">
                                            <div class="col-md-4 mt-3">
                                                <p class="fs_16 fw_600">수령방식</p>
                                            </div>
                                            <div class="col-md-8 mt-3">
                                                <p class="text-light fw_16 fw_600" id="stSubmitFormat"></p>
                                            </div>
                                        </div>
                                        <div class="form-row pb-4">
                                            <div class="col-md-4 mt-3">
                                                <p class="fs_16 fw_600" >신청상태</p>
                                            </div>
                                            <div class="col-md-8 mt-3">
                                                <div id="stState"></div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer pt_30 d-flex justify-content-center">
                                    <div class="d-flex justify-content-center">
                                        <button type="button" class="btn btn-outline-secondary btn-xm mr-3"
                                            onclick="location.href='/main/applyList'">목록보기</button>
                                        <button type="button"
                                            class="btn btn-primary btn-md d-flex justify-content-between align-items-center"
                                            onclick="location.href='/main/inquery'">1:1문의하기 <img
                                                src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="바로가기" /></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- <%@ include file="inc/modal.jsp" %> -->


                    <%@ include file="inc/tail.jsp" %>
                        <script>

                            $('#service_cont_modal').on('show.bs.modal', function (event) {
                                var button = $(event.relatedTarget);  
                                var id = button.data('id');           
    
                                $.ajax({
                                    url: "/main/applyModal", 
                                    data: {
                                        idx: id
                                    },
                                    success: function (data) {               
                                        $('#stString').text(data.stString);
                                        var date = new Date(data.stWdate);
                                        var formattedDate = date.getFullYear() + '-' + ("0" + (date.getMonth() + 1)).slice(-2) + '-' + ("0" + date.getDate()).slice(-2);
                                        $('#stWdate').text(formattedDate);
                                        var date2 = new Date(data.stReceiveDate);
                                        var formattedDate2 = date2.getFullYear() + '-' + ("0" + (date2.getMonth() + 1)).slice(-2) + '-' + ("0" + date2.getDate()).slice(-2);
                                        $('#stReceiveDate').text(formattedDate2);
                                        if(data.stReceiptFormatCode == 1){
                                            $('#stReceiptFormat').text("홈페이지 제출");
                                        }else{
                                            $('#stReceiptFormat').text("이메일 제출");
                                        }
                                        if(data.stSubmitFormatCode == 1){
                                            $('#stSubmitFormat').text("이메일");
                                        }else if(data.stSubmitFormatCode == 2){
                                            $('#stSubmitFormat').text("문자");
                                        }else{
                                            $('#stSubmitFormat').text("카카오톡");
                                        }
                                        if(data.stStateCode==1){
                                            $("#stState").addClass("condt shipment_waiting");
                                            $('#stState').text("발송대기");
                                        }else if(data.stStateCode==2){
                                            $("#stState").addClass("condt completion");
                                            $('#stState').text("발송완료");
                                        }else if(data.stStateCode==3){
                                            $("#stState").addClass("condt reception_waiting");
                                            $('#stState').text("접수대기");
                                        }else if(data.stStateCode==4){
                                            $("#stState").addClass("condt cancel");
                                            $('#stState').text("취소");
                                        }else{
                                            $("#stState").addClass("condt reception_completion");
                                            $('#stState').text("접수완료");
                                        }
                                
                                    }
                                });
                            });

                            const urlParams = new URLSearchParams(window.location.search);

                            const search_sdate = urlParams.get('search_sdate');
                            const search_edate = urlParams.get('search_edate');

                            if (search_sdate) {
                                document.getElementById('datepicker').value = search_sdate;
                            }

                            if (search_edate) {
                                document.getElementById('datepicker2').value = search_edate;
                            }
                            document.getElementById('oneWeekAgo').addEventListener('click', function () {
                                var date = new Date();
                                document.getElementById('datepicker2').valueAsDate = date;
                                date.setDate(date.getDate() - 7); // 1주일 전
                                document.getElementById('datepicker').valueAsDate = date;

                            });

                            document.getElementById('threeMonthsAgo').addEventListener('click', function () {
                                var date = new Date();
                                document.getElementById('datepicker2').valueAsDate = date;
                                date.setMonth(date.getMonth() - 3); // 3개월 전
                                document.getElementById('datepicker').valueAsDate = date;
                            });

                            document.getElementById('sixMonthsAgo').addEventListener('click', function () {
                                var date = new Date();
                                document.getElementById('datepicker2').valueAsDate = date;
                                date.setMonth(date.getMonth() - 6); // 6개월 전
                                document.getElementById('datepicker').valueAsDate = date;
                            });
                            //해당 페이지 검색옵션
                            haveDatePicker = true;

                            function content_search() {
                                console.log("dddd");
                                location.href = make_search_path(`${path}`);
                            }
                        </script>