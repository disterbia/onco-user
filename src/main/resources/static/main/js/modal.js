
//알림창
function open_modal_alert(text="", focus_text="", button_label=""){

    if(focus_text == "" && text == ""){
        $('#modal_alert_body').html(
            `<p><span class="text-danger">Error<br></span>오류가 발생했습니다.<br>잠시후 다시 시도해주세요</p>`
        );
    }else if(focus_text == ""){
        $('#modal_alert_body').html(
            `<p>${text}</p>`
        );
    }else{
        $('#modal_alert_body').html(
            `<p><span class="text-danger">${focus_text}</span><br>${text}</p>`
        );
    }

    if(button_label !== ""){
        $('#modal_alert_btn').val(button_label);
    }else{
        $('#modal_alert_btn').val('확인');
    }

    $('#modal_alert').modal();
}

//알림창 - 새로고침
function open_modal_reload(text="", focus_text="", button_label=""){

    if(focus_text == "" && text == ""){
        $('#modal_reload_body').html(
            `<p><span class="text-danger">Error<br></span>오류가 발생했습니다.<br>잠시후 다시 시도해주세요</p>`
        );
    }else if(focus_text == ""){
        $('#modal_reload_body').html(
            `<p>${text}</p>`
        );
    }else{
        $('#modal_reload_body').html(
            `<p><span class="text-danger">${focus_text}</span><br>${text}</p>`
        );
    }

    if(button_label !== ""){
        $('#modal_reload_btn').val(button_label);
    }else{
        $('#modal_reload_btn').val('닫기');
    }

    $('#modal_reload').modal();
}




//알림창 - 페이지 이동
var open_modal_go_url = "";

function open_modal_go(url="", text="", focus_text="", button_label=""){

    open_modal_go_url = url;

    if(focus_text == "" && text == ""){
        $('#modal_go_body').html(
            `<p><span class="text-danger">Error<br></span>오류가 발생했습니다.<br>잠시후 다시 시도해주세요</p>`
        );
    }else if(focus_text == ""){
        $('#modal_go_body').html(
            `<p>${text}</p>`
        );
    }else{
        $('#modal_go_body').html(
            `<p><span class="text-danger">${focus_text}</span><br>${text}</p>`
        );
    }

    if(button_label !== ""){
        $('#modal_go_btn').val(button_label);
    }else{
        $('#modal_go_btn').val('확인');
    }

    $('#modal_go').modal();
}




//알림창 - 페이지 리다이렉션
var open_modal_replace_url = "";

function open_modal_replace(url="", text="", focus_text="", button_label=""){
	
	$('.modal').modal('hide');

    open_modal_replace_url = url;

    if(focus_text == "" && text == ""){
        $('#modal_replace_body').html(
            `<p><span class="text-danger">Error<br></span>오류가 발생했습니다.<br>잠시후 다시 시도해주세요</p>`
        );
    }else if(focus_text == ""){
        $('#modal_replace_body').html(
            `<p>${text}</p>`
        );
    }else{
        $('#modal_replace_body').html(
            `<p><span class="text-danger">${focus_text}</span><br>${text}</p>`
        );
    }

    if(button_label !== ""){
        $('#modal_replace_btn').val(button_label);
    }else{
        $('#modal_replace_btn').val('확인');
    }

    $('#modal_replace').modal();
}

function open_modal_confirm(text="", focus_text="", button_label=""){
	
	if(focus_text == "" && text == ""){
        $('#modal_confirm_body').html(
            `<p><span class="text-danger">Error<br></span>오류가 발생했습니다.<br>잠시후 다시 시도해주세요</p>`
        );
    }else if(focus_text == ""){
        $('#modal_confirm_body').html(
            `<p>${text}</p>`
        );
    }else{
        $('#modal_confirm_body').html(
            `<p><span class="text-danger">${focus_text}</span><br>${text}</p>`
        );
    }
	
	if(button_label !== ""){
        $('#modal_confirm_btn').val(button_label);
    }else{
        $('#modal_confirm_btn').val('확인');
    }

    $('#modal_confirm').modal();
}

function open_modal_confirm2(text="", focus_text="", button_label=""){
	
	if(focus_text == "" && text == ""){
        $('#modal_confirm_body2').html(
            `<p><span class="text-danger">Error<br></span>오류가 발생했습니다.<br>잠시후 다시 시도해주세요</p>`
        );
    }else if(focus_text == ""){
        $('#modal_confirm_body2').html(
            `<p>${text}</p>`
        );
    }else{
        $('#modal_confirm_body2').html(
            `<p><span class="text-danger">${focus_text}</span><br>${text}</p>`
        );
    }
	
	if(button_label !== ""){
        $('#modal_confirm_btn2').val(button_label);
    }else{
        $('#modal_confirm_btn2').val('확인');
    }

    $('#modal_confirm2').modal();
}

function open_modal_confirm3(text="", focus_text="", button_label=""){
	
	if(focus_text == "" && text == ""){
        $('#modal_confirm_body3').html(
            `<p><span class="text-danger">Error<br></span>오류가 발생했습니다.<br>잠시후 다시 시도해주세요</p>`
        );
    }else if(focus_text == ""){
        $('#modal_confirm_body3').html(
            `<p>${text}</p>`
        );
    }else{
        $('#modal_confirm_body3').html(
            `<p><span class="text-danger">${focus_text}</span><br>${text}</p>`
        );
    }
	
	if(button_label !== ""){
        $('#modal_confirm_btn3').val(button_label);
    }else{
        $('#modal_confirm_btn3').val('확인');
    }

    $('#modal_confirm3').modal();
}



$(window).bind("pageshow", function(event) {
	
	$('#modal_reload').on('hidden.bs.modal', function () {
	    location.reload();
	});
	
	$('#modal_go').on('hidden.bs.modal', function () {
	    if(open_modal_go_url == ""){
	        location.href = './index.php';
	        return;
	    }
	    location.href = open_modal_go_url;
	});
	
	$('#modal_replace').on('hidden.bs.modal', function () {
	    if(open_modal_replace_url == ""){
	        location.replace('./index.php');
	        return;
	    }
	    location.replace(open_modal_replace_url);
	});
	
	$('#modal_term').on('show.bs.modal', function () {
		getTerm("");
	});
});


async function getTerm(version){
	try {
        let res = await awaitPost('./getTerm.do', {version: version});   
		if(res.result == 'success'){
			display_term(res, version);
		}else{
			console.log(res);
		}
    } catch (error) {
    	open_modal_alert();
    }
}

function display_term(data, version){
	
	try {
		$("#modal_term_body").scrollTop(0);
		$("#modal_term_body").html('');
		if(data.term.tt_rdate == null){
			$("#modal_term_title").html(`개인정보처리방침<p class="fs_14 fw_400 text-darkgray mt-1">Ver.${data.term.tt_version} (${data.term.tt_wdate} ~ 현재)</p>`);
		}else{
			$("#modal_term_title").html(`개인정보처리방침<p class="fs_14 fw_400 text-darkgray mt-1">Ver.${data.term.tt_version} (${data.term.tt_wdate} ~ ${data.term.tt_rdate})</p>`);
		}
		
		$("#modal_term_body").html(data.term.tt_content);
	
		if(data.versions.length > 0){
			$("#modal_term_body").append(
			`&nbsp&nbsp<p class="fw_700">다른버전 보기</p>`
			);
		}
		
		if(version != ""){
			$("#modal_term_body").append(
			`<a href="javascript:getTerm('')" class="d-block text-secondary">Ver.${data.term.tt_version} (${data.term.tt_wdate} ~ 현재)</a>`
			);
		}
	
		data.versions.forEach((el, index) => {
			if(el.tt_version != version){
				$("#modal_term_body").append(
				`<a href="javascript:getTerm('${el.tt_version}')" class="d-block text-secondary">Ver.${el.tt_version} (${el.tt_wdate} ~ ${el.tt_rdate})</a>`
				);
			}
			
		});
    } catch (error) {
		open_modal_alert();
    }
}