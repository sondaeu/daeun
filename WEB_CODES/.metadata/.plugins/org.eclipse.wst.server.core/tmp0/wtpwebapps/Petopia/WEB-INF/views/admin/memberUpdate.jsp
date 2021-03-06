<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
input[type=text][readonly] {
	border: none;
}

input[type=text]{
	border:none;
}

input[type=textarea]{
	border:none;
}

.title{
	margin-top:21px;
    margin-bottom: 21px;
    line-height: 22px;
    letter-spacing: -1px;
    font-size: 20px;
    color: #1e2732;
    padding-bottom: 15px;
    border-bottom: 1px solid #a4a9b0;
}

.guide{
	margin-bottom: 14px;
    font-size: 14px;
    line-height: 20px;
    letter-spacing: -1px;
    text-align: center;
    color: #757c8a;
    font-weight: bold;
}

table{
	table-layout: fixed;
    width: 100%;
    border-collapse: collapse;
    border-top: 1px solid #ececec;
    font-size: 14px;
    line-height: 20px;
    color: #5e636d;
}

td{
    padding: 12px 20px 12px 20px;
    border-bottom: 1px solid #ececec;
    color: #5e636d;
}

th{
	width:92px;
	padding: 13px 0 13px 20px;
    text-align: left;
    vertical-align: middle;
    color: #222;
    font-weight: 400;
    background: #f8f9fa;
    border-bottom: 1px solid #ececec;
}

#updateBtn {
	display: inline-block;
    width: 100px;
    height: 38px;
    border: 1px solid #2383dc;
    overflow: hidden;
    background: #2e8de5;
    border-radius: 20px;
    display: inline-block;
    line-height: 16px;
    padding: 11px 0;
    font-size: 18px;
    font-weight: bold;
    color: #fff;
    cursor: pointer;
}

#cancel{
	display: inline-block;
    width: 100px;
    height: 38px;
    border: 1px solid #9ba0a8;
    overflow: hidden;
    background: #a4a9b0;
    border-radius: 20px;
    display: inline-block;
    line-height: 16px;
    padding: 11px 0;
    font-size: 18px;
    font-weight: bold;
    color: #fff;
    cursor: pointer;
}

.close{
	position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 32px;
    font-size:15px;
    background: #f8f9fa;
    border-top: 1px solid #ececec;
    text-align: right;
    color : #1e2732;
}

.close a{
	position: relative;
    display: inline-block;
    padding-right: 14px;
    margin: 8px 16px 0 0;
    font-size: 14px;
    line-height: 16px;
    color: #757c8a;
    cursor: pointer;
}

.close a:hover {
	color: black;
}

#btnFindAddress {
    background-color: #e7f4fd;
    color: #2b96ed;
    font-size: 13px;
    border-radius: 5px;
    padding: 5px;
    cursor: pointer;
    border: none;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<meta charset="UTF-8">
<title>???????????? ??????</title>
</head>
<body>
	<div class="container">
		<div class="title">????????? - ?????? ?????? ??????</div>
		<form action="/hotel/admin/updateMember" method="get" id="updateMember" name="updateMember" >
			<input type="hidden" id="page" name="page" value="${page}" />
			<strong style="color: #2e8de5; font-size: 25px;">${memberVO.id }</strong>?????? ???????????????.<br>
			<input type="hidden" id="id" name="id" value="${memberVO.id}" />
			<table class="tbl_model" >
				<tbody>
					<tr>
						<th>????????????</th>
						<td><input type="text" id="password" name="password" value="${memberVO.password}" />
					</tr>
					<tr>
						<th>??????/?????????</th>
						<td><input type="text" id="name" name="name" value="${memberVO.name}" />
					</tr>
					<tr>
						<th>?????????</th>
						<td><input type="text" id="email" name="email" value="${memberVO.email}" />
					</tr>
					<tr>
						<th>?????????</th>
						<td><input type="text" id="contact" name="contact" value="${memberVO.contact}" />
					</tr>
					<tr>
						<th>??????/?????? ????????????</th>
						<td><input type="text" id="animals" name="animals" value="${memberVO.animals}" />
					</tr>
					<tr>
						<th>????????????</th>
						<td>
							<input type="text" id="zipcode" name="zipcode" value="${memberVO.zipcode}" readonly />
							<input type="button" id="btnFindAddress" value="??????">
						</td>
					</tr>
					<tr>
						<th>??????</th>
						<td><input type="text" id="address" name="address" value="${memberVO.address}" readonly />
					</tr>
					<tr>
						<th>????????????</th>
						<td>
							<input type="text" id="detailaddress" name="detailaddress" value="${memberVO.detailaddress}" readonly />
					</tr>
					<tr>
						<th>????????????</th>
						<td>
							<c:set var="now" value="<%=new Date()%>" />
							<c:set var="sysDate">
								<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" />
							</c:set>
							<input type="date" id="birthday" name="birthday" value="${memberVO.birthday}" max="<c:out value="${sysDate}"/>">
					</tr>
					<tr>
						<th>??????</th>
						<td><input type="text" id="note" name="note" value="${memberVO.note}" />
					</tr>
				</tbody>
			</table>
			<div style="text-align: center; margin-top: 20px;">
			<input type="submit" id="updateBtn" name="updateBtn" value="??????">
			<input type="button" id="cancel" value="?????????" onClick="window.open('','_self').close();">
			
			</div>
				<div class="close" style="text-align: right;"><a onclick="window.close();">??????X</a></div>

		</form>
	</div>

	<script type="text/javascript">
	/* ??????????????? API ????????? */
 	$("#btnFindAddress").click(function(event){
		var url = "/hotel/admin/memberPostcode";
        var name = "popUpPostCode";
        var option = "width = 570, height = 420, scrollbars=yes, resizable=yes"
		window.open(url, name, option);
	});
	
 	document.domain = "localhost";
	
 	/* ??????????????? API Callback */
 	function jusoCallBack(
 			roadFullAddr,
 			roadAddrPart1,
 			addrDetail,
 			roadAddrPart2,
 			engAddr,
 			jibunAddr,
 			zipNo,
 			admCd,
 			rnMgtSn,
 			bdMgtSn,
 			detBdNmList,
 			bdNm,
 			bdKdcd,
 			siNm,
 			sggNm,
 			emdNm,
 			liNm,
 			rn,
 			udrtYn,
 			buldMnnm,
 			buldSlno,
 			mtYn,
 			lnbrMnnm,
 			lnbrSlno,
 			emdNo
 			) {
 		// ????????????????????? ??????????????? ????????? ????????? ??? ???????????? ????????? ??????
 		// document.getElementById('roadFullAddr').value = roadFullAddr; // ?????? ???????????????
 		document.getElementById('address').value = roadAddrPart1; // ???????????????(???????????? ??????)
 		// document.getElementById('roadAddrPart2').value = roadAddrPart2; // ??????????????? ????????????
 		document.getElementById('detailaddress').value = addrDetail; // ?????? ?????? ?????? ??????
 		// document.getElementById('engAddr').value = engAddr; // ???????????????(??????)
 		// document.getElementById('jibunAddr').value = jibunAddr; // ?????? ??????
 		document.getElementById('zipcode').value = zipNo; // ????????????
 		// document.getElementById('admCd').value = admCd; // ??????????????????
 		// document.getElementById('rnMgtSn').value = rnMgtSn; // ???????????????
 		// document.getElementById('bdMgtSn').value = bdMgtSn; // ??????????????????
 		// document.getElementById('detBdNmList').value = detBdNmList; // ???????????????
 		// document.getElementById('bdNm').value = bdNm; // ?????????
 		// document.getElementById('bdKdcd').value = bdKdcd; // ??????????????????(1:????????????, 0: ???????????????)
 		// document.getElementById('siNm').value = siNm; // ?????????
 		// document.getElementById('sggNm').value = sggNm; // ????????????
 		// document.getElementById('emdNm').value = emdNm; // ????????????
 		// document.getElementById('liNm').value = liNm; // ????????????
 		// document.getElementById('rn').value = rn; // ?????????
 		// document.getElementById('udrtYn').value = udrtYn; // ????????????(0:??????, 1:??????)
 		// document.getElementById('buldMnnm').value = buldMnnm; // ????????????
 		// document.getElementById('buldSlno').value = buldSlno; // ????????????(????????? ?????? ?????? 0)
 		// document.getElementById('mtYn').value = mtYn; // ?????????(0:??????, 1:???)
 		// document.getElementById('lnbrMnnm').value = lnbrMnnm; // ????????????(??????)
 		// document.getElementById('lnbrSlno').value = lnbrSlno; // ????????????(???)(????????? ?????? ?????? 0)
 		// document.getElementById('emdNo').value = emdNo; // ?????????????????????
 	}
	
	</script>
</body>
</html>