<%@page import="ani.project.hotel.domain.HotelBoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	color: black;
	font-size: 15px;
	margin-bottom: 40px;
}

h1 {
	color: black;
	text-align: center;
}

.myNav {
	
	color: black;
	font-size: 14px;
	padding-left: 25px;
	line-height: 40px;
	cursor: pointer;
}

#mytitle {
	line-height: 81px;
	border: 1px solid #DDD;
	border-bottom: 4px solid #159EFD;
	
}
.myNavWrap{

	border: 1px solid #DDD;
}

.register-content{
	width: 75%;
	margin: 0 auto;
}

.register-title{
	height: 30px;
    border-bottom: 2px solid #159efd;
    color:black;
    font-size: 20px;
    
}

.hotel-submit {
	background: #2e8de5;
    border: 1px solid #d9d9d9;
    width: 100%;
    height: 60px;
    font-weight: bold;
    line-height: 60px;
    cursor: pointer;
    color: white;
    font-size: 24px;
}

#hotelImg{
	border: none;
	margin: 0px;
	padding: 0px;
	text-indent: 0px;
}



</style>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<title>멍멍이의 하루 - 호텔 수정</title>
</head>
<body>
	<div class="container">
	<%@ include file="../common/header.jspf"%>
	</div>
	<%@ include file="../common/search.jspf"%>
	<div class="container">
		<div class="center">
								<!-- 1:관리자, 2:개인회원, 3:업체회원 -->
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
		<div class="register-title">호텔 수정</div>
		<div class="register-content">
		<br>
  <%HotelBoardVO vo = (HotelBoardVO)request.getAttribute("vo"); %>
  <div style="text-align: center;">
  <form action="update" method="POST" enctype="multipart/form-data">
    <div style="text-align: left;">
      <input type="hidden" name="numHotel" value="<%=vo.getNumHotel() %>" style="width: 100%">
      <input type="hidden" name="id" value="<%=vo.getId()%>">
      호텔이름<br>
      <input type="text" name="titleHotel" value="<%=vo.getTitleHotel() %>"  required="required" style=" height:300p;"><br><br>
      내용<br>
      <textarea name="contentHotel" rows="20" cols="120" required="required"><%=vo.getContentHotel() %></textarea><br><br>      
      입력할 태그<br>
      <input type="text" name="infoHotel" value="<%=vo.getInfoHotel() %>" required="required" style=" height:300p;"><br><br>
      주소<input type="text" name="address" value="<%=vo.getAddress() %>"><br>
      <br>파워링크(원하시는 분만 입금할 금액을 적어주세요.) <br>
      <input type="number" name="powerlink" value=<%=vo.getPowerlink() %> style="height:300p;"><br><br><br>
    </div>
    <hr>
     <div class="inputArea">
        <label for="hotelImg">메인 이미지(필수)</label> <input type="file"
          id="hotelImg" name="file" onchange="fileCheck(this);" />
        <div class="select_img" style="margin-bottom: 20px;">
          <img src="display?fileName=${vo.hotelImg }" width="500"/>
          <input type="hidden" name="hotelfile" value="${vo.hotelImg }">
        </div>
  
        <script>
                  $('#hotelImg').change(
                      function() {
                        if (this.files && this.files[0]) {
                          var reader = new FileReader;
                          reader.onload = function(data) {
                            $(".select_img img")
                                .attr("src", data.target.result).width(500);
                          }
                          reader.readAsDataURL(this.files[0]);
                        }
                      });
                  function fileCheck(el) { 
                		// 이미지만 가능하게하는 코드
                          if(!/\.(jpeg|jpg|png|gif|bmp)$/i.test(el.value)){              
                              alert('이미지 파일만 업로드 가능합니다.');
                              // 첨부파일 초기화
                              el.value = '';                
                              el.focus();
                              }
                      }
                </script>

      </div>  
      
      상품 가격 변경 혹은 표시는 내정보 - 상품관리에서 해주세요.
    <br>
    <input class ="hotel-submit" type="submit" value="수정 완료">    
  </form>
  </div>
  </div>
  </div>
  </div>
  </div>
  
  <script type="text/javascript">
  
  </script>
</body>
</html>