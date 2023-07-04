<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NiceAPI Update</title>
<script type="text/javascript">
    window.onload = function() {
        document.form_chk.submit();
    }
</script>
</head>
<body>
<form name="form_chk" id="form_chk" method="get" action="https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb">
    <input type="hidden" id="m" name="m" value="service" />
    <input type="hidden" id="token_version_id" name="token_version_id" value="${token_version_id}" />
    <input type="hidden" id="enc_data" name="enc_data" value="${enc_data}" />
    <input type="hidden" id="integrity_value" name="integrity_value" value="${integrity_value}" />
</form>
</body>
</html>
