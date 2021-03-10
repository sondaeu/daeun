<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

.join-select{
	width: 960px;
	height: 900px;
	margin: 0 auto;
	overflow: hidden;
}
.join-select-content-top{
	height: 200px;
	text-align: center;
	font-size: 30px;
	line-height: 200px;
	color: black;
}

.join-select-content-top span{

	color: #51abf3;
    
}

.join-select-content-bottom{
	margin: 30px;
	width: 400px;
	height: 450px;
	float: left;
	border: 1px solid #e5e7ea;
	text-align: center;
	overflow: hidden;
}
.join-select-content-bottom-title{
	height: 100px;
	line-height: 100px;
	color: #51abf3;
	font-size: 20px;
	
}

.join-select-content-bottom-img{
	
	height: 200px;
	overflow: hidden;
	display: flex;
	align-items: center;
	justify-content: center;
}

.join-select-content-bottom-img img {
	max-width: 250px;
	height: auto;
	
}

#userJoinus{
	background-color: #51abf3;
	width: 280px;
    height: 52px;
    line-height: 52px;
    color: #fff;
    font-size: 16px;
    -webkit-border-radius: 1px;
    -moz-border-radius: 1px;
    border-radius: 1px;
    cursor: pointer;
    margin-top:10px;
}

#accommJoinus{
	background-color: #424d5d;
	width: 280px;
    height: 52px;
    line-height: 52px;
    color: #fff;
    font-size: 16px;
    -webkit-border-radius: 1px;
    -moz-border-radius: 1px;
    border-radius: 1px;
    cursor: pointer;
    margin-top:10px;
}

.content{
	margin: 0 auto;
	width: 400px;
	padding: 20px;
}

.main label{
	font-size: 14px;
	font-weight: bold;
	color: black;
}
.menu {
	margin-top: 20px;
	margin-bottom: 20px;
}

#userJoin{
	background: #2e8de5;
    border: 1px solid #d9d9d9;
    color: #fff;
    width: 100%;
    height: 60px;
    font-size: 24px;
    font-weight: bold;
    line-height: 60px;
}
</style>
<meta charset="UTF-8">
<script type="text/javascript">
$(document).ready(function() {
	
});


</script>

<title>멍멍이의 하루 - 회원가입</title>
</head>
<body>
	
		<div class="container">
	<%@ include file="../common/header.jspf"%>
	</div>
	<%@ include file="../common/search.jspf"%>

	<div class="wrap">
		<div class="container">
			<div class="join-select">
			<div class="join-select-content-top">
			<h1><span>회원가입</span>을 환영합니다.</h1>
			</div>
			<div class="join-select-content-bottom">
					<div class=join-select-content-bottom-title>알맞은 호텔을 찾아보세요.</div>
					
					<div class=join-select-content-bottom-img>
					<img src="<c:url value="/resources/img/123.jpg" />">
					</div>
					
					<a href="../member/userJoinus"> <input type="button"
						id="userJoinus" value="개인 회원가입">
					</a>

				</div>
			<div class="join-select-content-bottom">
					<div class=join-select-content-bottom-title style="color:#424d5d;">손님을 찾아보세요.</div>
					
					<div class=join-select-content-bottom-img st>
					<img src="<c:url value="/resources/img/321.png" />" style="box-shadow: 0px 0px 1px 3px #dcdcdc">
					</div>
					
					<a href="../member/accommJoinus"> <input type="button"
						id="accommJoinus" value="업체 회원가입">
					</a>

				</div>

			</div>
			<%@ include file="../common/footer.jspf"%>
		</div>
	</div>
	
</body>
</html>