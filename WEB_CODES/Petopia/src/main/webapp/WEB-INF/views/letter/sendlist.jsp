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

.note-content{
	margin-top: 10px;
}

.note-title{
	height: 30px;
    border-bottom: 2px solid #159efd;
    color:black;
    font-size: 20px;
    
}
.note-table{
	table-layout: fixed;
	width: 100%;
	border-collapse: collapse;
	border-top: 1px solid #a4a9b0;
	border-bottom: 1px solid #ececec;
	text-align: left;
	color: black;
	font-size: 15px;
}

.note-table td{
	table-layout: fixed;
	width: 100%;
	padding-top:20px;
	padding-bottom:20px;
	border-collapse: collapse;
	border-top: 1px solid #a4a9b0;
	border-bottom: 1px solid #ececec;	
}

.note-table thead{
	background-color: #F5F4F4;
}

td{
padding-top: 10px; padding-bottom: 10px;
}

.SENDList, .GETList{
	margin-top:10px;
	background-color: #e7f4fd;
    color: #2b96ed;
    height: 30px;
    font-size: 14px;
    width: 70px;
    border-radius: 5px;
    cursor: pointer;
}
</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - 메세지함</title>
</head>
<body>
	<div class="container">
	<%@ include file="../common/header.jspf"%>
	</div>
	<%@ include file="../common/search.jspf"%>
	<div class="container">
		<div class="center">
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
			<div id="send">
			<div class="note-title">보낸 메세지함</div>
			<button class="GETList">받은 메세지</button>
  			<button class="SENDList">보낸 메세지</button>
			<div class="note-content">
			<table class="note-table" summary="번호, 분류, 종류, 내용, 작성일, 작성일">
							
							<colgroup>
								<col style="width:7%;" />
								<col style="width:10%;" />
								<col />
								<col style="width:25%;" />
							</colgroup>
							<thead>
								<tr>
									<th style="text-align: center;">번호</th>
									<th style="padding-left: 10px;">받은이</th>
									<th>제목</th>
									<th>수신일</th>
								</tr>
							</thead>
							<tbody id="MyNoteData">
							<c:set var="num" value="${SENDlist.size()}"></c:set>
							<c:forEach var="vo" items="${SENDlist }">
							
							<tr>
								<td style="text-align: center;">${num }</td>
								<td style="padding-left: 10px;">${vo.userId }</td>
								<td >
								<c:if test="${vo.open == 1}">
								<span class="numletter"  style="cursor: pointer; color: black;">${vo.titleLetter }
								<input type="hidden" id="numletter" value="${vo.numLetter}">
								</span>
								</c:if>
								<c:if test="${vo.open == 2}">
								<span class="numletter" style="cursor: pointer; color: gray">${vo.titleLetter }
								<input type="hidden" id="numletter" value="${vo.numLetter}">
								</span>
								
								</c:if>
								</td>
								<td><fmt:formatDate value="${vo.dataLetter}" pattern="yyyy-MM-dd HH시 mm분"/></td>
								
							</tr>
							<c:set var="num" value="${num - 1}"/>
							</c:forEach>
						</tbody>
						</table>
			</div>
			</div>
			
			</div>
		</div>
		<%@ include file="../common/footer.jspf"%>
	</div>
	
	  <script type="text/javascript">
  	  $('.GETList').click(function(){
   		 location.href='/hotel/letter/list'
   	  }); // end GETList
   	  
   	  $('.SENDList').click(function(){
   		location.href='/hotel/letter/sendlist'
   	}); // end ready
  	
    $(document).on('click', '.numletter',function()
    	    {
    	    	
    	    	var numletter = $(this).find('#numletter').val();

    	        // window.name = "부모창 이름"; 
    	        window.name = "parentForm";
    	        // window.open("open할 window", "자식창 이름", "팝업창 옵션");
    	        openWin = window.open("/hotel/letter/detail?numLetter="+numletter,
    	                "childForm", "width=700, height=710, resizable = no, scrollbars = no");
    	        $(this).css('color','gray');
    	    });
  </script>
</body>
</html>