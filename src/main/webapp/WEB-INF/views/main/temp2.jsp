<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NiceAPI Update</title>
<script type="text/javascript">

        var niceapi_check = "${niceapi_check}";
        var mtHp = "${mtHp}";

    window.onload = function() {
        opener.parent.niceapi_check2(niceapi_check,mtHp);
        window.close();
    }
</script>
</head>
<body>
</body>
</html>