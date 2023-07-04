<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="inc/config.jsp"%>
<%@ include file="inc/head.jsp"%>

<div class="container-md sub_pg my-5">
    <div class="justify-content-center py-5 px-5">
        <div class="position-relative">
            <div class=" mb-5">
                <span class="badge badge-primary">Primary</span>
                <span class="badge badge-secondary">Secondary</span>
                <span class="badge badge-success">Success</span>
                <span class="badge badge-danger">Danger</span>
                <span class="badge badge-warning">Warning</span>
                <span class="badge badge-info">Info</span>
                <span class="badge badge-light">Light</span>
                <span class="badge badge-dark">Dark</span>

                <span class="badge badge-primary badge-pill">1</span>
                <span class="badge badge-secondary badge-pill">2</span>
                <span class="badge badge-success badge-pill">3</span>
                <span class="badge badge-danger badge-pill">4</span>
                <span class="badge badge-warning badge-pill">5</span>
                <span class="badge badge-info badge-pill">6</span>
                <span class="badge badge-light badge-pill">7</span>
                <span class="badge badge-dark badge-pill">8</span>
            </div>
            <h1 id="" class="guide_pg mb-3"><span class="bg-primary d-block py-3 px-3 text-white fs_17">▼ 백그라운드 컬러</span></h1>
            <ul class="sq_guide mb-5">
                <li class="border bg-primary text-white">primary</li>
                <li class="border bg-secondary text-white">secondary</li>
                <li class="border bg-success text-white">success</li>
                <li class="border bg-danger text-white">danger</li>
                <li class="border bg-warning text-dark">warning</li>
                <li class="border bg-info text-white">info</li>
                <li class="border bg-light text-dark">light #f8f8f8</li>
                <li class="border bg-deep-light text-dark">bg-deep-light #f5f5f5</li>
                <li class="border bg-light-skyblue text-dark">bg-light-skyblue #D2DCE8</li>
                <li class="border bg-hold text-white">hold #878686</li>
                <li class="border bg-dark text-white">dark</li>
                <li class="border bg-white text-dark">white</li>
                <li class="border bg-transparent text-dark">transparent</li>
            </ul>

            <h1 id="" class="guide_pg mb-3"><span class="bg-primary d-block py-3 px-3 text-white fs_17">▼ 보더 컬러</span></h1>
            <ul class="sq_guide mb-5">
                <li class="border bg-white text-dark border-primary">primary</li>
                <li class="border bg-white text-dark border-secondary">secondary</li>
                <li class="border bg-white text-dark border-success">success</li>
                <li class="border bg-white text-dark border-danger">danger</li>
                <li class="border bg-white text-dark border-warning">warning</li>
                <li class="border bg-white text-dark border-info">info</li>
                <li class="border bg-dark text-white border-light">light</li>
                <li class="border bg-white text-dark border-dark">dark</li>
                <li class="border bg-dark text-white border-white">white</li>
            </ul>

            <h1 id="" class="guide_pg mb-3"><span class="bg-primary d-block py-3 px-3 text-white fs_17">▼ 폰트 컬러</span></h1>
            <div class="fs_20">
                <p class="mb-3 text-primary">text-primary #F04E5A</p>
                <p class="mb-3 text-secondary bg-white">text-secondary  #535F6D</p>
                <p class="mb-3 text-success">text-success</p>
                <p class="mb-3 text-danger">text-danger</p>
                <p class="mb-3 text-warning">text-warning</p>
                <p class="mb-3 text-info">text-info</p>
                <p class="mb-3 text-light bg-dark">text-light #777777</p>
                <p class="mb-3 text-light2 bg-dark">text-light2 #878686</p>
                <p class="mb-3 text-deep-light bg-dark">text-deep-light #707070</p>
                <p class="mb-3 text-dark">text-dark #1F2C3A</p>
                <p class="mb-3 text-body">text-body</p>
                <p class="mb-3 text-muted bg-white">text-muted</p>
                <p class="mb-3 text-white bg-dark">text-white</p>
                <p class="mb-3 text-black-50">text-black-50</p>
                <p class="mb-3 text-white-50 bg-dark">text-white-50</p>
            </div>

            <h1 id="" class="guide_pg mb-3"><span class="bg-primary d-block py-3 px-3 text-white fs_17">▼ 타이틀</span></h1>
            <h1 class="mb-3 mt-5 fs_16">▼ 타이틀 스타일1</h1>
            <p class="tit_h1">1. 타이틀용서체 40 px-> 모바일 30px Bold / Pretendard 체</p>
            <h1 class="mb-3 mt-5 fs_16">▼ 타이틀 스타일2</h1>
            <p class="tit_h2">2. 타이틀용서체 30px -> 모바일 20px Bold / Pretendard 체</p>
            <h1 class="mb-3 mt-5 fs_16">▼ 타이틀 스타일3</h1>
            <p class="tit_h3">3. 타이틀용서체 26px -> 모바일 18px Bold</p>

            <h1 class="mb-3 mt-5 fs_16">▼ 타이틀 스타일3</h1>
            <p class="tit_h4">3. 작은타이틀용서체 22px -> 모바일 16px Bold 768 미만에서 white-space: pre-line풀어놓음</p>


            <div class="py-4"></div>


            <h1 id="guide_pg2" class="guide_pg mb-3"><span class="bg-primary d-block py-3 px-3 text-white fs_17">▼ 폰트</span></h1>
            <h1 class="mb-3 mt-3 fs_16">▼ 폰트 사이즈</h1>
            <div class="px-2">
                <div class="fs_8">fs_8</div>
                <div class="fs_9">fs_9</div>
                <div class="fs_10">fs_10</div>
                <div class="fs_11">fs_11</div>
                <div class="fs_17">~</div>
                <div class="fs_32">fs_52</div>
            </div>
            <h1 class="mb-3 mt-3 fs_16">▼ 폰트 굵기</h1>
            <div class="px-2 py-2">
                <div class="fw_100">fw_100 Thin</div>
                <div class="fw_200">fw_200 ExtraLight</div>
                <div class="fw_300">fw_300 Light</div>
                <div class="fw_400">fw_400 Regular</div>
                <div class="fw_500">fw_500 Medium</div>
                <div class="fw_600">fw_600 SemiBold</div>
                <div class="fw_700">fw_700 Bold</div>
                <div class="fw_800">fw_800 ExtraBold</div>
                <div class="fw_900">fw_900 Black</div>
            </div>

            <h1 id="guide_pg3" class="guide_pg mb-3 mt-5"><span class="bg-primary d-block py-3 px-3 text-white fs_17">▼ 버튼</span></h1>
            <h1 class="mb-0 mt-3 fs_16">▼ 모달</h1>

            <div class="py-3">
                <p>모달</p>
                <button type="button" class="btn btn-danger btn-sm "  data-toggle="modal" data-target="#warning_modal">.modal-sm warning</button>
                <button type="button" class="btn btn-success btn-sm"  data-toggle="modal" data-target="#success_modal">.modal-sm success</button>
                <button type="button" class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#dropout_modal">.modal-md</button>
                <button type="button" class="btn btn-secondary btn-sm" data-toggle="modal" data-target="#service_cont_modal">.modal-lg</button>
            </div>

            <h1 id="guide_pg3" class="guide_pg mb-3 mt-5"><span class="bg-primary d-block py-3 px-3 text-white fs_17">▼ 버튼</span></h1>
            <h1 class="mb-0 mt-3 fs_16">▼ 버튼</h1>

            <div class="py-3">
                <p>btn-sm</p>
                <button type="button" class="btn btn-primary btn-sm">회원가입</button>
                <button type="button" class="btn btn-outline-primary btn-sm">회원가입</button>
                <button type="button" class="btn btn-secondary btn-sm">회원가입</button>
                <button type="button" class="btn btn-outline-secondary btn-sm">회원가입</button>
                <button type="button" class="btn btn-outline-secondary ">회원가입</button>
            </div>
            <div class="py-3">
                <p>btn.disabled</p>
                <button type="button" class="btn disabled btn-primary btn-sm">회원가입</button>
                <button type="button" class="btn disabled btn-outline-primary btn-sm">회원가입</button>
                <button type="button" class="btn disabled btn-secondary btn-sm">회원가입</button>
                <button type="button" class="btn disabled btn-outline-secondary btn-sm">회원가입</button>
            </div>

            <div class="py-3">
                <p>btn.md</p>
                <button type="button" class="btn btn-primary btn-md d-flex justify-content-between align-items-center">회원가입 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="바로가기"/></button>
                <button type="button" class="btn btn-outline-primary btn-md d-flex justify-content-between align-items-center">회원가입 <img src="${CDN_HTTP}/images/ico_btn_arrow_b.png" alt="바로가기"/></button>
                <button type="button" class="btn btn-secondary btn-md d-flex justify-content-between align-items-center" >회원가입 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="바로가기"/></button>
                <button type="button" class="btn btn-outline-secondary btn-md d-flex justify-content-between align-items-center">회원가입 <img src="${CDN_HTTP}/images/ico_btn_arrow.png" alt="바로가기"/></button>
            </div>

            <div class="py-3">
                <p>btn</p>
                <button type="button" class="btn btn-primary">회원가입 </button>
                <button type="button" class="btn btn-outline-primary">회원가입</button>
                <button type="button" class="btn btn-secondary">회원가입</button>
                <button type="button" class="btn btn-outline-secondary">회원가입</button>
            </div>

            <div class="py-3">
                <p>btn.btn-block</p>
                <button type="button" class="btn btn-primary btn-block">회원가입</button>
                <button type="button" class="btn btn-outline-primary  btn-block">회원가입</button>
                <button type="button" class="btn btn-secondary btn-block">회원가입</button>
                <button type="button" class="btn btn-outline-secondary btn-block">회원가입</button>
            </div>

            

            <form action="">
                <div class="upload_img_wrap">
                    <div class="form-group upload_img_item">
                        <label for="file_upload" class="file_upload square"><i class="xi-plus"></i></label>
                        <input type="file" class="form-control-file d-none" id="file_upload">
                    </div>                       
                    <div class="form-group upload_img_item">
                        <label for="file_upload" class="file_upload square d-none"><i class="xi-plus"></i></label>
                        <input type="file" class="form-control-file d-none" id="file_upload">
                        <div class="square">
                            <img src="${CDN_HTTP}/image/test_poster.jpg">
                            <div class="dimmed"></div>
                            <button class="btn btn-link btn-sm btn_delete"><i class="xi-close text-white"></i></button>
                        </div>
                    </div>

                    <div class="form-group upload_img_item">
                            <label for="file_upload" class="file_upload square d-none">
                                <i class="xi-plus"></i>
                            </label>
                            <input type="file" class="form-control-file d-none" id="file_upload">
                            <div class="square">
                                <img src="${CDN_HTTP}/images/docufile_upload.png">
                                <div class="dimmed"></div>
                                <div class="w-100 file_name">
                                    <p class="fs_13 fw_400 text-line2 line_h1_3 line3_text">파일이름파일이름파일이름파일이름파일이름.hwp</p>
                                </div>
                                <button class="btn btn-link btn-sm btn_delete mt-0">
                                    <i class="xi-close text-white"></i>
                                </button>
                            </div>
                        </div>
                </div>
            </form>

            <h1 id="guide_pg3" class="guide_pg mb-3 mt-5"><span class="bg-primary d-block py-3 px-3 text-white fs_17">▼ 입력폼</span></h1>
            <h1 class="mb-3 mt-3 fs_16">▼ 기본</h1>
            <div class="">
                <div class="ip_wr mt-5 ip_valid">
                    <div class="ip_tit">
                        <h5>검색</h5>
                    </div>
                    <div class="sea_wrap d-flex">
                        <input type="search" class="form-control" placeholder="검색해주세요.">
                        <span><input type="submit" class="search_icon" value=""></span>
                    </div>
                </div>

                <div class="form-row mt-3 mb_30 border-bottom pb_40">
                        <div class="ip_wr col-md-12">
                            <div class="ip_tit">
                                <p class="fs_16 fw_500">암종</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <select class="form-control custom-select">
                                <option selected>암종 선택</option>
                                <option value="1">간암</option>
                                <option value="2">갑상선압</option>
                                <option value="3">고환암</option>
                                <option value="4">난관암</option>
                                <option value="5">난소암</option>
                                <option value="6">뇌 및 중추 신경계암</option>
                                <option value="7">담도암</option>
                                <option value="8">두경부암</option>
                                <option value="9">말초 신경계암</option>
                                <option value="10">바터팽 대부암</option>
                                <option value="11">방광 및 요로암</option>
                                <option value="12">복막암</option>
                                <option value="13">부신암</option>
                                <option value="14">식도암</option>
                                <option value="15">신장암</option>
                                <option value="16">외음부 및 질암</option>
                                <option value="17">위암</option>
                                <option value="18">유방암</option>
                                <option value="19">육종 및 골암</option>
                                <option value="20">음경암</option>
                                <option value="21">자궁암</option>
                                <option value="22">직결장암</option>
                                <option value="23">전립선암</option>
                                <option value="24">중피종</option>
                                <option value="25">췌장암</option>
                                <option value="26">폐암</option>
                                <option value="27">피부암</option>
                                <option value="28">흉선암</option>
                                <option value="29">흑색종</option>
                                <option value="30">신경내분비종양</option>
                                <option value="31">기타암종</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="직접입력">
                        </div>
                    </div>
                    <div class="form-row mt-3 mb_30">
                        <div class="ip_wr col-md-12">
                            <div class="ip_tit">
                                <p class="fs_16 fw_500">이메일</p>
                            </div>
                        </div>
                        <div class="row w-100 mail_form">
                            <div class="d-flex align-items-center mail_wrap col-md-8 col-12">
                                <input type="text" class="form-control" placeholder="test@test.com">
                                <p class="px-3 mt-3">@</p>
                                <input type="text" class="form-control" placeholder="직접입력">
                            </div>
                            <select class="form-control custom-select col-md-4 col-12">
                                <option selected>선택하기</option>
                                <option value="1">naver.com</option>
                                <option value="2">gmail.com</option>
                                <option value="3">daum.net</option>
                                <option value="3">nate.com</option>
                                <option value="3">hanmail.net</option>
                                <option value="3">hotmail.net</option>
                            </select>
                        </div>
                    </div>

                <div class="ip_wr mt-5 ip_valid">
                    <div class="ip_tit">
                        <h5>아이디</h5>
                    </div>
                    <input type="text" class="form-control" placeholder="입력해주세요.">
                    <div class="form-text ip_valid"><i class="ri-checkbox-circle-line"></i> 확인되었습니다.</div>
                    <div class="form-text ip_invalid"><i class="ri-error-warning-line"></i> 아이디를 다시 확인해주세요</div>
                </div>

                <div class="ip_wr mt-5 ip_invalid">
                    <div class="ip_tit">
                        <h5>비밀번호</h5>
                    </div>
                    <div class="pass_wrap">
                        <input type="password" class="form-control" placeholder="입력해주세요.">
                        <span><i class="xi-eye"></i></span>
                        <!-- 비밀번호 보임안보임 -->
                        <!-- <span><i class="xi-eye-off"></i></span> -->
                    </div>
                    <div class="form-text ip_valid"><i class="ri-checkbox-circle-line"></i> 확인되었습니다.</div>
                    <div class="form-text ip_invalid"><i class="ri-error-warning-line"></i> 비밀번호를 다시 확인해주세요</div>
                </div>

                <div class="form-row">
                    <div class="ip_wr mt-5 col-md-6">
                        <div class="ip_tit">
                            <h5>타이틀</h5>
                        </div>
                        <input type="text" class="form-control" placeholder="입력하세요">
                    </div>
                    <div class="ip_wr mt-5 col-md-6">
                        <div class="ip_tit">
                            <h5>타이틀</h5>
                        </div>
                        <input type="text" class="form-control" placeholder="0">
                    </div>
                </div>

                <div class="form-row">
                    <div class="ip_wr mt-5 col-6 col-md-3">
                        <div class="ip_tit">
                            <h5>타이틀</h5>
                        </div>
                        <input type="text" class="form-control" placeholder="입력하세요">
                    </div>
                    <div class="ip_wr mt-5 col-6 col-md-3">
                        <div class="ip_tit">
                            <h5>타이틀</h5>
                        </div>
                        <input type="text" class="form-control" placeholder="0">
                    </div>
                    <div class="ip_wr mt-5 col-md-6">
                        <div class="ip_tit">
                            <h5>타이틀</h5>
                        </div>
                        <input type="text" class="form-control" placeholder="0">
                    </div>
                </div>

                <div class="ip_wr mt-5">
                    <div class="ip_tit d-flex align-items-center justify-content-between">
                        <h5>후기를 작성해주세요</h5>
                        <p class="fc_mgr fs_14">(0/1000)</p>
                    </div>
                    <textarea class="form-control" placeholder="입력해주세요" rows="10"></textarea>
                    <div class="invalid-feedback">1000자까지만 써주세요</div>
                </div>

                <div class="ip_wr mt-5">
                    <div class="ip_tit d-flex align-items-center justify-content-between">
                        <h5>셀렉트박스</h5>
                    </div>
                    <select class="form-control custom-select">
                        <option selected>선택하기</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                    </select>
                </div>

                <div class="ip_wr mt-5">
                    <div class="ip_tit d-flex align-items-center justify-content-between">
                        <h5>날짜 선택</h5>
                    </div>
                    <input type="date" class="form-control position-relative">
                </div>

                <div class="ip_wr mt-5">
                    <div class="ip_tit">
                        <h5>전화번호 인증</h5>
                    </div>
                    <div class="form-row">
                        <div class="col-lg-10 ph_wrap">
                            <input type="text" class="form-control" placeholder="입력하세요">
                            <span>02:59</span>
                        </div>
                        <div class="col-lg-2 mt-lg-0 mt-3">
                            <button type="button" class="btn btn-primary btn-block">인증요청</button>
                        </div>
                    </div>
                </div>
            </div>



            <h1 id="guide_pg3" class="guide_pg mb-3 mt-5"><span class="bg-primary d-block py-3 px-3 text-white fs_17">▼ 체크박스 / 라디오 버튼</span></h1>
            <h1 class="mb-3 mt-5 fs_16">▼ 체크박스 / 라디오 버튼</h1>

            <div class="ip_wr mt-5">
                <div class="ip_tit">
                    <h5>체크박스1</h5>
                </div>
                <div class="checks_wr">
                    <div class="checks">
                        <label>
                            <input type="checkbox" name="chk1">
                            <span class="ic_box"><i class="ri-check-line"></i></span>
                            <div class="chk_p">
                                <p>체크박스</p>
                            </div>
                        </label>
                    </div>
                </div>
            </div>

            <div class="ip_wr mt-5">
                <div class="ip_tit">
                    <h5>체크박스2</h5>
                </div>
                <div class="checks_wr">
                    <div class="checks">
                        <label class="chk_right">
                            <input type="checkbox" name="chk2">
                            <span class="ic_box"><i class="ri-check-line"></i></span>
                            <div class="chk_p">
                                <p>체크박스</p>
                            </div>
                        </label>
                    </div>
                </div>
            </div>

            <div class="ip_wr mt-5">
                <div class="ip_tit">
                    <h5>라디오1</h5>
                </div>
                <div class="checks_wr">
                    <div class="checks">
                        <label>
                            <input type="radio" name="rd1">
                            <span class="ic_box"><i class="ri-check-line"></i></span>
                            <div class="chk_p">
                                <p>라디오1_1</p>
                            </div>
                        </label>
                    </div>
                    <div class="checks">
                        <label>
                            <input type="radio" name="rd1">
                            <span class="ic_box"><i class="ri-check-line"></i></span>
                            <div class="chk_p">
                                <p>라디오1_2</p>
                            </div>
                        </label>
                    </div>
                </div>
            </div>

            <div class="ip_wr mt-5">
                <div class="ip_tit">
                    <h5>라디오2</h5>
                </div>
                <div class="checks_wr">
                    <div class="checks">
                        <label class="chk_right">
                            <input type="radio" name="rd2">
                            <span class="ic_box"><i class="ri-check-line"></i></span>
                            <div class="chk_p">
                                <p>라디오1_1</p>
                            </div>
                        </label>
                    </div>
                    <div class="checks">
                        <label class="chk_right">
                            <input type="radio" name="rd2">
                            <span class="ic_box"><i class="ri-check-line"></i></span>
                            <div class="chk_p">
                                <p>라디오1_2</p>
                            </div>
                        </label>
                    </div>
                </div>
            </div>

            <h1 class="guide_pg mb-3 mt-5"><span class="bg-primary d-block py-3 px-3 fc_wh fs_17">▼ 테이블 style(넓이 작은 테이블은 class table_scroll 빼기)</span></h1>
            <div class="table_scroll">
                <table class="table_01" summary=" ">
                    <caption>
                        수시 일정
                    </caption>
                    <colgroup>
                        <col width="15%">
                        <col width="25%">
                        <col width="30%">
                        <col width="35%">
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="backslash fs_13">
                                <div>제목1</div>제목2
                            </th>
                            <th>제목</th>
                            <th>제목</th>
                            <th class="slash fs_13">
                                제목1<div>제목2</div>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-left">왼쪽정렬</td>
                            <td class="text-right">오른쪽정렬</td>
                            <td>내용</td>
                            <td>내용</td>
                        </tr>
                        <tr>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                            <td>내용</td>
                        </tr>

                    </tbody>
                </table>
            </div>

            <h1 id="guide_pg3" class="guide_pg mb-3 mt-5"><span class="bg-primary d-block py-3 px-3 text-white fs_17">▼ 페이지 네이션</span></h1>
            <h1 class="mb-3 mt-5 fs_16">▼ 페이지 네이션</h1>
            <ul class="pagination">
                <li class="mr-2"><a href="#" class="disabled"><i class="xi-arrow-left"></i></a></li>
                <li class="mb-n1"><a href="#" class="on">1</a></li>
                <li class="mb-n1"><a href="#">2</a></li>
                <li class="mb-n1"><a href="#">3</a></li>
                <li class="mb-n1"><a href="#">4</a></li>
                <li class="ml-2"><a href="#"><i class="xi-arrow-right"></i></a></li>
            </ul>

            <h1 class="mb-3 mt-5 fs_16">▼ 페이저</h1>
            <article class="pager">
                <button class="btn p-0 d-flex align-items-center"><i class="xi-long-arrow-left fs_26"></i></button>
                <p class="fs_22 mx-5"><span class="text-primary">1</span> / <span>12</span></p>
                <button class="btn p-0 d-flex align-items-center"><i class="xi-long-arrow-right fs_26"></i></button>
            </article>
        </div>
    </div>
</div>

<%@ include file="inc/modal.jsp"%>
<%@ include file="inc/tail.jsp"%>