<!-- css -->
<style>
    @charset "UTF-8";
    body.menu_on{overflow: hidden;}
    /* 헤더 */
    .h_menu{position: fixed; left: 0; top: 0; width: 100%; height: var(--hd_height); background: var(--bg); padding: 0 6rem; border-bottom: 1px solid var(--border); display: flex; align-items: center; justify-content: space-between; z-index: 9999;}

    .logo{height: 3rem; display: block;}
    .logo img{height: 100%; width: auto;}

    .pc_nav{height: 100%;}
    .pc_nav .nav_wr{height: 100%;}
    .pc_nav .nav_ul{display: flex; height: 100%;}
    .pc_nav .nav_li{height: 100%; position: relative;}
    .pc_nav .nav_a{display: flex; align-items: center; justify-content: center; width: 100%; height: 100%; padding: 0 3rem;}

    .pc_nav .nav_ul2{display: none; position: absolute; background: var(--bg); top: 100%; left: 50%; transform: translateX(-50%); border: 1px solid var(--border); z-index: 9999;}
    .pc_nav .nav_ul2 a{display: block; padding: 1rem 2rem; white-space: nowrap;}
    .pc_nav .nav_a i{display: none;}

    /* 모바일 메뉴 */
    .hd_menu_btn {font-size: 2rem;}

    .m_menu_wr{visibility: hidden; opacity: 0;  position: fixed; top: 0; right: 0; width: 100%; height: 100%; z-index: 99999; transition: all 0.5s ease-in-out; display: flex; justify-content: flex-end;}
    
    /* x버튼 */
    .close_btn_wr{display: none; opacity: 0;}
    .m_nav .close_btn_wr{display: flex; justify-content: flex-end; opacity: 0;}
    .menu_on .m_nav .close_btn_wr{opacity: 1;}
    .close_btn{padding: 0.5rem; font-size: 2rem; border: 1px solid var(--border); height: auto; }
    
    /* 메뉴 열렸을때 외부 */
    .menu_on .m_menu_wr{visibility: visible; opacity: 1; }
    .m_nav{position: relative; width: 100%; height: 100%; z-index: 99999;  background: var(--bg); transition: all 0.4s ease-in-out; max-width: 0; transform: translateX(100%); visibility: hidden; opacity: 0;}
    .menu_on .m_nav{transform: translateX(0); visibility: visible; opacity: 1; max-width: 50rem;}
    
    .menu_bg{position: fixed; left: 0; top: 0; background: rgba(0,0,0,0.6); transition: all 0.4s ease-in-out; width: 100%; height: 100%; z-index: 99998; visibility: hidden; opacity: 0;}
    .menu_on .menu_bg{visibility: visible; opacity: 1;}

    /* 메뉴 열렸을때 내부 */
    .m_nav .nav_wr{height: auto;}
    .m_nav .nav_ul{display: block;}
    .m_nav .nav_li{height: 100%; position: relative;}
    .m_nav .nav_a{display: flex; align-items: center; justify-content: space-between; width: 100%; height: 100%; padding: 1rem 2rem;}
    .m_nav .nav_a i{display: inline-block;}

    .m_nav .nav_ul2{display: none; background: #f0f0f0; }
    .m_nav .nav_ul2 a{display: block; padding: 1rem 2rem; white-space: nowrap;}

    /*반응형 max 1200 xl*/
    @media (max-width: 1199.98px) {

    } 


    /*반응형 max 992px lg*/
    @media (max-width: 991.98px) {
        .h_menu{padding: 0 2rem;}
        .logo{height: 2rem; display: block;}
        .logo img{height: 100%; width: auto;}
        .pc_nav{display: none;}
    } 

    /*반응형 max 767px md*/
    @media (max-width: 767.98px) {

    } 

    /*반응형 max 576px sm*/
    @media (max-width: 575.98px) {

    }

    @media (max-width:380px) {
        
    }
</style>




<!-- html -->
<div class="h_menu">
    <div><a class="logo" href="/main/index"><img src="${CDN_HTTP}/images/logo.svg" alt="홈으로 이동"></a></div>
    <div class="pc_nav"><%@ include file="nav.jsp"%></div>
    <div class="hd_menu_btn"><a href="#menu"><i class="ri-menu-line"></i></a></div>
</div>

<div class="m_menu_wr">
    <div class="m_nav">
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
    $('.m_nav .nav_a').on('click',function(e){
        // 2차메뉴가 있을경우
        if($(this).siblings('.nav_ul2').length){
            e.preventDefault();
            // 2차 메뉴가 열려있을경우
            if($(this).siblings('.nav_ul2').hasClass('on')){

            } else{
                $('.m_nav .nav_ul2').slideUp();
                $('.m_nav .nav_ul2').removeClass('on');
            }
            $(this).siblings('.nav_ul2').slideToggle().toggleClass('on');
        }
    });

    // PC Nav
    $('.pc_nav .nav_a').on('click',function(e){
        // 2차메뉴가 있을경우
        if($(this).siblings('.nav_ul2').length){
            e.preventDefault();
            // 2차 메뉴가 열려있을경우
            if($(this).siblings('.nav_ul2').hasClass('on')){

            } else{
                $('.pc_nav .nav_ul2').slideUp();
                $('.pc_nav .nav_ul2').removeClass('on');
            }
            $(this).siblings('.nav_ul2').slideToggle().toggleClass('on');
        }
    });

    // 다른곳 클릭시 PC nav 닫기
    $('html').click(function(e){
	if($(e.target).parents('.nav_li').length < 1){
        $('.pc_nav .nav_ul2').slideUp();
        $('.pc_nav .nav_ul2').removeClass('on');
    }
});
</script>