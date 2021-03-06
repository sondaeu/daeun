<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.container {
	width: 1060px;
	margin: 0 auto;
	
}

.login{
	text-align:center;
	margin: 0 auto;
    width: 460px;
    height: 520px;
    
}
#submit {
	margin: 5px;
    width: 99%;
    height: 56px;
    background-color: #2e8de5;
    border: 1px solid #d9d9d9;
    color: white;
    font-size: 20px;
    border-radius: 4px;
}

#input{
	margin: 5px;
    width: 99%;
    height: 40px;
    color: black;
    font-size: 20px;
    border-radius: 4px;
}

#submit {
	cursor: pointer;
}

.login-top{
	height: 200px;
	text-align: center;
	font-size: 30px;
	line-height: 200px;
	color: black;
}

.login-top span{

	color: #51abf3;
    
}

</style>
<meta charset="UTF-8">
<title>마이페이지 메뉴 - 로그인</title>
</head>
<body>
	<div class="container">
	<%@ include file="../common/header.jspf"%>
	</div>
	<%@ include file="../common/search.jspf"%>
	
	<div class="container">
		<div class="login-top">
			<h1><span>멍멍이</span>의 하루</h1>
		</div>

		<div class="login">
			<form action="login-post" method="post">
				<input type="text" id="input" name="id" placeholder="아이디" required autofocus>
				<br> <input type="password" id="input" name="password"
					placeholder="비밀번호" required> <br> <input
					type="hidden" name="url" value="${url }" /> <input
					type="submit" id="submit" value="로그인">
				<c:if test="${param.loginFail eq 'loginFail'}">
					<p>아이디 비밀번호가 일치하지 않습니다.</p>
				</c:if>
				<p><a href="/hotel/log/find" onclick="window.open(this.href,'아이디 찾기', 'width = 600, height = 160, scrollbars=yes, resizable=yes'); return false;">아이디</a> 
				| <a href="/hotel/log/passwordfind" onclick="window.open(this.href,'아이디 찾기', 'width = 600, height = 160, scrollbars=yes, resizable=yes'); return false;">비밀번호 찾기</a> | 
				<a href="/hotel/member/newMember">회원가입</a></p>
			</form>
		</div>
		<%@ include file="../common/footer.jspf"%>
	</div>
</body>
</html>