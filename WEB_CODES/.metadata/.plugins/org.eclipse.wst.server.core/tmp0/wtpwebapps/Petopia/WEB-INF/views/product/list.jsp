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

.section-content {
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

.section-title {
  border-bottom: 2px solid #159efd;
  color: black;
  font-size: 20px;
}

.hotel-list {
  overflow: auto;
}

.hotel-list-left {
  float: left;
  width: 50%;
}

.hotel-list-right {
  float: left;
  width: 50%;
}

#hotel-list-tbody button {
  background-color: #e7f4fd;
  color: #2b96ed;
  height: 30px;
  font-size: 16px;
  width: 70px;
  border-radius: 5px;
  cursor: pointer;
  margin-right: 5px;
}

#hotel-list-tbody tr {
  border-bottom: 2px solid #fafafa;
  height: 70px;
}

input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button
  {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  margin: 0;
}

.hotel-list-table {
  table-layout: fixed;
  width: 100%;
  border-collapse: collapse;
  border-top: 1px solid #a4a9b0;
  border-bottom: 1px solid #ececec;
  text-align: left;
  color: black;
}

.hotel-list-table th {
  padding-left: 10px;
}

.hotel-list-table thead {
  background-color: #F5F4F4;
}

#hotel-list-tbody td {
  padding-left: 10px;
}
</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - 상품목록</title>
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
        <div class="section-title">${vo.titleHotel }의상품목록</div>
        <div class="section-content">

          <table class="hotel-list-table">
            <thead>
              <tr height="50px">
                <th width="20%">상품번호</th>
                <th width="50%">상품 이름</th>
                <th width="30%">상품 가격</th>
                <th width="30%">할인 가격</th>
                <th width="70%"></th>
              </tr>
            </thead>
            <tbody id="hotel-list-tbody">
              <c:set var="num" value="${list.size()}"></c:set>
              <c:forEach var="vo" items="${list }">
                <tr id="change">
                  <td style="color: black; font-size: 15px;">${vo.numPro }</td>
                  <td style="color: black; font-size: 15px;">${vo.namePro }</td>
                  <td style="color: black; font-size: 15px;">${vo.pricePro }</td>
                  <td style="color: black; font-size: 15px;">${vo.salePro }</td>
                  <td style="text-align: right;" id="btn">
                    <button id="update">상품 수정</button>
										<button onclick="location.href='/hotel/product/delete?numHotel=${param.numHotel}&&numPro=${vo.numPro}'" style="margin-right: 30px;">상품
											삭제</button>
                  </td>
                </tr>
                <c:set var="num" value="${num - 1}" />
              </c:forEach>
            </tbody>

          </table>

        </div>


      </div>
    </div>
    <%@ include file="../common/footer.jspf"%>
  </div>

  <script type="text/javascript">
  	$(document).ready(function(){
  	  $('#btn #update').click(function(){
  	    var tr = $(this).parent().parent();
        var td = tr.children();
        console.log(this);
        var numPro = td.eq(0).text();
        var namePro = td.eq(1).text();
        var pricePro = td.eq(2).text();
        var salePro = td.eq(3).text();
        var list = "";
        list += '<td style="color: black; font-size: 15px;"><input type="text" id="numPro" value="'+numPro+'" readonly></td>'
        +'<td style="color: black; font-size: 15px;"><input type="text" id="namePro" value="'+namePro+'"></td>'
        +'<td style="color: black; font-size: 15px;"><input type="number" id="pricePro" value="'+pricePro+'"></td>'
        +'<td style="color: black; font-size: 15px;"><input type="number" id="salePro" value="'+salePro+'"></td>'                                    
		+'<td style="text-align: right;">'
		+'<button id="end">수정하기</button>'
		+'<button id="cansle" style="margin-right: 30px;">수정 취소</button>'
		+'</td>';
        var prevTr = $(this).parent().parent();
        prevTr.html(list);
        
  	  });
  	  
  	  $(document).on('click', '#end', function(){  	    
  	    var numPro = $('#numPro').val();
        var namePro = $('#namePro').val();
        var pricePro = $('#pricePro').val();
        var salePro = $('#salePro').val();
        console.log(numPro);
        $.ajax({
          type : 'put',
          url : '/hotel/product/' + numPro,
          headers : {
		        'Content-Type' : 'application/json',
            	'X-HTTP-Method-Override' : 'PUT'
		      },
		  data : JSON.stringify({
	          'namePro' : namePro,
	          'pricePro' : pricePro,
	          'salePro' : salePro
	          }),
	          success : function(result) {
			        location.reload();
			      }   
        }); // end ajax
  	  });
  	    	  
  	  
  	  $(document).on('click', '#cansle', function(){
  	    console.log(this);
  	    location.reload();
  	  });
  	  
  	});
  </script>


</body>
</html>