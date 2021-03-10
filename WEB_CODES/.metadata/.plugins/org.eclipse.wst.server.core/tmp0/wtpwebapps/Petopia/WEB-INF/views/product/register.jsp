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

.section-content{
	margin-top: 20px;
	text-align: center;
}

.center {
	overflow: hidden;
	padding-top: 30px;
	margin-bottom: 40px;
}

.search {
	height: 100px;
	background-color: grey;
}

h1 {
	color: black;
	text-align: center;
}

.tbl_model{
	
    width: 100%;
    table-layout: fixed;
    border-spacing: 0;
    border-collapse: collapse;
    word-wrap: break-word;
    word-break: keep-all;
    border: 0;
    border-bottom: 1px solid #e5e5e5;}
    
.tbl_model th {
    text-align: left;
    vertical-align: top;
    letter-spacing: -1px;
    border: 0;
    border-top: 1px solid #e5e5e5;
    color: #333;
    border-right: 1px solid #e5e5e5;
    background: #f9f9f9;
    display: table-cell;
    font-weight: bold;
    width: 10%;
    padding: 10px;

}

.tbl_model td {	
    text-align: left;
    letter-spacing: -1px;
    border: 0;
    border-top: 1px solid #e5e5e5;
}

strong {

    font-size: 30px;
    color: skyblue;
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
	border-bottom: 2px solid black;
	
	
}

.info-update-tap-left{
	float: left;
	width: 396px;
	border: 2px solid black;
	border-bottom-color: white;
	background-color: white;
	cursor: pointer;
	
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

.section-title{
    border-bottom: 2px solid #159efd;
    color: black;
    font-size: 20px;
}

input[type="number"]::-webkit-outer-spin-button, 
input[type="number"]::-webkit-inner-spin-button { -webkit-appearance: none; -moz-appearance: none; appearance: none; margin: 0;}

</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - 상품 등록</title>
</head>
<body>
	<div class="container">
		<%@ include file="../common/header.jspf"%>
	</div>
	<%@ include file="../common/search.jspf"%>


	<div class="container">
		<div class="center">
			<%@ include file="../common/accommNav.jspf"%>
			<div class="section">
				<div class="section-title">상품 등록</div>
				<div class="section-content">
				<form action="register" method="post">
					<table class="tbl_model">
						<caption style="caption-side: top;">상품 1</caption>
						<tbody>

							<%-- 이름 --%>
							<tr>
								<th>상품 이름</th>
								<td><input type="text" name="nameProlist[0]"
									placeholder="상품 이름" style="border: none;"><br> <input type="hidden"
									name="numHotel" value="${param.numHotel }"></td>
							</tr>

							<%-- 연락처 --%>
							<tr>
								<th>가격</th>
								<td><input type="number" name="priceProlist[0]"
									placeholder="원가 입력" required="required" style="border: none;"></td>
							</tr>

							<%-- 이메일 --%>
							<tr>
								<th>할인 가격</th>
								<td><input type="number" name="saleProlist[0]"
									placeholder="할인 가격 입력" required="required" style="border: none;"></td>
							</tr>
						</tbody>
					</table>
					<input type="button" value="추가" id="addInput">
					<c:forEach var='z' begin='1' end='20' step='1'>
						<div id="replies${z }"></div>
					</c:forEach>
					<br> <input type="submit" value="작성 완료"
							style="background-color: #51abf3; width: 280px; height: 52px; line-height: 52px; color: #fff; font-size: 16px; border-radius: 1px; cursor: pointer;">
					</form>
			</div>

			</div>
		</div>
		<%@ include file="../common/footer.jspf"%>
	</div>



	<%
    String vo = request.getParameter("vo");
    String numHotel = request.getParameter("vo");
   %>
	<script type="text/javascript">   
   var numremove = 1;
  	var num = 1;
   $(document).ready(function(){
     $('#addInput').click(function(){
 		var x = "#replies" + num;
 		var text = '<input type="text" name="nameProlist[' + num + ']" placeholder="제품 이름" required><br>'
 		+ '<input type="hidden" id="num" value="' + num +'">'
       + '<input type="number" name="priceProlist[' + num + ']" placeholder="원가 입력" required="required" ><br>'
       + '<input type="number" name="saleProlist[' + num + ']" placeholder="세일 가격 입력" required="required"><br>'
       + '<input type="hidden" name="numHotel" value="+ <%=vo %> + "><br>'
       + '<input type="button" value="삭제" id="deleteInput"><br>';
       $(x).append(text)  
       num++;
       console.log(x);          
       console.log(text);
     });      
     
     $(document).on('click', '#deleteInput', function(){
       console.log(this);
       $(this).parent().remove();
     })
   }); // end document  
   </script>

</body>
</html>