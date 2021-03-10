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


.list-content{
	margin-top: 20px;
}

.list-title{
	height: 30px;
    border-bottom: 2px solid #159efd;
    color:black;
    font-size: 20px;
    
}
.list-table{
	table-layout: fixed;
	width: 100%;
	border-collapse: collapse;
	border-top: 1px solid #a4a9b0;
	border-bottom: 1px solid #ececec;
	text-align: left;
	color: black;
}

.list-table td{
	table-layout: fixed;
	width: 100%;
	border-collapse: collapse;
	border-top: 1px solid #a4a9b0;
	border-bottom: 1px solid #ececec;	
}

.list-table thead{
	background-color: #F5F4F4;
}

td button{
    background-color: #e7f4fd;
    color: #2b96ed;
    height: 30px;
    font-size: 16px;
    width: 70px;
    border-radius: 5px;
    cursor: pointer;
    margin-right: 5px;
}

</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - 예약목록</title>
</head>
<body>
	<div class="container">
	<%@ include file="../common/header.jspf"%>
	</div>
	<%@ include file="../common/search.jspf"%>
	<div class="container">
		<div class="center">
			<%@ include file="../common/memberNav.jspf"%>
			<div class="section">
			<div class="list-title">예약 목록</div>
			
			<div class="list-content">
			<table class="list-table" summary="">
							

							<thead>
								<tr>
                <th width="50px;">구매 번호</th>
									<th width="100px;">구매 날짜</th>
									<th width="270px;">상품정보</th>
									<th width="150px;">방문 날짜</th>
									<th width="70px;">쪽지 쓰기</th>
                  <th width="70px;">예약</th>
								</tr>								
							</thead>
							<tbody id="MyNoteData">
							<c:forEach var="vo" items="${list }">
							<tr>
              <td><p style="font-size: 15px;">${vo.numHistory}</p></td>
								<td>
								<fmt:formatDate value="${vo.dataPro }" pattern="yyyy-MM-dd"/>
								
								</td>
								<td>
								<p style="margin-top: 10px;margin-bottom: 5px;"><strong style="font-size: 20px;">${vo.titleHotel }</strong></p>
								<p style="font-size: 15px;">${vo.namePro}</p>
								<p style="color: #777;">
								<fmt:formatNumber value="${ vo.pricePurchase}" pattern="#,###,###,###" />원 / ${vo.timePro }개</p>
								<p style="margin-bottom: 10px;">총 <strong>
								 <fmt:formatNumber value="${vo.pricePurchase* vo.timePro}" pattern="#,###,###,###" />원</strong></p>
								</td>
								<td>
								<fmt:formatDate value="${vo.checkIn }" pattern="yyyy-MM-dd"/>~
								<fmt:formatDate value="${vo.checkOut }" pattern="yyyy-MM-dd"/>
								</td>
								<td>   
								<button id="test">쪽지쓰기</button>
								<input type="hidden" id="numHotel" value="${vo.numHotel}">
								<input type="hidden" id="Wid"value="${vo.id }">
								</td>
								
								<td id="btndel"><button id="canBtn">취소하기</button></td>

							</tr>
							</c:forEach>
						</tbody>
						</table>
			</div>
			</div>
		</div>
		<%@ include file="../common/footer.jspf"%>
	</div>
	
	<script type="text/javascript">
    
    
    $(document).on('click', '#test',function()
    {
    	
    	var numHotel = $('#numHotel').val();
    	var userId = $('#Wid').val();
        // window.name = "부모창 이름"; 
        window.name = "parentForm";
        // window.open("open할 window", "자식창 이름", "팝업창 옵션");
        openWin = window.open("/hotel/letter/send?numHotel="+numHotel+"&userId="+userId,
                "childForm", "width=700, height=810, resizable = no, scrollbars = no");    
    });
    
    $(document).ready(function(){
      $('#btndel #canBtn').click(function(){
        console.log(this);
        var tr = $(this).parent().parent();
  	    var td = tr.children();
  	    var numHistory = td.eq(0).text();
  	    console.log(numHistory);
  	     
  	    if (confirm("예약 취소하시겠습니까??") == true) { //확인        
        } else { //취소
          return;
        }
  	    $.ajax({
  	      type : 'delete',
  	      url : "/hotel/pronext/" + numHistory,
  	      headers : {
            'Content-Type' : 'application/json',
            'X-HTTP-Method-Override' : 'DELETE'
          },
          data : JSON.stringify({
            'numHistory' : numHistory
          }),
          success : function(result){
            if(result == 'success') {
              location.reload();
            }
          } // end success  
  	    });
  	    
  	    
      });
      
      
      
      
      
    });

	</script>
</body>
</html>