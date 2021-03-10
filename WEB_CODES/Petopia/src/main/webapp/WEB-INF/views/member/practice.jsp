<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<title>마이페이지 메뉴</title>

</head>
<body>
<div id="dialog-message" title="장바구니" style='display:none'>
  상품을 담았습니다.
</div>
<script>
function crayBtn1()
{
	$('#dialog-message').dialog({
		modal: true, 
		buttons: {
			"계속 쇼핑": function() { $(this).dialog('close'); },
			"장바구니로": function() { $(this).dialog('close'); location.href="/hotel/member/attentionList";}
			
		}
	});
}
</script>
<button class="ui-button ui-widget ui-corner-all" onclick="crayBtn1()">창 띄우기</button>
</body>
</html>