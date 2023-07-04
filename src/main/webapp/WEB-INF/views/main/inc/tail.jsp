<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
	<div class="ft">
        <div class="a_link">
            <div class="container px-0">
                <a href="/main/privacyPolicy" class="fs_16 fw_400">개인정보처리방침</a>
                <a href="/main/terms"  class="fs_16 fw_400">이용약관</a>
            </div>
        </div>
		<div class="container px-0 pt_50 pb_60">
			<div class="d-flex flex-column flex-lg-row justify-content-between align-items-start">
				<div class="ft_left">
                    <div>
                        <p class="fs_16 fw_700 ">(주)온코마스터</p>
                        <p class="fc_0D12 fs_16 fw_300  mt_16">사업자등록번호 : 108-87-02074 <span class="px-2">|</span class="px-2"> 대표이사 : 장우영</p>
                        <p class="fc_0D12 fs_16 fw_300 mt_12 ">주소 : 서울특별시 동대문구 회기로 117-3, 산업지원동 305호</p>
                        <p class="fc_0D12 fs_16 fw_300 mt_12 ">이메일 : <a href="mailto:contact@oncomaster.co.kr">contact@oncomaster.co.kr</a></p>
                    </div>
					<p class="mt_30 fs_16 fw_200 fc_5f6f">Copyright 2023. 온코마스터 all right reserved.</p>
				</div>
                <div class="ft_right">
                    <div>
                        <img src="${CDN_HTTP}/images/logo_gray.svg" alt="온코마스터 로고">
                    </div>
                </div>
			</div>
		</div>
        <div class="top_btn_wr">
            <button class="top_btn"><i class="xi-arrow-up fs_20"></i></button>
        </div>
	</div>
    <script>
        $( window ).scroll( function() {
            if ( $( this ).scrollTop() > 200 ) {
                $( '.top_btn_wr' ).fadeIn();
            } else {
                $( '.top_btn_wr' ).fadeOut();
            }
        } );

        $( '.top_btn_wr' ).click( function() {
            $( 'html, body' ).animate( { scrollTop : 0 }, 400 );
            $('.top_btnd').toggleClass('on');
    return false;
        } );
    </script>
</body>
</html>