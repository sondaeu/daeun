<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table, th, td {
  border-style : solid;
  border-width : 1px;
  text-align : center;
}

ul {
  list-style-type: none;
}

li {
  display: inline-block;
}
.container {
	width: 260px;
	margin: 0 auto;
	
}
</style>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<script>
var pw = ${pw};
</script>
</head>
<body>
		<div class="container">
	<div class="login">
	<table>
		<thead>
			<tr>
				<th>비밀번호 찾기</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					회원가입 시 사용한 비밀번호는 <span style="color: #51abf3; font-size: 20px; font-weight: bold;">${fn:substring(pw, 0, 4)}
					<c:forEach begin="1" end="${fn:length(pw) - 4}">*</c:forEach></span>입니다.
				</td>
			</tr>
			<tr>
				<td><input type="button" value="창닫기" onClick="window.open('','_self').close();"></td>
			</tr>
		</tbody>
	</table>
	</div>
	</div>
</body>
</html>