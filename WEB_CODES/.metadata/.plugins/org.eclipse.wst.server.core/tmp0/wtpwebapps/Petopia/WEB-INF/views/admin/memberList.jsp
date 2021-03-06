<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
}


h1 {
	color: black;
	text-align: center;
}


.list-content{
	margin-bottom: 40px;
}

.list-title{
	height: 30px;
    border-bottom: 2px solid #159efd;
    color:black;
    font-size: 20px;
    
}

.list-content td{
	padding-top:5px;
	padding-bottom: 5px;
	border-bottom: 1px solid  #ececec;
}

.list-content th{
	padding-bottom: 5px;	
}

#exitMember{
	background-color: #e7f4fd;
    color: #2b96ed;
    height: 32px;
    font-size: 16px;
    width: 100px;
    border-radius: 5px;
    cursor: pointer;
    
    }

#deleteAll{
	background-color: #e7f4fd;
    color: #2b96ed;
    height: 32px;
    font-size: 16px;
    width: 100px;
    border-radius: 5px;
    cursor: pointer;
    
    }
    
.member-table tr{
	height: 50px;
}

.tablebutton{
    background-color: #e7f4fd;
    color: #2b96ed;
    font-size: 13px;
    border-radius: 5px;
    padding:5px;
    cursor: pointer;
}

#withdrawalBtn2{
	background-color: #2b96ed;
    color: #e7f4fd;
    font-size: 13px;
    border-radius: 5px;
    padding:5px;
    cursor: pointer;
}

.withdrawalBtn{
    background-color: #e7f4fd;
    color: #2b96ed;
    font-size: 13px;
    border-radius: 5px;
    padding:5px;
    cursor: pointer;
}
</style>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<meta charset="UTF-8">
<title>회원 관리</title>
</head>
<body>
	<div class="container">
	<%@ include file="../common/header.jspf"%>
	</div>
	<%@ include file="../common/search.jspf"%>
	<div class="container">
		<div class="center">
			<%@ include file="../common/adminNav.jspf"%>
			<div class="section">
			<div class="list-title">호텔 승인</div>
				<%@ include file="../admin/memberList-search.jspf"%>
			
			<div class="list-content">
	<hr>
	<input type="button" id="exitMember" value="탈퇴회원 보기" onclick="fn_deletionBtn()"/>
	<input type="button" id="deleteAll" value="선택회원 승인" onclick="fn_deleteAll()" />
	<br>
	<table class="member-table" style="text-align: center;">	 
		<thead style="border-bottom: 1px solid #ececec; ">
			<tr style="height: 30px; font-size: 13px; color: black;">
				<th><input type="checkbox" id="checkall" name="checkcheck_all" onclick="selectAll(this)" value="" /></th>
				<th>번호</th>
				<th>아이디</th>
				<th>분류</th>
				<th>이름/상호명</th>
				<th>이메일</th>
				<th>연락처</th>
				<th>주소</th>
				<th>가입일</th>
				<th>관리</th>
				<th>승인</th>
				<th>탈퇴일</th>
			</tr>	
		</thead>
		<tbody>
			<c:set var="boardNum" value="${memberPageMaker.totalCount - ((memberPageMaker.criteria.page - 1) * memberPageMaker.criteria.numsPerPage)}" />
			<c:forEach var="memberVO" items="${memberList}">
				<tr style="color: black;">
					<td>
						<c:if test="${memberVO.deletion eq 1}">
							<input type="checkbox" id="check${boardNum}" name="checkcheck" value="${memberVO.id}" />
						</c:if>
					</td>
					<td>${boardNum}</td>
					<td>${memberVO.id}</td>
					<td>
						<c:if test="${memberVO.authority eq 1}">관리자</c:if>
				    	<c:if test="${memberVO.authority eq 2}">개인</c:if>
				    	<c:if test="${memberVO.authority eq 3}">업체</c:if>
					</td>
					<td>${memberVO.name}</td>
					<td>${memberVO.email}</td>
					<td>${memberVO.contact}</td>
					<td>${memberVO.address}</td>
					<td>${memberVO.regidate}</td>
					<td><input type="button" id="updateBtn${boardNum}" class="tablebutton" value="수정" onclick="fn_updateBtn('${memberVO.id}', '${memberPageMaker.criteria.page}')" /></td>
					<td>
						<c:if test="${memberVO.deletion eq 0}">
							<input type="button" id="withdrawalBtn${boardNum}" value="탈퇴" disabled />
						</c:if>
						<c:if test="${memberVO.deletion eq 1}">
							<a href="/hotel/admin/deleteMember?id=${memberVO.id}&page=${memberPageMaker.criteria.page}"><input class="tablebutton" type="button" id="withdrawalBtn${boardNum}" value="탈퇴" /></a>
						</c:if>
					</td>
					<td>${memberVO.exitdate}</td>
				</tr>
			<c:set var="boardNum" value="${boardNum - 1}" />
			</c:forEach>
		</tbody>
	</table>
	<hr>
	<ul class="pager" style="text-align: center; margin-top: 10px;">
		<c:if test="${memberPageMaker.hasPrev}">
    		<li><a href="${memberPageMaker.startPageNo - 1}">이전</a></li>
    	</c:if>
    	<c:forEach var="num" begin="${memberPageMaker.startPageNo}" end="${memberPageMaker.endPageNo}">
    		<li><a href="${num}">${num}</a></li>
    	</c:forEach>
    	<c:if test="${memberPageMaker.hasNext}">
    		<li><a href="${memberPageMaker.endPageNo + 1}">다음</a></li>
    	</c:if>
	</ul>
	</div>
	</div>
	</div>
	</div>
	
	<script type="text/javascript">
	
		$(document).ready(function() {
			$('.pager li a').click(function() {
				// pager 클래스의 하위 li 요소의 a 요소를 찾아감
				event.preventDefault(); // a 태그의 기본 동작(페이지 이동)을 금지
				var targetPage = $(this).attr('href'); // a 태그 href 속성의 값을 저장
				console.log(targetPage);

				var frm = $('#searchMember'); // form의 정보를 frm에 저장
				frm.find('[name="page"]').val(targetPage);
				// name="page"인 요소를 찾아서 value값을 저장
				frm.submit(); // form 데이터 전송
			});
			
		}); // end document
		
		function fn_updateBtn(id, page) {
			var url = "../admin/memberUpdate?id=" + id + "&page=" + page;
	        var name = "popUpMemberUpdate";
	        var option = "width = 500, height = 750, scrollbars=yes, resizable=yes"
			window.open(url, name, option);
		}
		
		function selectAll(selectAll) {
			const checkboxes = document.getElementsByName('checkcheck');
			checkboxes.forEach((checkbox) => {
				checkbox.checked = selectAll.checked;
			})
		}
		
		function fn_deletionBtn() {
			var deletion = $('#searchMember');
			$('#deletion').val('1');
			deletion.submit();
		}
		
		function fn_deleteAll() {
			var sel_deleteMem = '';
			$("input[name=checkcheck]:checked").each(function(index) {
				if(index != 0) {
					sel_deleteMem += ",";
				}
				sel_deleteMem += $(this).val();
			});
			
			//sel_deleteMem 값으로 멤버 삭제
			$.ajax({
				type : 'post',
				url : '/hotel/admin/deleteMember_all',
				headers : {
					'Content-Type' : 'application/json',
					'X-HTTP-Method-Override' : 'POST'
				},
				data : sel_deleteMem,
				success : function(ok) {
					if(ok > 0) {
						alert('탈퇴처리 성공');
						$('#searchMember').submit();
					} else {
						alert('탈퇴처리 실패');
					}
				}
			});
		}
		
	</script>
			<div class="container">
			<%@ include file="../common/footer.jspf"%>
			</div>
</body>
</html>