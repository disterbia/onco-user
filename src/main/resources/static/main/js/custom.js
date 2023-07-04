$('.custom-select').on('change',function () {
    $(this).css('color', 'var(--input_text)');
});


/* .btn-group .active */
$('.btn-group .btn').click(function(){
    $(this).addClass('active').siblings().removeClass('active');
});