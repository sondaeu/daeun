<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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

.myNavWrap {
	border: 1px solid #DDD;
}

#content {
	margin: 0 auto;
	padding: 32px 51px 95px;
}

.section_pwconfirm {
	width: 356px;
	margin: 0 auto;
	padding: 32px 31px 32px;
	border: 1px solid #dadada;
	background: #fff;
}

#submit {
	width: 100%;
	height: 56px;
	background-color: #2e8de5;
	border: 1px solid #d9d9d9;
	color: white;
	font-size: 20px;
	border-radius: 4px;
	cursor: pointer;
}

#nowPassword {
	width: 100%;
	color: black;
	font-size: 20px;
}

.info-update-title{
	height: 30px;
    border-bottom: 2px solid #159efd;
    color:black;
    font-size: 20px;
    
}
.info-update-tap-right{
	float: right;
	width: 395px;
	cursor: pointer;
	background-color: white;
	border-top: 2px solid black;
	border-right: 2px solid black;
	border-left: 2px solid black;
	border-bottom : 0;
	
	
}

.info-update-tap-left{
	float: left;
	width: 396px;
	cursor: pointer;
	border-bottom: 2px solid black;
}


.info-update-tap{
	
	height : 62px;
	line-height: 60px;
	text-align: center;
	overflow: hidden;
	background-color: #f1f0f3;
	margin-top: 20px;
	margin-bottom: 20px;
	font-size: 16px;
	color: black;
	
}


</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - 비밀번호변경</title>
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
		
			<div class="info-update-title">비밀번호 수정</div>
			<div class="info-update-tap">
			
			<div onclick="location.href='updatePassword'" class="info-update-tap-right">비밀번호 수정</div>
			
			<!-- 1:관리자, 2:개인회원, 3:업체회원 -->
			<c:if test="${SessionAuth eq '1' }">
					<div onclick="location.href='update'" class="info-update-tap-left">개인정보 수정</div>
			</c:if>
			
			<c:if test="${SessionAuth eq '2' }">
					<div onclick="location.href='update'" class="info-update-tap-left">개인정보 수정</div>
			</c:if>
			
			<c:if test="${SessionAuth eq '3' }">
					<div onclick="location.href='accommUpdate'" class="info-update-tap-left">업체정보 수정</div>
			</c:if>
			
			</div>
				<div id="content">
					<div class="section_pwconfirm">
						<h1 style="margin-bottom: 20px;">비밀번호 변경</h1>
						<form onsubmit="return formCheck()" action="updatePassword"
							method="POST">


							<input onblur=NowPasswordCheck(); type="password"
								id="nowPassword" name="nowPassword" placeholder="현재 비밀번호"
								required="required"> <input hidden="hidden"
								id="nowPasswordCheck" type="password" name="nowPasswordCheck"
								value="${MemberVO.password }">
							<div id="output" style="height: 20px"></div>


							<input type="password" id="Password" name="password"
								placeholder="새 비밀번호" required="required"> <br> <input
								onblur=passwordCheck(); type="password" id="PasswordCheck"
								name="nowPasswordCheck" placeholder="새 비밀번호 확인"
								required="required">
							<div id="output2" style="height: 20px"></div>

							<div>
								<input id="submit" type="submit" value="비밀번호 변경">
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
		<%@ include file="../common/footer.jspf"%>
	</div>

	<script type="text/javascript">
	
		function passwordCheck() {
			var regexpPassword = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/; // 비밀번호 정규식
			var Password = document.getElementById('Password').value;
			var PasswordCheck = document.getElementById('PasswordCheck').value;
			var output2 = document.getElementById('output2');

			if (Password === "" || PasswordCheck === "") {
				output2.innerHTML = '비밀번호를 입력하세요.';
				output2.style.color = 'red';
			} else if (false === regexpPassword.test(Password)){
				output2.innerHTML = '최소 8자의 영문과 숫자 조합으로 사용 가능합니다.';
				output2.style.color = 'red';
			}
			else if (Password == PasswordCheck) {
				output2.innerHTML = '비밀번호가 일치합니다.';
				output2.style.color = 'green';
			} else {
				output2.innerHTML = '비밀번호가 일치하지 않습니다.';
				output2.style.color = 'red';
			}
		}

		function NowPasswordCheck() {
			var Password = document.getElementById('nowPassword').value;
			var PasswordCheck = document.getElementById('nowPasswordCheck').value;
			var output = document.getElementById('output');

			if (Password == PasswordCheck) {
				output.innerHTML = '비밀번호가 일치합니다.';
				output.style.color = 'green';
			} else if (Password === "") {
				output.innerHTML = '비밀번호를 입력하세요.';
				output.style.color = 'red';
			} else {
				output.innerHTML = '비밀번호가 일치하지 않습니다.';
				output.style.color = 'red';
			}
		}

		function formCheck() {
			var nowPassword = document.getElementById('nowPassword').value;
			var nowPasswordCheck = document.getElementById('nowPasswordCheck').value;
			var Password = document.getElementById('Password').value;
			var PasswordCheck = document.getElementById('PasswordCheck').value;
			var regexpPassword = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/; // 비밀번호 정규식
			if (nowPassword == nowPasswordCheck && Password == PasswordCheck && true===regexpPassword.test(Password)) {
				return true;
			} else {
				return false;

			}

		}
	</script>
</body>
</html>