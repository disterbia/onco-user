<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- data-toggle="modal" data-target="#exampleModal" -->

<!-- 수정완료 -->
<div class="modal fade" id="success_modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-sm">
        <div class="modal-content ">
            <div class="modal-header pb-0 " style="display:block">
            </div>
            <div class="modal-body">
                <div class="text-center pt-5">
                    <img src="${CDN_HTTP}/images/ico_check.svg" alt="완료" width="50px"/>
                    <p class="text-light fs_18 fw_500 mt-5">수정완료되었습니다.</p>
                </div>
            </div>
            <div class="modal-footer mt-5 d-flex justify-content-center">
            </div>
        </div>
    </div>
</div>

<!-- 로그인후 이용가능합니다. -->
<div class="modal fade" id="info_modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-md">
        <div class="modal-content ">
            <div class="modal-header pb-0 " style="display:block">
            </div>
            <div class="modal-body">
                <div class="text-center pt-5">
                    <img src="${CDN_HTTP}/images/none_content.svg" alt="이미지" width="90px"/>
                    <p class="text-light fs_18 fw_500 mt-3">로그인 후 이용가능합니다.</p>
                </div>
            </div>
            <div class="modal-footer mt-5 d-flex justify-content-center">
                 <div class="d-flex w-100 mx-0 mb-0">
                    <button type="button" class="btn bg-deep-light text-light fs_18 fw_600 le"  data-dismiss="modal">취소하기</button>
                    <button type="button" class="btn bg-primary text-white fs_18 fw_600 ri" onclick="location.href='/main/login'">로그인하기 </button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 1:1문의 신청하기 -->
<div class="modal fade" id="query_modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-md">
        <div class="modal-content ">
            <div class="modal-header pb-0 " style="display:block">
            </div>
            <div class="modal-body">
                <div class="text-center pt-5">
                    <img src="${CDN_HTTP}/images/ico_check.svg" alt="완료" width="70px"/>
                    <p class="text-light fs_18 fw_500 mt-5">1:1문의가 등록되었습니다.</p>
                </div>
            </div>
            <div class="modal-footer mt-5 d-flex justify-content-center">
                 <div class="d-flex w-100 mx-0 mb-0">
                    <button type="button" class="btn bg-deep-light text-light fs_18 fw_600 le"  data-dismiss="modal">닫기</button>
                    <button type="button" class="btn bg-primary text-white fs_18 fw_600 ri" onclick="location.href='/main/applyList'" >나의 문의내역 가기 </button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 탈퇴 -->
<div class="modal fade" id="dropout_modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-md">
        <div class="modal-content ">
            <div class="modal-header pb-0 " style="display:block">
            </div>
            <div class="modal-body">
                <div class="text-center pt-5">
                    <img src="${CDN_HTTP}/images/none_content.svg" alt="이미지" width="90px"/>
                    <p class="text-light fs_18 fw_500 mt-3">정말 탈퇴하시겠습니까?</p>
                </div>
            </div>
            <div class="modal-footer mt-5 d-flex justify-content-center">
                 <div class="d-flex w-100 mx-0 mb-0">
                    <button type="button" class="btn bg-deep-light text-light fs_18 fw_600 le"  data-dismiss="modal">취소하기</button>
                    <button type="button" class="btn bg-primary text-white fs_18 fw_600 ri" >탈퇴하기 </button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 서비스 신청내역-->
<div class="modal fade" id="service_cont_modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg">
        <div class="modal-content px_40 py_40">
            <div class="modal-header pb-0 " style="display:block">
                <div class="d-flex justify-content-between align-items-center">
                    <h5 class="modal-title fs_26 fw_700">신청내역</h5>
                    <button type="button" class="btn_close btn mt-0 pr-0" data-dismiss="modal" aria-label="Close">
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
                        <div class="col-md-8 mt-3">
                            <p class="text-primary fw_16 fw_600">B2C2</p>
                        </div>
                    </div>
                    <div class="form-row pb-4">
                        <div class="col-md-4 mt-3">
                            <p class="fs_16 fw_600">신청일자</p>
                        </div>
                        <div class="col-md-8 mt-3">
                            <p class="text-light fw_16 fw_600">2023-05-01</p>
                        </div>
                    </div>
                    <div class="form-row pb-4">
                        <div class="col-md-4 mt-3">
                            <p class="fs_16 fw_600">예상수령일자</p>
                        </div>
                        <div class="col-md-8 mt-3">
                            <p class="text-light fw_16 fw_600">2023-05-01</p>
                            <div class="text-danger mt-3"><i class="ri-error-warning-line"></i> 내부 사정으로 인해 지연될 수 있습니다.</div>
                        </div>
                    </div>
                    <div class="form-row pb-4">
                        <div class="col-md-4 mt-3">
                            <p class="fs_16 fw_600">신청인</p>
                        </div>
                        <div class="col-md-8 mt-3">
                            <p class="text-light fw_16 fw_600">김온코</p>
                        </div>
                    </div>
                    <div class="form-row pb-4">
                        <div class="col-md-4 mt-3">
                            <p class="fs_16 fw_600">서류제출</p>
                        </div>
                        <div class="col-md-8 mt-3">
                            <p class="text-light fw_16 fw_600">홈페이지제출</p>
                            <div class="bg-deep-light mt-4 rounded px-3 py-3">
                                <p class="slash2 fc_7f91 position-relative pl-3">이메일 서류 제출 시 : <a href="mailto:service@oncomaster.co.kr" class="fc_7f91">service@oncomaster.co.kr</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="form-row pb-4">
                        <div class="col-md-4 mt-3">
                            <p class="fs_16 fw_600">수령방식</p>
                        </div>
                        <div class="col-md-8 mt-3">
                            <p class="text-light fw_16 fw_600">이메일</p>
                        </div>
                    </div>
                    <div class="form-row pb-4">
                        <div class="col-md-4 mt-3">
                            <p class="fs_16 fw_600">신청상태</p>
                        </div>
                        <div class="col-md-8 mt-3">
                             <!-- 클래스명 사용하시면 됩니다. -->
                             <div class="condt reception_waiting">접수대기</div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer pt_30 d-flex justify-content-center">
                 <div class="d-flex justify-content-center">
                    <button type="button" class="btn btn-outline-secondary btn-xm mr-3" onclick="location.href='/main/applyList'">목록보기</button>
                    <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center" onclick="location.href='/main/query'">1:1문의하기 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="바로가기"/></button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 탈퇴 -->
<div class="modal fade" id="dropout_modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-md">
        <div class="modal-content ">
            <div class="modal-header pb-0 " style="display:block">
            </div>
            <div class="modal-body px-5">
                <div class="text-center pt-5">
                    <!-- <img src="./resources/images/none_content.svg" alt="이미지" width="90px"/> -->
                    <p class="fs_24 fw_700 mt-3 line_h1_4 text-center">온코마스터를
                    탈퇴하시나요?</p>
                    <p class="text-light fs_18 fw_500 mt-3 ">탈퇴하시는 이유를 알려주세요.</p>
                </div>
                <select class="form-control custom-select mt-5 ">
                    <option selected="">선택하기</option>
                    <option value="1">자주 사용하지 않아요.</option>
                    <option value="2">개인정보가 걱정돼요.</option>
                    <option value="3">서비스가 불만족스러워요.</option>
                    <option value="4">고객응대가 불만이에요.</option>
                    <option value="5">기타(직접입력)</option>
                </select>
                <p class="text-danger fs_14 fw_500 mt-5 text-center line_h1_4">* 서비스 신청 대기중에는 탈퇴하실 수 없습니다.</p>
            </div>
            <div class="modal-footer mt-5 d-flex justify-content-center">
                 <div class="d-flex w-100 mx-0 mb-0">
                    <button type="button" class="btn bg-deep-light text-light fs_18 fw_600 le"  data-dismiss="modal">취소하기</button>
                    <button type="button" class="btn bg-primary text-white fs_18 fw_600 ri" data-dismiss="modal" >탈퇴하기 </button>
                </div>
            </div>
        </div>
    </div>
</div>

 <script>
    $(document).ready(function(){
        $('#success_modal').on('shown.bs.modal', function(){
            setTimeout(function(){
            $('#success_modal').modal('hide');
            }, 1000); // 3초 후에 모달을 자동으로 숨깁
        });
        });

</script> 