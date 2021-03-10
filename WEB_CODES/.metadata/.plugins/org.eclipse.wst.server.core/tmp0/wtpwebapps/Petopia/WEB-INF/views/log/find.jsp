<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.container {
	width: 260px;
	margin: 0 auto;
	
}

#btnIdFind {
	margin: 5px;
    width: 99%;
    height: 56px;
    background-color: #2e8de5;
    border: 1px solid #d9d9d9;
    color: white;
    font-size: 20px;
    border-radius: 4px;
    cursor: pointer;
}

#input{
	margin: 5px;
    width: 99%;
    height: 40px;
    color: black;
    font-size: 20px;
    border-radius: 4px;
}

</style>



<meta charset="UTF-8">
<title>아이디/비밀번호 찾기</title>
</head>
<body>
	
	<div class="container">
	<div class="login">

									<form action="/hotel/log/idFind" method="post" id="idFind" name="idFind">
										<table>
											<tbody>
											</tbody>
										</table>
										<table>
											<tbody>
												<tr>
													<td>이름</td>
													<td><input type="text" id="name" name="name"></td>
												</tr>
												<tr>
													<td>이메일</td>
													<td><input type="text" id="email" name="email"></td>
												</tr>
											</tbody>											
										</table>
										<div><input type="button" id="btnIdFind" name="btnIdFind" value="아이디 찾기" onClick="fu_idFind()"></div>
									</form>

	</div>
	</div>
	<script>
	function fu_idFind() {
	    var idFind = document.idFind;

	    if(idFind.name.value == "") {
            alert("이름을 입력해주세요.");
            idFind.name.focus();
            return;
	    }
	    
		if(idFind.email.value == "") {
			alert("이메일을 입력해주세요.");
	        idFind.email.focus();
	        return;
	    }

		idFind.submit();
	}
		
	function fu_pwFind() {
	    var pwFind = document.pwFind;
	
	    if(pwFind.id.value == "") {
	    	alert("아이디를 입력해주세요.");
	        pwFind.id.focus();
	        return;
	    }
	    
	    if(pwFind.email.value == "") {
	    	alert("이메일을 입력해주세요.");
	        pwFind.email.focus();
	        return;
	    }
		
	    pwFind.submit();
	}
	</script>
</body>
</html>