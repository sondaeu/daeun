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
<title>회원관리 수정</title>
</head>
<body>
	<div class="container">
		<div class="title">관리자 - 회원 정보 수정</div>
		<form action="/hotel/admin/updateMember" method="get" id="updateMember" name="updateMember" >
			<input type="hidden" id="page" name="page" value="${page}" />
			<strong style="color: #2e8de5; font-size: 25px;">${memberVO.id }</strong>님의 정보입니다.<br>
			<input type="hidden" id="id" name="id" value="${memberVO.id}" />
			<table class="tbl_model" >
				<tbody>
					<tr>
						<th>비밀번호</th>
						<td><input type="text" id="password" name="password" value="${memberVO.password}" />
					</tr>
					<tr>
						<th>이름/상호명</th>
						<td><input type="text" id="name" name="name" value="${memberVO.name}" />
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" id="email" name="email" value="${memberVO.email}" />
					</tr>
					<tr>
						<th>연락처</th>
						<td><input type="text" id="contact" name="contact" value="${memberVO.contact}" />
					</tr>
					<tr>
						<th>소유/취급 반려동물</th>
						<td><input type="text" id="animals" name="animals" value="${memberVO.animals}" />
					</tr>
					<tr>
						<th>우편번호</th>
						<td>
							<input type="text" id="zipcode" name="zipcode" value="${memberVO.zipcode}" readonly />
							<input type="button" id="btnFindAddress" value="검색">
						</td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" id="address" name="address" value="${memberVO.address}" readonly />
					</tr>
					<tr>
						<th>상세주소</th>
						<td>
							<input type="text" id="detailaddress" name="detailaddress" value="${memberVO.detailaddress}" readonly />
					</tr>
					<tr>
						<th>생년월일</th>
						<td>
							<c:set var="now" value="<%=new Date()%>" />
							<c:set var="sysDate">
								<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" />
							</c:set>
							<input type="date" id="birthday" name="birthday" value="${memberVO.birthday}" max="<c:out value="${sysDate}"/>">
					</tr>
					<tr>
						<th>메모</th>
						<td><input type="text" id="note" name="note" value="${memberVO.note}" />
					</tr>
				</tbody>
			</table>
			<div style="text-align: center; margin-top: 20px;">
			<input type="submit" id="updateBtn" name="updateBtn" value="수정">
			<input type="button" id="cancel" value="창닫기" onClick="window.open('','_self').close();">
			
			</div>
				<div class="close" style="text-align: right;"><a onclick="window.close();">닫기X</a></div>

		</form>
	</div>

	<script type="text/javascript">
	/* 도로명주소 API 팝업창 */
 	$("#btnFindAddress").click(function(event){
		var url = "/hotel/admin/memberPostcode";
        var name = "popUpPostCode";
        var option = "width = 570, height = 420, scrollbars=yes, resizable=yes"
		window.open(url, name, option);
	});
	
 	document.domain = "localhost";
	
 	/* 도로명주소 API Callback */
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
 		// 팝업페이지에서 주소입력한 정보를 받아서 현 페이지에 정보를 등록
 		// document.getElementById('roadFullAddr').value = roadFullAddr; // 전체 도로명주소
 		document.getElementById('address').value = roadAddrPart1; // 도로명주소(참고항목 제외)
 		// document.getElementById('roadAddrPart2').value = roadAddrPart2; // 도로명주소 참고항목
 		document.getElementById('detailaddress').value = addrDetail; // 고객 입력 상세 주소
 		// document.getElementById('engAddr').value = engAddr; // 도로명주소(영문)
 		// document.getElementById('jibunAddr').value = jibunAddr; // 지번 정보
 		document.getElementById('zipcode').value = zipNo; // 우편번호
 		// document.getElementById('admCd').value = admCd; // 행정구역코드
 		// document.getElementById('rnMgtSn').value = rnMgtSn; // 도로명코드
 		// document.getElementById('bdMgtSn').value = bdMgtSn; // 건물관리번호
 		// document.getElementById('detBdNmList').value = detBdNmList; // 상세건물명
 		// document.getElementById('bdNm').value = bdNm; // 건물명
 		// document.getElementById('bdKdcd').value = bdKdcd; // 공동주택여부(1:공동주택, 0: 비공동주택)
 		// document.getElementById('siNm').value = siNm; // 시도명
 		// document.getElementById('sggNm').value = sggNm; // 시군구명
 		// document.getElementById('emdNm').value = emdNm; // 읍면동명
 		// document.getElementById('liNm').value = liNm; // 법정리명
 		// document.getElementById('rn').value = rn; // 도로명
 		// document.getElementById('udrtYn').value = udrtYn; // 지하여부(0:지상, 1:지하)
 		// document.getElementById('buldMnnm').value = buldMnnm; // 건물본번
 		// document.getElementById('buldSlno').value = buldSlno; // 건물부번(부번이 없는 경우 0)
 		// document.getElementById('mtYn').value = mtYn; // 산여부(0:대지, 1:산)
 		// document.getElementById('lnbrMnnm').value = lnbrMnnm; // 지번본번(번지)
 		// document.getElementById('lnbrSlno').value = lnbrSlno; // 지번부번(호)(부번이 없는 경우 0)
 		// document.getElementById('emdNo').value = emdNo; // 읍면동일련번호
 	}
	
	</script>
</body>
</html>