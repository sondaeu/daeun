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

.section-title{
    border-bottom: 2px solid #159efd;
    color: black;
    font-size: 20px;
}

.hotel-list{
	 overflow:auto;
}

.hotel-list-left{
	float: left;
	width: 50%;
}

.hotel-list-right{
	float: left;
	width: 50%;
}

#hotel-list-tbody button{
    background-color: #e7f4fd;
    color: #2b96ed;
    height: 30px;
    font-size: 16px;
    width: 70px;
    border-radius: 5px;
    cursor: pointer;
    margin-right: 5px;
}

#hotel-list-tbody tr{
	border-bottom: 2px solid #fafafa;
	height: 70px;
}
input[type="number"]::-webkit-outer-spin-button, 
input[type="number"]::-webkit-inner-spin-button { -webkit-appearance: none; -moz-appearance: none; appearance: none; margin: 0;}

.hotel-list-table {
	table-layout: fixed;
	width: 100%;
	border-collapse: collapse;
	border-top: 1px solid #a4a9b0;
	border-bottom: 1px solid #ececec;
	text-align: left;
	color: black;
}

.hotel-list-table th{
	padding-left: 10px;
}

.hotel-list-table thead {
	background-color: #F5F4F4;
}

#hotel-list-tbody td{
	padding-left: 10px;
}

</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - 내 호텔 목록</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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
				<div class="section-title">호텔 목록</div>
				<div class="section-content">
					<table class="hotel-list-table">
					<thead>
					<tr height="50px">
					<th width="10%">번호</th>
					<th width="10%">호텔 이름</th>
					
					<th width="80%"></th>
					</tr>
					</thead>
					<tbody  id= "hotel-list-tbody">
							<c:set var="num" value="${list.size()}"></c:set>
							<c:forEach var="vo" items="${list }">
								<tr>
									<td style="padding-left: 15px;" >${num}</td>
									<td style="color: black; font-size: 15px;">${vo.titleHotel }</td>
									<td style="text-align: right;">
										<button
											onclick="location.href='/hotel/product/register?numHotel=${vo.numHotel}'">상품
											등록</button>
										<button
											onclick="location.href='/hotel/product/list?numHotel=${vo.numHotel}&&titleHotel=${vo.titleHotel }'" style="margin-right: 30px;">상품
											목록</button>
									</td>
								</tr>
								<c:set var="num" value="${num - 1}"/>
							</c:forEach>
						</tbody>
					
					</table>
					
					
				
					
			</div>


			</div>
		</div>
		<%@ include file="../common/footer.jspf"%>
	</div>




</body>
</html>