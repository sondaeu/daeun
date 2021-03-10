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
	margin-bottom: 40px;
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


.list-content{
	margin-top: 20px;
	margin-bottom: 40px;
}

.list-title{
	height: 30px;
    border-bottom: 2px solid #159efd;
    color:black;
    font-size: 20px;
    
}

button{
    width: 50px;;
    height: 20px;
    background-color: #2e8de5;
    border: 1px solid #d9d9d9;
    color: white;
    font-size: 12px;
    border-radius: 4px;
    cursor: pointer;
}

.list-content td{
	padding-top:5px;
	padding-bottom: 5px;
	border-bottom: 1px solid  #ececec;
}

.list-content th{
	padding-bottom: 5px;	
}
</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - 호텔 승인</title>
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
			
			<div class="list-content">
			  <div class="myNav" onclick="location.href='checklist'">승인 대기</div>
  <hr>
  <table>
    <thead style="border-bottom: 1px solid black; font-size: 15px;">
      <tr style="text-align: left; color: black;">
        <th style="padding-left: 5px;">호텔번호</th>
        <th>제목</th>
        <th>호텔아이디</th>
        <th>업체명</th>
        <th>시설정보</th>
        <th>판매내용</th>
        <th>취급 동물</th>
        <th>주소</th>
        <th>판매내용</th>
        <th>승인대기</th>
      </tr>
    </thead>
    <c:forEach var="vo" items="${list }">
    <tr style="color: black;">
      <td id="num" style="text-align: center;">${vo.numHotel }</td>
      <td>${vo.titleHotel }</td>
      <td>${vo.id }</td>
      <td>${vo.name }</td>
      <td>${vo.infoHotel }</td>
      <td>${vo.contentHotel }</td>
      <td>${vo.animals }</td>
      <td>${vo.address }</td>
      <td id="ProductChange"><button id="bntShow" style="color: white;">보기</button></td>
      <td id="CheckMain"><button id="CheckUpdate" style="color: white; margin-right: 5px;">승인하기</button><button id="CheckCansle" style="color: white;">승인취소</button></td>      
    </tr>
    </c:forEach>
  </table>
  
  <script type="text/javascript">
  	$(document).ready(function(){
  	  $('#ProductChange #bntShow').click(function(){
  	    // 입력한 product를 보여주는 코드
  	    console.log(this);
  	    var tr = $(this).parent().parent();
  	    var td = tr.children();
  	    // 불러온 호텔값 불러오기
  	    var numHotle = td.eq(0).text();
  	    var x = td.eq(8);
  	    var url = "/hotel/product/all/" + numHotle;
  	    var list="";
  	    var price= 0;
  	    $.getJSON(
            url,
            function(jsonData) {
              $(jsonData).each(function(){ 
                price = this.pricePro - this.salePro;
                list += this.namePro+ ':'+ price + '|';
              });
              console.log(list);
              $(x).html(list);
            }
  	    );
  	  }) // click
  	  // 승인하기 누를시 checkHotel변경
  	  $('#CheckMain #CheckUpdate').click(function(){
  	    console.log(this);
  	    var tr = $(this).parent().parent();
  	    console.log(tr);
  	    var td = tr.children();
  	    var numHotle = td.eq(0).text();
  	    // 불러온 호텔값 불러오기
  	    if (confirm("승인하시겠습니까??") == true) { //확인        
        } else { //취소
          return;
        }
  	    $.ajax({
  	      type : 'put',
  	      url : '/hotel/admin/' + numHotle,
  	      headers : {
            'Content-Type' : 'application/json',
            'X-HTTP-Method-Override' : 'put'
          },
          data : JSON.stringify({
            'numHotle' : numHotle
          }),
          success : function(result){
            if(result == 'success') {
              alert('등록 성공');
              location.reload();
            }
          } // end success  
  	    });
  	    
  	  });
  	  
  	  $('#CheckMain #CheckCansle').click(function(){
  	    var tr = $(this).parent().parent();
  	    console.log(tr);
  	    var td = tr.children();
  	    var numHotle = td.eq(0).text();
  	    // 불러온 호텔값 불러오기
  	    if (confirm("승인 취소하시겠습니까??") == true) { //확인        
        } else { //취소
          return;
        }
  	    $.ajax({
  	      type : 'delete',
  	      url : '/hotel/admin/' + numHotle,
  	      headers : {
            'Content-Type' : 'application/json',
            'X-HTTP-Method-Override' : 'DELETE'
          },
          data : JSON.stringify({
            'numHotle' : numHotle
          }),
          success : function(result){
            if(result == 'success') {
              alert('승인 취소 성공');
              location.reload();
            }
          } // end success  
  	    });
  	  });
  	  
  	}); // end document
  </script>
			</div>
			</div>
		</div>
		<%@ include file="../common/footer.jspf"%>
	</div>
</body>
</html>