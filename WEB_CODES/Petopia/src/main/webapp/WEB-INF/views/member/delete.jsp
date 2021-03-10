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

.section {
	float: right;
	width: 75%;
}

.center {
	overflow: hidden;
	padding-top: 30px;
	color: black;
	font-size: 15px;
	margin-bottom: 300px;
}

.search {
	height: 100px;
	background-color: grey;
}

h1 {
	color: black;
	text-align: center;
}

.myNav {
	
	color: black;
	font-size: 14px;
	padding-left: 25px;
	line-height: 40px;
	cursor: pointer;
}

#mytitle {
	line-height: 81px;
	border: 1px solid #DDD;
	border-bottom: 4px solid #159EFD;
	
}
.myNavWrap{

	border: 1px solid #DDD;
}

.delete-content{
	margin-top: 40px;
}

.delete-title{
	height: 30px;
    border-bottom: 2px solid #159efd;
    color:black;
    font-size: 20px;
    
}

.delete{
	width: 356px;
	margin: 0 auto;
	padding: 32px 31px 32px;
	border: 1px solid #dadada;
	background: #fff;

}

#submit{
	width: 100%;
	height: 56px;
	background-color: #2e8de5;
	border: 1px solid #d9d9d9;
	color: white;
	font-size: 20px;
	border-radius: 4px;
	cursor: pointer;
	
}
</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - 회원 탈퇴</title>
</head>
<body>
	<div class="container">
	<%@ include file="../common/header.jspf"%>
	</div>
	<%@ include file="../common/search.jspf"%>
	<div class="container">
		<div class="center">
						<!-- 1:관리자, 2:개인회원, 3:업체회원 -->
			<c:if test="${SessionAuth eq '1' }">
					<%@ include file="../common/memberNav.jspf"%>
			</c:if>
			
			<c:if test="${SessionAuth eq '2' }">
					<%@ include file="../common/memberNav.jspf"%>
			</c:if>
			
			<c:if test="${SessionAuth eq '3' }">
					<%@ include file="../common/accommNav.jspf"%>		
			</c:if>
			<div class="section">
			<div class="delete-title">회원탈퇴</div>
			
			<div class="delete-content">
			<div class="delete">
			<h1 style="margin-bottom: 20px;">회원 탈퇴</h1>
			<div style="margin-bottom: 10px;"><p><strong>아이디</strong> <span style="margin-left: 35px;">${MemberVO.id }</span></p></div>
			<form onsubmit="return formCheck()" action="deleteMember"
							method="POST">
			<div><strong>비밀번호</strong> <input onblur=NowPasswordCheck(); type="password"
								id="Password" name="nowPassword"
								required="required" style="width: 260px; height: 30px; margin-left: 20px;"> <input hidden="hidden"
								id="PasswordCheck" type="password" name="nowPasswordCheck"
								value="${MemberVO.password }">
							<div id="output" style="height: 20px"></div></div>
							<input id="submit" type="submit" value="확인">
			</form>
			</div>
			</div>
			</div>
		</div>
		<%@ include file="../common/footer.jspf"%>
	</div>
	<script type="text/javascript">
	function formCheck() {
		var Password = document.getElementById('Password').value;
		var PasswordCheck = document.getElementById('PasswordCheck').value;
		if (Password == PasswordCheck) {
			return true;
		} else {
			output.innerHTML = '비밀번호가 일치하지 않습니다.';
			output.style.color = 'red';
			return false;

		}

	}
	</script>
</body>
</html>