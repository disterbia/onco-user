<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!-- css -->
<style>
    @charset "UTF-8";
    body.menu_on{overflow: hidden;}
    /* 헤더 */
    .h_menu{position: fixed; left: 0; top: 0; width: 100%; height: var(--hd_height); background:rgba(255,255,255,16%);   z-index: 800;}
    .h_menu::before {
        content: "";
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background:rgba(255,255,255,16%);
        backdrop-filter:  blur(10px);
        filter: blur(10px);
        z-index: -1;
    }
    .h_menu .container-fluid{height: var(--hd_height); display: flex; align-items: center; justify-content: space-between; width: 100%; padding: 0 5.7rem ;}
    .logo{height: 3.8rem; display: block;}
    .logo img{height: 100%; width: auto; margin-right: 2.3rem;}

    .pc_nav{height: 100%;}
    .pc_nav .nav_wr{height: 100%;}
    .pc_nav .nav_ul{display: flex; height: 100%;}
    .pc_nav .nav_li{height: 100%; position: relative;}
    .pc_nav .nav_a{display: flex; align-items: center; font-size: 2rem; font-weight: 500; justify-content: center; width: 100%; height: 100%; padding: 3.8rem 3.5rem;}

    .pc_nav .nav_ul2{display: none; width: 132px; background-color: #F5F5F5; box-shadow: 1px 10px 10px rgba(0,0,0,0.10);
    border-radius: 1rem;
    overflow: hidden;}
    .pc_nav .nav_li:hover .nav_ul2{display: block; position: absolute;  top: 100%; left: 50%; transform: translateX(-50%); z-index: 9999;}
    .pc_nav .nav_li:hover .nav_a{ color: var(--primary);}
    .pc_nav .nav_ul2 a{ display: block; padding: 1.5rem 0; white-space: nowrap; text-align: center; font-size: 1.7rem; font-weight: 400}
    .pc_nav .nav_ul2 a:hover{background-color: #2BBFFF; color: #fff;}
    .pc_nav .nav_a i{display: none;}

    /* 모바일 메뉴 */
    .hd_menu_btn {font-size: 2rem; display: none;}

    .m_menu_wr{visibility: hidden; opacity: 0;  background-color: rgba(0,0,0,0.5);  position: fixed; top: 0; right: 0; width: 100%; height: 100%; z-index: 99999; transition: all 0.5s ease-in-out; }
    

    /* 모바일 메뉴 탑 */
    .m_nav_top{
        background-color: #fff;
        padding-bottom: 3rem;
    }
    .m_nav_top .main_btn{
        margin-top: 0 ;
    }
    /* x버튼 */
    .close_btn_wr{display: none; opacity: 0;}
    .m_nav .close_btn_wr{display: flex; justify-content: flex-end; opacity: 0; padding-top: 1rem; padding-right: 1rem;}
    .menu_on .m_nav .close_btn_wr{opacity: 1; background-color: #Fff;}
    .close_btn{padding: 0.5rem; font-size: 2rem; height: auto; color:  #575757; }
    
    /* 메뉴 열렸을때 외부 */
    .menu_on .m_menu_wr{visibility: visible; opacity: 1;}
    .m_nav{position: relative; width: 100%; height: 100%; overflow-y:scroll; z-index: 99999;  float: right; background: #f7f7f7; transition: all 0.4s ease-in-out; max-width: 0; transform: translateX(100%); visibility: hidden; opacity: 0;}
    .menu_on .m_nav{transform: translateX(0); visibility: visible; opacity: 1; max-width: 50rem; float: right; }
    
    .menu_bg{position: fixed; left: 0; top: 0; background: transparent; transition: all 0.4s ease-in-out; width: 100%; height: 100%; z-index: 99998; visibility: hidden; opacity: 0;}
    .menu_on .menu_bg{visibility: visible; opacity: 1;}

    /* 메뉴 열렸을때 내부 */
    .m_nav .nav_wr{ height: auto; background-color: #F7F7F7; padding: 2.2rem 0;}
    .m_nav .nav_ul{ display: block;}
    .m_nav .nav_li{ height: 100%; position: relative; }
    .m_nav .nav_a{ display: flex; align-items: center; border-bottom: 1px solid #D2DCE8; justify-content: space-between; width:calc(100% - 3.2rem); height: 100%; margin: 0 1.6rem; padding: 1.8rem 0; font-size: 1.8rem; font-weight: 700;}
    .m_nav .nav_a i{ display: inline-block; color: #707070;}

    .m_nav .nav_ul2{ display: none;  background-color: #F7F7F7; }
    .m_nav .nav_ul2 a{display: block; padding: 1.8rem 1rem; border-bottom: 1px solid #D2DCE8; white-space: nowrap; font-size: 1.6rem; font-weight: 400; margin: 0 1.6rem; }
    .m_nav .nav_ul2 li:hover a{ color:#2BBFFF;}
    .m_nav .nav_li.on .nav_a { color:#2BBFFF;}

    /*반응형 max 1200 xl*/
    @media (max-width: 1560.98px) {
        .h_menu .container-fluid{
            padding: 0 2rem ;
        }
    }
    @media (max-width: 1400.98px) {
        .h_menu .container-fluid{
            padding: 0 1.6rem ;
        }
        .pc_nav .nav_a{
            padding: 3.8rem 2rem;
        }
    }
    @media (max-width: 1199.98px) {
        .h_menu{padding: 0 2rem; height: 5rem;}
        .h_menu .container-fluid{
            height: 5rem;
            justify-content: space-between;
            padding: 0 2rem 0 0;
        }
        .logo{height: 3.1rem;}
        .pc_nav, .lo_wrap{display: none;}
        .m_nav .lo_wrap{
            display: block;
            margin-top: 2rem;
        }
        .hd_menu_btn{display: block; position: absolute; right: 2rem; top: 1.6rem; }

    } 


    /*반응형 max 992px lg*/
    @media (max-width: 991.98px) {
    } 

    /*반응형 max 767px md*/
    @media (max-width: 767.98px) {

    } 

    /*반응형 max 576px sm*/
    @media (max-width: 575.98px) {
        
        .h_menu{
            padding: 0 1.6rem;
        }
        .h_menu::before {
            background:rgba(255,255,255,50%);
        backdrop-filter:  blur(0px);
        filter: blur(0px);
        }
        .h_menu .container-fluid {
            padding: 0;
        }
        .h_menu .logo img {
            width: 4rem;
        }

    }

    @media (max-width:380px) {
        
    }
</style>




<!-- html -->
<div class="h_menu">
    <div class="container-fluid">
    <div class="d-flex align-items-center justify-content-between w-100">
            <div class="d-flex align-items-center">
                <div><a class="logo" href="/main/index"><img src="${CDN_HTTP}/images/logo.svg" alt="홈으로 이동"></a></div>
                <div class="pc_nav"><%@ include file="nav.jsp"%></div>
            </div>
            <div class="lo_wrap">
                <ul class="d-flex aling-items-center hd_login_wr">
                    <c:if test="${not empty SPRING_SECURITY_CONTEXT}">
                        <li><a href="/main/logout" class="fs_18">로그아웃</a></li>
                    </c:if>
                    <c:if test="${empty SPRING_SECURITY_CONTEXT}">
                        <li><a href="/main/login" class="fs_18">로그인</a></li>
                    </c:if>
                    <c:if test="${empty SPRING_SECURITY_CONTEXT}">
                        <li class="mx_18"> | </li>
                        <li><a href="/main/joinStart" class="fs_18">회원가입</a></li>
                    </c:if>
                </ul>
            </div>
        </div>
        <div class="hd_menu_btn"><a href="#menu"><i class="ri-menu-line"></i></a></div>
    </div>
</div>

<div class="m_menu_wr">
    <div class="m_nav">
        <div class="close_btn_wr"><button class="close_btn btn" type="button"><i class="xi-close"></i></button></div>
        <div class="container m_nav_top">
            <img src="${CDN_HTTP}/images/logo.svg" width="46px" alt="온코마스터"/>
            <p class="fs_22 fw_700 line_h1_3 mt-3">온코마스터를<br/>
                방문해주셔서 감사합니다.
            </p>

            
            <div class="lo_wrap">
                <ul class="d-flex aling-items-center hd_login_wr">
                    <c:if test="${not empty SPRING_SECURITY_CONTEXT}">
                        <li><a href="/main/logout" class="fs_16">로그아웃</a></li>
                    </c:if>
                    <c:if test="${empty SPRING_SECURITY_CONTEXT}">
                        <li><a href="/main/login" class="fs_16">로그인</a></li>
                    </c:if>
                    <c:if test="${empty SPRING_SECURITY_CONTEXT}">
                        <li class="mx_18"> | </li>
                        <li><a href="/main/joinStart" class="fs_16">회원가입</a></li>
                    </c:if>
                </ul>
            </div>


        </div>
        <%@ include file="nav.jsp"%>
    </div>
    <div class="menu_bg"></div>
</div>





<!-- js -->
<script>
    // 모바일 메뉴
    $('.hd_menu_btn').on('click',function(){
        $('body').addClass('menu_on');
    });

    // 모바일 메뉴 닫기
    $('.close_btn_wr').on('click',function(){
        $('body').removeClass('menu_on');
    });

    // 검은색 배경 눌러도 메뉴 닫기
    $('.menu_bg').on('click',function(){
        $('body').removeClass('menu_on');
    });

    // 모바일 메뉴 내부
    $('.m_nav .nav_a').on('click',function(){
        // 2차메뉴가 있을경우
        if($(this).siblings('.nav_ul2').length){
            // 2차 메뉴가 열려있을경우
            if($(this).siblings('.nav_ul2').hasClass('on')){

            } else{
                $('.nav_ul2').slideUp();
                $('.nav_ul2').removeClass('on');
            }
            $(this).siblings('.nav_ul2').slideToggle().toggleClass('on');
        }
    });
</script>