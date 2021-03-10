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
<title>멍멍이의 하루 - 호텔 등록</title>
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
			<div class="register-title">호텔 등록</div>
				
			<div class="register-content">
			<form action="register" method="POST"  onSubmit="formChk(); return false" enctype="multipart/form-data">
      <div>
        <input type="hidden" name="id" readonly="readonly" value="${SessionId}"><br> 호텔이름<br> <input
          type="text" name="titleHotel" value="${MemberVO.name }" placeholder="제목 입력"
          required="required"><br>
        <br> 내용<br>
        <textarea name="contentHotel" rows="20" cols="120"
          placeholder="내용 입력" required="required">${MemberVO.note }</textarea>
        <br> <br> 입력할 태그<br> <input type="text"
          name="infoHotel" placeholder="태그를 나눌때 꼭 #를 붙여주세요(ex:#목욕#산책)"
          required="required"><br>
     <br>주소<input type="text" name="address" value="${MemberVO.address }, ${MemberVO.zipcode }"><br>
        <br> 파워링크(원하시는 분만 입금할 금액을 적어주세요.) <br> <input
          type="number" name="powerlink" value="0"><br>
      </div><br>

      <div class="inputArea">
        <label for="hotelImg">메인 이미지(필수)<input type="file" onchange="fileCheck(this);"
          id="hotelImg" name="file" /></label> 
        <div class="select_img" style="margin-bottom: 20px;">
          <img src="" />
        </div>
	
        <script>
                  $("#hotelImg").change(
                      function () {
                        if (this.files && this.files[0]) {
                          var reader = new FileReader;
                          reader.onload = function(data) {
                            $(".select_img img")
                                .attr("src", data.target.result).width(500);
                          }
                          reader.readAsDataURL(this.files[0]);
                        }
                      });
                  //이미지
                  function formChk(){        
                    var img = $('#hotelImg').val();
                    console.log(img);
                      if(img == null || img == "") {
                        alert("이미지를 넣어주세요");
                        return;
                      }
                      if(!img.type.match("image/.*")){
                      	alert("이미지 확장자만 업로드 가능합니다.");              
                      	return;
                      };
                      
                  }
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

      <input class ="hotel-submit" type="submit" value="호텔 등록">
    </form>
			</div>
			</div>
		</div>
		<%@ include file="../common/footer.jspf"%>
	</div>

</body>
</html>