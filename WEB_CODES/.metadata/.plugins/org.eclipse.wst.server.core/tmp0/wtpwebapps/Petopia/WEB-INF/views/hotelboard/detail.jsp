<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- Popper 최신 버전 링크  -->
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Bootstrap을 이용하기 위한 최신 버전 링크 -->
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style type="text/css">
.wrap {
	width: 100%;
	margin: 0 auto;
}

.container {
	width: 1060px;
	height: 100%;
	margin: 0 auto;
}

.category {
	background-color: white;
	margin-bottom: 40px;
}

.category-content {
	margin-top: 30px;
}



.category-nav {
	background-color: #a9b3bc;
	height: 60px;
	border-top: 1px solid #505050;
	border-bottom: 1px solid #505050;
}

.category>div {
	display: none;
}

.goods {
	height: 820px;
	width: 1060px;
	overflow: hidden;
}

.goods-right {
	float: right;
	width: 45%;
	position: relative;
	
}

.goods-right-title {
	margin-top: 30px;
}

.goods-left {
	float: left;
	width: 45%;
	height: 100%;
	padding-left: 20px;
	padding-right: 20px;
}

.goods-detail {
	height: 80%;
}

#goods-photo {
	overflow: hidden;
	display: flex;
	align-items: center;
	justify-content: center;
	width: 100%;
	height: 100%;
	border-radius: 5px;
}

#goods-photo img {
	max-width: 100%;
	height: auto;
}

.goods-btn {
	background: #2e8de5;
	border: 1px solid #d9d9d9;
	color: #fff;
	margin: 10px;
	width: 200px;
	height: 60px;
	font-size: 24px;
	font-weight: bold;
	line-height: 60px;
	cursor: pointer;
}

.lnb {
	width: 1060px;
	margin: 0 auto;
}

.lnb li {
	display: inline-block;
}

.lnb li a {
	left: 1px;
	display: block;
	height: 81px;
	padding: 0 35px;
	font-size: 17px;
	color: #333;
	line-height: 81px;
}

.lnb li a:hover {
	color: #2d5b79;
	font-weight: bold;
	text-decoration: underline;
}

.radio input[type=radio] {
	display: none;
}



.tab {
	display: block;
	height: 50px;
	padding: 4px 23px;
	font-size: 20px;
	color: white;
	line-height: 50px;
}

.tab label {
	padding: 4px 23px;
	cursor: pointer;
}

#tab-1:checked ~ .tab label:nth-child(1), #tab-2:checked ~ .tab label:nth-child(2),
	#tab-3:checked ~ .tab label:nth-child(3), #tab-4:checked ~ .tab label:nth-child(4)
	{
	background-color: #858f9a;
	font-weight: bold;
	border-radius: 50px;
	width: 46px;
	height: 46px;
	padding: 4px 23px;
}

#tab-1:checked ~ .category div:nth-child(1), #tab-2:checked ~ .category div:nth-child(2),
	#tab-3:checked ~ .category div:nth-child(3), #tab-4:checked ~ .category div:nth-child(4)
	{
	display: block;
}

#review-star {
	background-color: #51abf3;
	border-radius: 50%;
	color: #fff;
	display: inline-block;
	font-size: 14px;
	font-weight: 700;
	width: 50px;
	height: 50px;
	line-height: 50px;
	text-align: center;
	vertical-align: middle;
}

.review-bottom {
	border-bottom: 1px solid #ececec;
	overflow: hidden;
}

.review table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 40px;
	line-height: 20px;
	margin-bottom: 40px;
}

.review td {
	color: black;
}

#review-td2 {
	font-size: 20px;
	padding-left: 40px;
	font-family: "굴림";
}

#review-td3 {
	font-size: 12px;
	font-family: 'Noto Sans KR', sans-serif;
	color: #9ba0a8;
}

.review button {
	margin-bottom: 5px;
	margin-right: 5px;
	width: 75px;
	height: 30px;
	background-color: #51abf3;
	border: 1px solid #d9d9d9;
	color: white;
	font-size: 13px;
	border-radius: 4px;
	float: right;
	cursor: pointer;
}

.question-table {
	table-layout: fixed;
	width: 100%;
	border-collapse: collapse;
	border-top: 1px solid #a4a9b0;
	border-bottom: 1px solid #ececec;
	text-align: left;
	color: black;
	
}

.question-table thead {
	background-color: #F5F4F4;
}

.question-reply-a,
.question-reply-q {
	background-color: #fafafa;
}

.question-reply-a button{
	margin-top: 0px;
	margin-right: 5px;
	margin-bottom: 5px;
}



.question-table tr{
	border-bottom: 2px solid #fafafa;
}
.question-table th {
	padding: 10px;
}



.question-table td {
	table-layout: fixed;
	width: 100%;
	border-collapse: collapse;
	padding: 10px;

}

.question {
	margin-top: 20px;
	margin-bottom: 10px;
}

.question-category {
	width: 100px;
	height: 30px;
	border: 1px solid #d6d7d8;
	border-radius: 2px;
	font-size: 14px;
	float: left;
	margin-right: 5px;
}

.question-search {
	height: 30px;
	width: 130px;
	border: 1px solid #d6d7d8;
	border-radius: 2px;
	font-size: 14px;
	float: left;
	margin-right: 5px;
}

.question-search-button {
	height: 32px;
	width: 50px;
	border-radius: 2px;
	font-size: 14px;
	background: #2e8de5;
	color: #fff;
	float: left;
	margin-right: 10px;
}

.question-do {
	height: 30px;
	width: 70px;
	cursor: pointer;
	border-radius: 2px;
	font-size: 14px;
	background: #2e8de5;
	color: #fff;
	text-align: center;
	line-height: 30px;
}

.question {
	font-size: 12px;
	color: black;
	line-height: 30px;
}

h1 {
	font: bold;
	color: black;
}

.radiobutton input[type=radio] {
	display: block;
	display: inline-block;
}

.reRadiobutton {
	margin-top: 20px;
}

.reRadiobutton input[type=radio] {
	display: block;
	display: inline-block;
}

.radiobutton {
	color: black;
}

#reviewPOST {
	height: 200px;
	width: 1058px;
	border: 1px solid #ececec;
}

#contentReview {
	border: none;
	line-height: 0px;
	font-family: "굴림";
}

#contentReview2 {
	border: 1px solid #ececec;
	line-height: 0px;
	font-size: 20px;
	font-family: "굴림";
	text-indent: 0px;
	width: 600px;
	height: 100px;
}

#review-update-id {
	margin-top: 20px;
	border: 1px solid #ececec;
	overflow: hidden;
}

#review-update-table {
	margin-top: 0px;
}

.review_update_result {
	margin-top: 15px;
}

.review_btn_cancel {
	margin-top: 15px;
}

#review-login {
	margin-bottom: 0px;
}



.pager {
	margin-top: 20px;
	margin-bottom: 50px;
}
#review-paging {
	text-align: center;
}

#review-paging li {
	display: inline-block;
	cursor: pointer;
	width: 40px;
	height: 40px;
	border-radius: 40px;
	border: 3px solid white;
	background-color: rgba(0, 0, 0, 0);
	line-height:40px;
	font-size: 14px;
	color: #51abf3;
	
}

#review-paging li:hover {
	width: 40px;
	height: 40px;
	transition: background-color .2s, color .2s;
	border: 3px solid #51abf3;
	border-radius: 40px;
	background-color: rgba(0, 0, 0, 0);
	
}

.questionsReplyCount{
	font-size: 15px;
	color: black;
	line-height: 50px;
}



.questions-btn-update,
.questions-btn-delete,
.questionsRe-btn-update,
.questionsReplyInsert,
.btnQuestion,
.questionsUpdate,
.questionsCancel,
.questionsUpdateRe,
#btnQuestion,
.btnQuestionCancle{
	margin-bottom: 5px;
    margin-right: 5px;
    width: 75px;
    height: 30px;
    background-color: #51abf3;
    border: 1px solid #d9d9d9;
    color: white;
    font-size: 13px;
    border-radius: 4px;
    float: right;
    cursor: pointer;
}
.question-reply .questions-btn-update,
.questions-btn-delete{
	margin-top: 10px;
}

#quetion-td tr{
	height: 72px;
}

#quetion-td td{
	height: 72px;
}

#question-paging {
	text-align: center;
}

#question-paging li {
	display: inline-block;
	cursor: pointer;
	width: 40px;
	height: 40px;
	border-radius: 40px;
	border: 3px solid white;
	background-color: rgba(0, 0, 0, 0);
	line-height:40px;
	font-size: 14px;
	color: #51abf3;
	
}

#question-paging li:hover {
	width: 40px;
	height: 40px;
	transition: background-color .2s, color .2s;
	border: 3px solid #51abf3;
	border-radius: 40px;
	background-color: rgba(0, 0, 0, 0);
	
}

#question-span-q{
	background-color: #676767;
	color: white;
	font-size:12px;
	display: inline-block;
	width: 25px;
	height: 25px;
	text-align: center;
	border-radius: 50px;
	line-height: 25px;
	
}

#question-span-a{
	background-color: #80E12A;
	color: white;
	font-size:12px;
	display: inline-block;
	width: 25px;
	height: 25px;
	text-align: center;
	border-radius: 50px;
	line-height: 25px;
	
}

.product-menu{
	width: 442px;
	height: 50px;
	cursor: pointer;
	border: 1px solid #bbb;
	background-color: white;
	color: black;
	font-size: 25px;
	text-align: left;
	padding-left: 20px;
	font-weight: bold;
}

.productcheeck{
	border-top: 1px solid #0064FF;
	border-left: 1px solid #0064FF;
	border-right: 1px solid #0064FF;
}

#btnProduct{
	border-bottom: 1px solid #0064FF;
	background-color: white;
	text-align: left;
}

.productResult{
	text-align: center;
	margin-top: 40px;
	position: absolute;
	top: 465px;
	
}

.productResult button{
	background: #2e8de5;
	border: 1px solid #d9d9d9;
	color: #fff;
	margin: 10px;
	width: 200px;
	height: 60px;
	font-size: 24px;
	font-weight: bold;
	line-height: 60px;
	cursor: pointer;
}

.product-item-result{
	border: 1px solid #bbb;
	margin-bottom: 10px;
	border-radius:10px;
	text-align: left;
}

.product-item button
{
	cursor: pointer;
}
.product-item-left{
	float: left;
	width: 50%;
    color: #343a40;
    margin-left: 20px;
    margin-bottom: 40px;
    font-size: 15px;
    font-weight: bold;
    
    
}

.product-item-right{
	float: right;
	text-align: right;
	margin-right: 20px;
	
}

.option-amount button{
	width: 32px;
	height: 32px;
	background-color: white;
	margin: 0 auto;
	border: none;
	font-size: 30px;
	color: #828282;
	line-height: 32px;
	padding: 0;
	font-weight: bold;
	text-align: center;
	float: left;
	
}

.product-delete{
	width: 25px;
	height: 25px;
	background-color: white;
	margin-right:10px;
	margin-top:5px;
	font-size: 20px;
	color: #828282;
	line-height: 20px;
	font-weight: bold;
	text-align: center;
	border:1px solid #bbb;
	cursor:pointer;
	float: right;
}

.option-amount{
	width: 104px;
	height: 32px;
	background-color: white;
	border: 1px solid #eee;
	margin-left:30px;
	overflow: hidden;
	
	
	
}

.option-amount input[type="number"]{
	width: 40px;
	height: 32px;
	background-color: white;
	border: none;
	color: black;
	margin: 0 auto;
	text-align: center;
	text-indent:0px;
	float: left;
}



#product-name-span{
	font-size: 20px;
	font-weight: bold;
	color: black;
	margin-left: 30px;
	margin-top: 20px;
}

#product-price-span{
	font-size: 15px;
	margin-top: 20px;
	margin-left: 30px;
	fo
}

.productResultValue{
	margin-top:20px;
	text-align: right;
	border-bottom: 1px solid #dcdcdc;
	color: #2e8de5;
	font-weight: bold;
	
}

.productResultValue p{
	margin-left:10px;
	text-align: left;
	white-space:nowrap;
	width: 50%;
	font-size: 15px;
	
}

.productResultValue span{
	font-size: 30px;
	line-height: 60px;
	width: 50%;
}

.product-option{
	margin-top: 10px;
	height: 400px;
	width: 442px;
}

.hotel-info{
	margin-top: 20px;
}

.hotel-info-detail{
	border-bottom: 1px solid #e9ecef;
	padding: 10px;
	color: black;
}

.hotel-info-detail h2{
	font-size: 18px;
}

.hotel-info-detail-left{
	width: 10%;
	float: left;
}

.hotel-info-detail-right{
	width: 90%;
	float: left;
	font-size: 20px;
}
input[type="number"]::-webkit-outer-spin-button, 
input[type="number"]::-webkit-inner-spin-button { -webkit-appearance: none; -moz-appearance: none; appearance: none; margin: 0;}

#product-itme-sale-p{
    font-size: 12px;
    color: #ec4937;
    background-color: #fbf1ef;
}

#product-itme-salePrice-p{
	font-size: 17px;
	color: black;
}

#product-itme-price-p{
	text-decoration: line-through;
}
#arrow{
	border-color:#666 transparent transparent transparent;
	width:0; height:0; border-style:solid; border-width:15px; float: right;
	margin-right: 20px;
	margin-top: 10px;

}


.goods-right-2 button{
	margin-top: 20px;
	width: 70px;
	height: 30px;
	color: black;
	background-color: white;
	border: 1px solid #dadada;
	cursor: pointer;
}
</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - ${vo.titleHotel }</title>
</head>
<body>
	<div class="wrap">
		<input type="hidden" id="SessionId" value="${SessionId }"
										readonly="readonly">
		<input type="hidden" id="hotelId" value="${vo.id }"
										readonly="readonly">									
			
		<div class="container">
			<%@ include file="../common/header.jspf"%>
			<div class="goods">
				<div Class="goods-right">
				<div class="goods-right-2"style="height: 60px; text-align: right;">
				<c:if test="${SessionId eq vo.id}">
				<button style="margin-right:1px; " onclick="location.href='/hotel/hotelboard/update?numHotel=${vo.numHotel}'">수정</button>
				<button style="margin-right: 35px;" id="hotelDelete">삭제</button>
				</c:if>
				</div>
				
				
				<div class="goods-detail">
				  
    
      
      
        <div class="card-body" style="height: 500px; overflow: auto;">
          <!-- 구매버튼 -->
          <ul>
            <li>
              
                <button class="product-menu" type="button" id="btnscroll" style="overflow: hidden;"><span style="float: left;">상품
                  선택</span> <div id="arrow"></div></button>
                <div style=" width: 440px;display: none; overflow: auto;" id="scrollMain" class="productcheeck" id="productcheeck">
                </div>
                <div class="product-option" style="overflow: auto;">
                </div>
                  <div class="productResult">
                  	<div class="productResultValue">
                  	<p id="productAllAmount">총 0개</p><span id="productAllTotalPrice" style="margin-right: 10px;">0 원</span>
                  	</div>
                    <button type="submit" onclick="favorites_submit();">장바구니</button>
                    <button type="submit" onclick="ProBtnList();">구매하기</button>          
                  </div>
                
              
            </li>
          </ul>
        </div>
     
   
 
  <form style="display: hidden" action="/hotel/pronext/payResult" method="post" id="form">
    <input type="hidden" id="nameProlist" value=""/>
    <input type="hidden" id="priceProlist" value=""/>
    <input type="hidden" id="saleProlist" value=""/>
    <input type="hidden" id="numProlist" value=""/>
    <input type="hidden" id="checkIn" value="${param.checkIn}"/>
    <input type="hidden" id="checkOut" value="${param.checkOut}"/>
  </form>
  <script type="text/javascript">
function ProBtnList() {
  // 선택한 상품 보내기
  
   var id = $('#SessionId').val();
  if(id ==""|| id == null) {
    alert("로그인 해주세요!");
    location.href="/hotel/log/login";
    return;
  }
  
  
  var nameProlist = document.querySelectorAll('.product-option .product-item-result #namePro');
  console.log(nameProlist);
  if(nameProlist[0] == null || nameProlist[0] == "") {
    alert("구매 상품을 선택해 주세요");
    return;
  }
  var priceProlist = document.querySelectorAll('.product-option .product-item-result #pricePro');
  var saleProlist = document.querySelectorAll('.product-option .product-item-result #salePro');
  var numProlist = document.querySelectorAll('.product-option .product-item-result #numPro');
  var timePro = document.querySelectorAll('.productAmount');
  var testNum = $('#numHotel').val();
  var hotelImg = document.getElementById('hotelImg').value;
  var titleHotel = document.getElementById('titleHotel').value;
  var checkIn =	document.getElementById('checkIn').value;
  var checkOut = document.getElementById('checkOut').value;
  var url = "/hotel/pronext/pay?checkIn="+checkIn+"&checkOut="+checkOut;
  console.log(nameProlist);
  var arr = new Array();
  for(var i = 0; i < nameProlist.length; i++) {  
    console.log(i);
    console.log("i의 값 : "+$((nameProlist)[i]).val());
    console.log("test : " + typeof($((priceProlist)[i]).val()));
    arr[i] = {
        'nameProlist' : $((nameProlist)[i]).val(),
        'priceProlist' : $((priceProlist)[i]).val(),
        'saleProlist' : $((saleProlist)[i]).val(),
        'numProlist' : $((numProlist)[i]).val(),
        'timePro' : $((timePro)[i]).val(),
        'numHotel' : testNum,
        'hotelImg' : hotelImg,
        'titleHotel' : titleHotel
    };
  }
  var obj = JSON.stringify(obj = {"proList" : arr})
  console.log(obj);
  $.ajax({
    type : 'post',
    url : '/hotel/pronext/pay',
    headers : {
      'Content-Type' : 'application/json',
      'X-HTTP-Method-Override' : 'post'
    },
    data : obj,
    async : false,
    success : function(data) {
      document.location.href=url;
    }
  })
  
}

// 장바구니에 추가시 이동 할 것인지 물어봄

function favorites_submit() {
	  // 선택한 상품 장바구니 추가
	  
	   var id = $('#SessionId').val();
	  if(id ==""|| id == null) {
	    alert("로그인 해주세요!");
	    location.href="/hotel/log/login";

	    return;
	  }
	  
	  
	  var nameProlist = document.querySelectorAll('.product-option .product-item-result #namePro');
	  console.log(nameProlist);
	  if(nameProlist[0] == null || nameProlist[0] == "") {
	    alert("구매 상품을 선택해 주세요");
	    return;
	  }
	  var priceProlist = document.querySelectorAll('.product-option .product-item-result #pricePro');
	  var saleProlist = document.querySelectorAll('.product-option .product-item-result #salePro');
	  var numProlist = document.querySelectorAll('.product-option .product-item-result #numPro');
	  var timePro = document.querySelectorAll('.productAmount');
	  var testNum = $('#numHotel').val();
	  var hotelImg = document.getElementById('hotelImg').value;
	  var titleHotel = document.getElementById('titleHotel').value;
	  
	  var arr = new Array();
	  for(var i = 0; i < nameProlist.length; i++) {  
	    console.log(i);
	    console.log("i의 값 : "+$((nameProlist)[i]).val());
	    console.log("test : " + typeof($((priceProlist)[i]).val()));
	    arr[i] = {
	            'nameProlist' : $((nameProlist)[i]).val(),
	            'priceProlist' : $((priceProlist)[i]).val(),
	            'saleProlist' : $((saleProlist)[i]).val(),
	            'numProlist' : $((numProlist)[i]).val(),
	            'timePro' : $((timePro)[i]).val(),
	            'numHotel' : testNum,
	            'hotelImg' : hotelImg,
	            'titleHotel' : titleHotel
	    };
	  }
	  var obj = JSON.stringify(obj = {"proList" : arr})
	  console.log(obj);
	  $.ajax({
	    type : 'post',
	    url : '/hotel/pronext/favorites',
	    headers : {
	      'Content-Type' : 'application/json',
	      'X-HTTP-Method-Override' : 'post'
	    },
	    data : obj,
	    async : false,
	    success : function(data) {
	    	alert('장바구니 추가 완료')
	    	location.href="/hotel/member/attentionList";
	    }
	  })
	  
	}
</script>
				</div>
				</div>
				
				
				<div Class="goods-left">
                <input type="hidden" id="titleHotel" value="${vo.titleHotel}">
                <input type="hidden" id="hotelImg" value="${vo.hotelImg }">
                <input type="hidden" id="testNum" value="${vo.numHotel }">
				<div style="height: 10%; line-height: 100px;"><h1>${vo.titleHotel }</h1></div>
				<div style="height: 80%;" id="goods-photo">
				<img src="display?fileName=${vo.hotelImg }" />
				</div>
				</div>
			</div>


		
		</div>

		<div class="category-nav">
		<div class="container">
			<div class="radio">
				<input type="radio" id="tab-1" name="show" checked /> <input
					type="radio" id="tab-2" name="show"> <input type="radio"
					id="tab-3" name="show">
				<div class="tab" id="tab">
					<label for="tab-1" onclick="location.href='#tab'">숙소정보</label>
					<label for="tab-2" id="btnShowReview">후기</label> 
					<label for="tab-3" id="btnShowQuestions">문의사항</label>
				</div>
				<div class="category">
				<div class="category-content">
					<h1>숙소정보</h1>
					<div class="hotel-info">
					<div class="hotel-info-detail" style="height: 160px">
					
					<div class="hotel-info-detail-left"><h1>소개</h1></div>
					<div class="hotel-info-detail-right">${vo.contentHotel }</div>
					</div>
					<div class="hotel-info-detail" style="height: 160px">
					
					<div class="hotel-info-detail-left"><h1>이용 가능 &nbsp;&nbsp;&nbsp;동물</h1></div>
					<div class="hotel-info-detail-right">
					<c:forEach var="animals" items="${animals }">
					<c:if test="${animals == '개' }"><img src="<c:url value="/resources/img/dogicon.png" />"></c:if>
					<c:if test="${animals == '고양이' }"><img src="<c:url value="/resources/img/caticon.png" />"></c:if>
					<c:if test="${animals == '조류' }"><img src="<c:url value="/resources/img/birdicon.png" />"></c:if>
					<c:if test="${animals == '파충류' }"><img src="<c:url value="/resources/img/lizardicon.png" />"></c:if>
					
					</c:forEach></div>
					</div>
					</div>
				</div>
				<!-- 리뷰-->
				<div class="category-content">
					<div style="margin-bottom: 10px;"><h1 style="display: inline;">후기</h1><span style="color:#2e8de5;margin-left: 3px; font-weight: bold; font-size: 20px;">${count }건</span></div>
							<div class="review">
								<div id="reviewPOST">
									<input type="hidden" id="numHotel" value="${vo.numHotel}">
									<input type="hidden" id="SessionId" value="${SessionId }"
										readonly="readonly"><br>
									<div class="radiobutton">
										<input type="radio" style="margin-left: 22px;" name="star" id="star" value="5"
											checked="checked" /> 매우 만족 <input type="radio" name="star"
											id="star" value="4" /> 만족 <input type="radio" name="star"
											id="star" value="3" /> 보통 <input type="radio" name="star"
											id="star" value="2" /> 불만족 <input type="radio" name="star"
											id="star" value="1" /> 매우 불만족	
									</div>
									
									<br> <input type="text" id="contentReview"
										placeholder="내용 입력" required="required"
										style="width: 1000px; height: 100px;"><br>
										<button type="button" id="btnReview">후기 등록</button>
								</div>
								<div id="showContent"></div>
								<div id="review-paging">
								
								</div>
							</div>


							<div style="text-align: center;">
								
							</div>

							
						</div>
						<!-- 문의  -->
				<div class="category-content">
							<!-- 문의 -->
							<div id="questionsPOST" style="display: none;">
								<input type="hidden" id="numHotel" value="${vo.numHotel}">
								<input type="hidden" id="numQtReply" value="0">
								<!-- id는 글로 보이게 하기(type를 hidden으로 바꾸기) -->
								<input type="hidden" readonly="readonly" id="id" value="${SessionId }"> <input
									type="text" id="titleQt" placeholder="제목 입력"
									required="required" style="width: 850px; height: 30px;"><br>
								비밀글 체크 : 예 <input type="checkbox" id="secretCheck" value="t">
								아니요 <input type="checkbox" id="secretCheck" value="f"
									checked="checked"> <br> <input type="hidden"
									id="numAnswer" value="1"> <input type="text"
									id="contentQt" placeholder="내용 입력" required="required"
									style="width: 1000px; height: 60px;"><br> <input
									type="button" id="btnQuestion" value="등록">
							</div>
							
							<div style="overflow: hidden; margin-bottom: 10px;"><div style="float: left;"><h1 style="display: inline; margin-bottom: 10px;">문의 하기</h1><span style="color:#2e8de5;margin-left: 3px; font-weight: bold; font-size: 20px;">${questionCount }건</span></div>
							<div class="question-do" style="float: right; margin-left: 5px;">문의하기</div>
							</div>

					
					<table class="question-table">
					<thead>
					<tr height="50px">
					<th style="text-align: center;" width="5%">번호</th>
					<th width="10%">문의 종류</th>
					<th width="10%">답변 상태</th>
					<th width="50%">제목</th>
					<th width="10%">문의자</th>
					<th width="15%">등록일</th>
					</tr>
					</thead>
					<tbody  id= "quetion-td">		
					</tbody>
					
					</table>
					<div id="question-paging"></div>
				</div>
				</div>
				<div>
				<%@ include file="../common/footer.jspf"%>
				<br>
				</div>
			</div>
			
		</div>
		


		</div>
	  <script type="text/javascript">
 	  
	  // 가격에 콤마 찍는 함수
	  function priceToString(price) {
      return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');}
 	  	

 	  
      $(document).ready(function() {
        var numHotel = $('#numHotel').val(); 
        $('#btnShowReview').click(function(){
           getAllReview();  
           location.href="#tab";
        });
        
        $('#btnShowQuestions').click(function(){
          location.href="#tab";
          getAllQuestions();
 
        });
        
        
        
        // 호텔 정보 불러오기
        $('#btnShowContent').click(function(){
          // 주소, 호텔정보, 내용, 연락처 쓸 예정
        });
        
//--------- 구매 정보 -------------------------------------------------------------------------------------------------------------------        
         
         // 총 가격을 계산하고 화면에 띄워주는 함수
            function totalAllPrice() {
        		var totalAllPrice = 0;
        		var totalAllAmount = 0;
        		$(".totalPrice").each(function(){
        			totalAllPrice += Number($(this).val());
        		});
        		$('#productAllTotalPrice').text(priceToString(totalAllPrice+" 원"));
        		
        		$(".productAmount").each(function(){
        			totalAllAmount += Number($(this).val());
        		});	
        		$('#productAllAmount').text(priceToString("총 "+totalAllAmount+"개"));
        	}            
            
        
        // 구매 버튼 클릭시 스크롤 생성
          var proscroll = true;
        // 구매 창을 열고 닫게 해주는 기능
        $('#btnscroll').click(function(){
          console.log(this);
          console.log(proscroll);
          
          if(proscroll == true) {
        	getAllProduct();
        	$('#btnscroll').css('border-top','1px solid #0064FF');
        	$('#btnscroll').css('border-left','1px solid #0064FF');
        	$('#btnscroll').css('border-right','1px solid #0064FF');
        	$('#btnscroll').css('border-bottom','1px solid white');
        	$('#btnscroll').css('color','#0064FF');
        	$('#arrow').css('border-color','transparent transparent #0064FF transparent');
        	$('#arrow').css('margin','0px 20px 10px 0px');
        	$('#scrollMain').show();
        	$('.product-option').hide();
          proscroll = false;
          } else if(proscroll == false) {
        	$('#btnscroll').css('border','1px solid #bbb');
          	$('#btnscroll').css('color','black');
          	$('#arrow').css('border-color','#666 transparent transparent transparent');
          	$('#arrow').css('margin','10px 20px 0px 0px');
            $('#scrollMain').hide();
            $('.product-option').show();
            proscroll = true;
          }
        });
        
        function getAllProduct() {
          $('#scrollMain').show();
          console.log(this);
          var url = "/hotel/product/all/" + numHotel;
          $.getJSON(
             url,
             function(jsonData) {
               console.log(jsonData);
               var list = "";
               
               $(jsonData).each(function(){
            	   var price = this.pricePro;
                   var sale = this.salePro;
                   var salePrice =  price-sale;
                 list += '<div class="product-item">'
                 + '<button style="width:440px; height:80px;" class="btn btn-outline-dark" value="'+this.numPro+'" id="btnProduct">'                 
                 + '<input type="hidden" id="numPro" value="'+this.numPro+'">'
                 + '<input type="hidden" id="namePro" value="'+this.namePro+'">'
                 + '<input type="hidden" id="pricePro" value="'+this.pricePro +'">'
                 + '<input type="hidden" id="salePro" value="'+this.salePro+'">'
                 + '<div class=product-item-left>'
                 + this.namePro
                 + '</div>'
                 + '<div class=product-item-right>'
                 + '<p id="product-itme-price-p">'+priceToString(this.pricePro)+'원</p>'
                 + '<p id="product-itme-sale-p">추가할인 '+priceToString(this.salePro)+'원</p>'
                 + '<p id="product-itme-salePrice-p">'+priceToString(salePrice)+'<sapn style="font-size:13px">원</span></p>'
                 + '</div>'
                 
                }); // end each
               $('.productcheeck').html(list);      
             }
          );// end JSON
        }
        
        
        // 상품버튼을 누르면 보여주는 코드
        $('.productcheeck').on('click', '.product-item #btnProduct', function(){
          console.log("버튼 값 : "+$(this).val());
          proscroll = true;
          var t= $(this).val();
          var isSelected = false;
          console.log("is : "+isSelected);
          var list = "";
          var text = $(this).text();
          var namePro = $($(this).find('#namePro').prop('outerHTML')).val();
          // 버튼 안에 있는 span 값은 text에 작성해서 가져옴
          var pricePro = $($(this).find('#pricePro').prop('outerHTML')).val();
          var salePro =$($(this).find('#salePro').prop('outerHTML')).val();
          var numPro = $($(this).find('#numPro').prop('outerHTML')).val();
          var salePrice = pricePro-salePro;
		
         
      	
          if(t == $('#productNum'+t).val()){
              isSelected = true;
              proscroll = false;
              alert('이미 추가 된 항목입니다.')
          }
        	  
          if (isSelected == true){
        	  return;
          }
          
          // input값으로 저장해서 가져오는 코드(ex:numPro) 상품을 누르면 결과창에 상품을 보여줌
          list +='<div class="product-item-result" id="product'+numPro+'"style="width:400px;" value="'+numPro+'">'
          + '<input type="hidden" id="namePro"  value="'+ namePro +'">'
          + '<input type="hidden" id="pricePro" value="'+ pricePro +'">'
          + '<input type="hidden" id="salePro" value="'+ salePro +'">'
          + '<input type="hidden" id="numHotel" value="'+ numHotel +'">'                 
          + '<input type="hidden" id="numPro" value="'+ numPro +'">'
          + '<input type="hidden" class="productNum" id="productNum'+t+'" value="'+ numPro +'">'
          + '<input type="hidden" class="salePrice" id="salePrice'+t+'" value="'+ salePrice +'">'
          + '<input type="hidden" class="totalPrice" id="totalPrice'+t+'" class="totalPrice" value="'+ salePrice +'">'
          + '<sapn id="product-name-span">'+namePro+'</span>'
          + '<button type="button"  class="product-delete" value="'+t+'">X</button>'
          + '<div class="option-amount">'
          + '<button type="button"  class="product-amount-sub" value="'+t+'" style="border-right: 1px solid #eee; font-size: 40px; cursor: pointer;">-</button>'
          + '<input type="number" class="productAmount" id="timePro'+t+'" value="1">'
          + '<button type="button" class="product-amount-add" value="'+t+'" style="border-left: 1px solid #eee; cursor: pointer;">+</button>'
          + '</div>'
          + '<span id="product-price-span"><span  id="productSum'+t+'" pattern="#,###,###,###">'+priceToString(salePrice)+'</span>원</span>'
          + '</div>';
          $('.product-option').prepend(list);
          totalAllPrice();
          $('#scrollMain').hide();
          $('.product-option').show();
      	  $('#btnscroll').css('border','1px solid #bbb');
      	  $('#btnscroll').css('color','black'); 
          
          
     
        });
            var on = true;

            
	// +버튼을 누르면 상품 수량이 늘어남
    $(document).on('click', '.product-amount-add', function(){
		var value = $(this).val(); 
		console.log("value : "+value);
		var amount = $('#timePro'+value).val();
		console.log("amount : "+ amount);
		var price = $('#salePrice'+value).val();
		console.log("price : "+ price);
		amount++
		var totalPrice = amount*price;
		console.log("totalPrice : "+ totalPrice);
		$('#timePro'+value).val(amount);
		$('#totalPrice'+value).val(totalPrice);
		$('#productSum'+value).text(priceToString(totalPrice));
		totalAllPrice();
	});    
    
 	// -버튼을 누르면 상품 수량이 줄어듬
    $(document).on('click', '.product-amount-sub', function(){
		var value = $(this).val(); 
		console.log("value : "+value);
		var amount = $('#timePro'+value).val();
		console.log("amount : "+ amount);
		var price = $('#salePrice'+value).val();
		console.log("price : "+ price);
		
		if(amount > 1){
		amount--
		var totalPrice = amount*price;
		console.log("totalPrice : "+ totalPrice);
		$('#timePro'+value).val(amount);
		$('#totalPrice'+value).val(totalPrice);
		$('#productSum'+value).text(priceToString(totalPrice));
		totalAllPrice();
		}	
	});    
    
 	// 상품 삭제 버튼
    $(document).on('click', '.product-delete', function(){
			$(this).parent().parent().remove();
	});    
	
 	// 수량 칸 수동으로 입력시 값 저장
    $(document).on('blur', '.productAmount', function(){
    	var amount = $(this).val();
    	var value = $(this).prev().val();
    	console.log("value : "+ value);
    	var price = $('#salePrice'+value).val();
		var totalPrice = amount*price;
		console.log("totalPrice : "+ totalPrice);
		$('#timePro'+value).val(amount);
		$('#totalPrice'+value).val(totalPrice);
		$('#productSum'+value).text(priceToString(totalPrice));
		totalAllPrice();
		
	});  
 	

    
//-------------------------------------------이하 리뷰-----------------------------------------------------------------------------------
                // 리뷰 게시판   
                // 등록 버튼 클릭시
                $('#btnReview').click(function() {
                  console.log(this);
                  var id = $('#SessionId').val();
                  var star = $('input:radio[name="star"]:checked').val();
                  var titleReview = $('#titleReview').val();
                  var contentReview = $('#contentReview').val();
                  var obj = {
                    'numHotel' : numHotel,
                    'star' : star,
                    'id' : id,
                    'titleReview' : titleReview,
                    'contentReview' : contentReview
                  };
                  console.log(obj);

                  $.ajax({
                    type : 'post',
                    url : '/hotel/review',                    
                    headers : {
                      'Content-Type' : 'application/json',
                      'X-HTTP-Method-Override' : 'POST'
                    },
                    data : JSON.stringify(obj),
                    success : function(result, status) {
                      console.log(result);
                      console.log(status);
                      if (result == 1) {
                        alert("리뷰 입력 성공");
                        getAllReview();
                        $('#contentReview').val(''); // 초기화
                        $('#titleReview').val('');
                        getAllReview();
                        getAllReviewPaging();
                      }
                    }
                  })// end ajax 
                });// end btnReply

                // 리뷰 목록 불러오기
                function getAllReview() {
                  var paging = $(this).prevAll('#reviewPaging')
                  
                  console.log("paging 값 : " +paging);
                  var url = '/hotel/review/all/' + numHotel+'?page=';
                  $
                      .getJSON(
                          url,
                          function(jsonData) {
                            console.log(jsonData);
                            var list = ""; // JSON 데이터를 표현할 변수
                            $(jsonData)
                                .each(
                                    function() { // jsonData를 사용하는 each 반복문
                                      var replyDate = new Date(this.replyDate);
                                      var SessionId = $('#SessionId').val();
                                      
                                      

                                      
                                      // this : jsonData
                                      if(this.id === SessionId){
                                      list += '<div class="review_item">'
                                          + '<pre>'
                                          + '<table id="review-login">'
                                          + '<tbody>'
                                          + '<tr>'
                                          + '<td width="10%" style="text-align: center;"><span id="review-star">'+ this.star+'.0</span></td>'
                                          + '<td width="75%" id="review-td2">'+ this.contentReview+'</td>'
                                          + '<td width="15%" id="review-td3"><span> 작성자'+': '+this.id+' </span><br>'
                                          + '<span> 등록일'+': '
                                          + moment(this.dateReview).format(
                                              "YYYY-MM-DD")
                                          + '</span>'
                                          +'</td>'
                                          + '</tr>'
                                          + '</tbody>'
                                          + '</table>'
                                          + '<div class="review-bottom">'
                                          + '<input type="hidden" id="numReview" value="'+ this.numReview + '">'
                                          + '<input type="hidden" id="id" value="' + this.id + '" />'
                                          + '<input type="hidden" id="titleReview" value="'+ this.titleReview + '">'
                                          + '<input type="hidden" id="star" value="'+ this.star +'">'
                                          + '<input type="hidden" id="contentReview" value="'+ this.contentReview+ '">'
                                          + '<input type="hidden" id= "dateReview" value="' + this.dateReview + '">'
                                          + '<br><button class="review_btn_update" type="button">수정하기</button>'
                                          + '<button class="review_btn_delete" type="button">삭제하기</button>'
                                          + '<div>'
                                          + '</pre>' + '</div>';
                                      } else if(this.id !== SessionId){
                                    	  list += '<div class="review_item">'
                                              + '<pre>'
                                              + '<table>'
                                              + '<tbody>'
                                              + '<tr>'
                                              + '<td width="10%" style="text-align: center;"><span id="review-star">'+ this.star+'.0</span></td>'
                                              + '<td width="75%" id="review-td2">'+ this.contentReview+'</td>'
                                              + '<td width="15%" id="review-td3"><span> 작성자'+': '+this.id+' </span><br>'
                                              + '<span> 등록일'+': '
                                              + moment(this.dateReview).format(
                                                  "YYYY-MM-DD")
                                              + '</span>'
                                              +'</td>'
                                              + '</tr>'
                                              + '</tbody>'
                                              + '</table>'
                                              + '<div class="review-bottom">'
                                              + '<input type="hidden" id="numReview" value="'+ this.numReview + '">'
                                              + '<input type="hidden" id="id" value="' + this.id + '" />'
                                              + '<input type="hidden" id="titleReview" value="'+ this.titleReview + '">'
                                              + '<input type="hidden" id="star" value="'+ this.star +'">'
                                              + '<input type="hidden" id="contentReview" value="'+ this.contentReview+ '">'
                                              + '<input type="hidden" id= "dateReview" value="' + this.dateReview + '">'
                                              + '<div>'
                                              + '</pre>' + '</div>';
                                      }
                                    }); // end each
                            $('#showContent').html(list)
                          } // end callback         
                      ); // end getJSON      
                } // end getAllReview
               

                
                // 리뷰 페이징 번호 불러오기
                function getAllReviewPaging() {

                  
                  var url = '/hotel/review/paging/' + numHotel;
                  $
                      .getJSON(
                          url,
                          function(jsonData) {
                            console.log(jsonData);
                            var list = ""; // JSON 데이터를 표현할 변수
                            $(jsonData)
                                .each(
                                    function() { // jsonData를 사용하는 each 반복문
                                    var count = this.totalCount;
                                    var hasPrev = this.hasPrev;
                                    var hasNext = this.hasNext;
                                    var startPageNo = this.startPageNo-1;
                                    var endPageNo = this.endPageNo+1;
                                    list+= '<ul class="pager">'
                                    if(hasPrev){
                                    	list+='<li class="review-paging" value="'+startPageNo+'">이전</li>'
                                    }
                                 	for (var i = this.startPageNo; i <= this.endPageNo; i++) {
                                 	  if(i==1){
                                 		 list +='<li class ="review-paging" value="'+i+'" style="background-color: #51abf3; color: white;")>'+i+'</li>'}
                                 	  else{
                                 		 list +='<li class ="review-paging" value="'+i+'">'+i+'</li>'
                                 	  }
                              		}
                                    if(hasNext){
                                    	list+= '<li class="review-paging" value="'+endPageNo+'">다음</a></li>'       
                                    }
                                    list+= '</ul>'
                                    
                                    	  
                                    }); // end each
                            $('#review-paging').html(list)
                          } // end callback         
                      ); // end getJSON      
                } // end getAllPaging
                getAllReviewPaging();
                
                // 클릭시 숫자 목록 색바뀜
                $(document).on('click', '.review-paging', function(){
                	var page = $(this).val(); 
					

                    var url = '/hotel/review/paging/' + numHotel+'?page='+page;
                    $
                        .getJSON(
                            url,
                            function(jsonData) {
                              console.log(jsonData);
                              var list = ""; // JSON 데이터를 표현할 변수
                              $(jsonData)
                                  .each(
                                      function() { // jsonData를 사용하는 each 반복문
                                    	  var count = this.totalCount;
                                          var hasPrev = this.hasPrev;
                                          var hasNext = this.hasNext;
                                          var startPageNo = this.startPageNo -1;
                                          var endPageNo = this.endPageNo+1;
                                          list+= '<ul class="pager">'
                                          
                                          if(hasPrev){
                                          	list+='<li class="review-paging" value="'+startPageNo+'">이전</a></li>'
                                          }
                                       	for (var i = this.startPageNo; i <= this.endPageNo; i++) {
                                       		  if(i==page){
                                       			list +='<li class ="review-paging" value="'+i+'" style="background-color: #51abf3; color: white;")>'+i+'</li>'
                                       		  }else{
                                    		  list +='<li class ="review-paging" value="'+i+'")>'+i+'</li>'}
                                    		}
                                          if(hasNext){
                                          	list+= '<li class="review-paging" value="'+endPageNo+'">다음</a></li>'       
                                          }
                                          
                                          list+= '</ul>'      	
                                      }); // end each
                              $('#review-paging').html(list)
                              
                            } // end callback         
                        ); // end getJSON  
                  });
      
      			
                
				// 페이징 이전,다음 목록 버튼으로 불러오기
                $(document).on('click', '.review-paging', function(){
                	var page = $(this).val();
                	console.log("this : " + page);
                    var url = '/hotel/review/all/' + numHotel+'?page='+page;
                    $
                        .getJSON(
                            url,
                            function(jsonData) {
                              console.log(jsonData);
                              var list = ""; // JSON 데이터를 표현할 변수
                              $(jsonData)
                                  .each(
                                      function() { // jsonData를 사용하는 each 반복문
                                        var replyDate = new Date(this.replyDate);
                                        var SessionId = $('#SessionId').val();
                                        
                                        

                                        
                                        // this : jsonData
                                        if(this.id === SessionId){
                                        list += '<div class="review_item">'
                                            + '<pre>'
                                            + '<table id="review-login">'
                                            + '<tbody>'
                                            + '<tr>'
                                            + '<td width="10%" style="text-align: center;"><span id="review-star">'+ this.star+'.0</span></td>'
                                            + '<td width="75%" id="review-td2">'+ this.contentReview+'</td>'
                                            + '<td width="15%" id="review-td3"><span> 작성자'+': '+this.id+' </span><br>'
                                            + '<span> 등록일'+': '
                                            + moment(this.dateReview).format(
                                                "YYYY-MM-DD")
                                            + '</span>'
                                            +'</td>'
                                            + '</tr>'
                                            + '</tbody>'
                                            + '</table>'
                                            + '<div class="review-bottom">'
                                            + '<input type="hidden" id="numReview" value="'+ this.numReview + '">'
                                            + '<input type="hidden" id="id" value="' + this.id + '" />'
                                            + '<input type="hidden" id="titleReview" value="'+ this.titleReview + '">'
                                            + '<input type="hidden" id="star" value="'+ this.star +'">'
                                            + '<input type="hidden" id="contentReview" value="'+ this.contentReview+ '">'
                                            + '<input type="hidden" id= "dateReview" value="' + this.dateReview + '">'
                                            + '<br><button class="review_btn_update" type="button">수정하기</button>'
                                            + '<button class="review_btn_delete" type="button">삭제하기</button>'
                                            + '<div>'
                                            + '</pre>' + '</div>';
                                        } else if(this.id !== SessionId){
                                      	  list += '<div class="review_item">'
                                                + '<pre>'
                                                + '<table>'
                                                + '<tbody>'
                                                + '<tr>'
                                                + '<td width="10%" style="text-align: center;"><span id="review-star">'+ this.star+'.0</span></td>'
                                                + '<td width="75%" id="review-td2">'+ this.contentReview+'</td>'
                                                + '<td width="15%" id="review-td3"><span> 작성자'+': '+this.id+' </span><br>'
                                                + '<span> 등록일'+': '
                                                + moment(this.dateReview).format(
                                                    "YYYY-MM-DD")
                                                + '</span>'
                                                +'</td>'
                                                + '</tr>'
                                                + '</tbody>'
                                                + '</table>'
                                                + '<div class="review-bottom">'
                                                + '<input type="hidden" id="numReview" value="'+ this.numReview + '">'
                                                + '<input type="hidden" id="id" value="' + this.id + '" />'
                                                + '<input type="hidden" id="titleReview" value="'+ this.titleReview + '">'
                                                + '<input type="hidden" id="star" value="'+ this.star +'">'
                                                + '<input type="hidden" id="contentReview" value="'+ this.contentReview+ '">'
                                                + '<input type="hidden" id= "dateReview" value="' + this.dateReview + '">'
                                                + '<div>'
                                                + '</pre>' + '</div>';
                                        }
                                      }); // end each
                              $('#showContent').html(list)
                            } // end callback         
                        ); // end getJSON  
                  });
				
                // 수정 버튼을 클릭하면 선택된 댓글 수정
                $('#showContent')
                    .on(
                        'click',
                        '.review_item .review_btn_update',
                        function() {
                          console.log(this);
                          var list = "";
                          var numReview = $(this).prevAll('#numReview').val();
                          var titleReview = $(this).prevAll('#titleReview')
                              .val();
                          var star = $(this).prevAll('#star').val();
                          var contentReview = $(this).prevAll('#contentReview')
                              .val();
                          var dateReview = $(this).prevAll('#dateReview').val();
                          var id = $(this).prevAll('#id').val();

                          // 수정시 불러올 내용
                          list += '<div class="review_item" id="review-update-id">'
                              + '<input type="hidden" id="numReview" value="' + numReview + '">' 
                              + '<div class="reRadiobutton">'
                              + '<input type="radio" name="starre" style="margin-left: 22px; id="star" value="5" checked="checked"/>'
                              + '매우 만족'
                              + '<input type="radio" name="starre" id="star" value="4" />'
                              + '만족'
                              + '<input type="radio" name="starre" id="star" value="3" />'
                              + '보통'
                              + '<input type="radio" name="starre" id="star" value="2" />'
                              + '불만족'
                              + '<input type="radio" name="starre" id="star" value="1" />'
                              + '매우 불만족'
                              + '</div>'
                              + '<input type="hidden" id="titleReview" value="' + titleReview + '" required="required" style="width:700px; height:30px;"><br><br>'
                              + '<table id="review-update-table">'
                              + '<tbody>'
                              + '<tr>'
                              + '<td width="10%" style="text-align: center;"><span id="review-star">'+ star+'.0</span></td>'
                              + '<td width="75%" id="review-td2">'+ '<input type="text" id="contentReview2" required="required" autofocus value="'+contentReview+'">'+'</td>'
                              + '<td width="15%" id="review-td3"><span> 작성자'+': '+id+' </span><br>'
                              + '<span> 등록일'+': '
                              + moment(this.dateReview).format(
                                  "YYYY-MM-DD")
                              + '</span>'
                              +'</td>'
                              + '</tr>'
                              + '</tbody>'
                              + '</table>'

                              + '<input type="hidden" id= "dateReview" value="' + moment(this.dateReview).format(
                              "YYYY-MM-DD") + '">'
                              + ''
                              + '<button class="review_update_result" type="button">수정하기</button>'  
                              + '<button class="review_btn_cancel" name="review_btn_cancel" type="button">취소하기</button><br><hr>'
                              + '</div>';
                          //자기 위에 붙이기
                          var prevTr = $(this).parent().parent();
                          console.log(dateReview);
                          prevTr.after(list);
                          //자기 자신 삭제
                          $(this).parent().parent().remove();
						  
                        }); // end on

                // 수정하기 버튼
                $('#showContent').on(
                    'click',
                    "button[class='review_update_result']",
                    function() {
                      console.log("나는 : " +this);
                      var numReview = $(this).prevAll('#numReview').val();
                      var id = $(this).prevAll('#id').val();
                      var titleReview = $(this).prevAll('#titleReview')
                          .val();
                      var star = $('input:radio[name="starre"]:checked').val();
                      var contentReview = $('#contentReview2').val();
                      console.log("리뷰 : "+ contentReview);
                      var dateReview = $(this).prevAll('#dateReview').val();
                      console.log("날짜 : " + dateReview);
                      console.log("불러온값" + star);
                      $.ajax({
                        type : 'put',
                        url : '/hotel/review/' + numReview,
                        headers : {
                          'Content-Type' : 'application/json',
                          'X-HTTP-Method-Override' : 'PUT'
                        },
                        data : JSON.stringify({
                          'numReview' : numReview,
                          'id' : id,
                          'titleReview' : titleReview,
                          'star' : star,
                          'contentReview' : contentReview,
                          'dateReview' : dateReview
                        }),
                        success : function(result) {
                          if(result == 'success') {
                            alert('댓글 수정 성공');
                            getAllReview();
                            getAllReviewPaging();
                          }
                        }
                      });
                      });

                // 수정 취소시
                $('#showContent')
                    .on(
                        "click",
                        "button[class='review_btn_cancel']",
                        function() {
                          getAllReview();
                        });

                // 삭제버튼
                $('#showContent').on('click', '.review_item .review_btn_delete',
                    function() {
                      console.log(this);
                      if (confirm("정말 삭제하시겠습니까??") == true) { //확인        
                      } else { //취소
                        return;
                      }
                      var numReview = $(this).prevAll('#numReview').val();
                      $.ajax({
                        type : 'delete',
                        url : '/hotel/review/' + numReview,
                        headers : {
                          'Content-Type' : 'application/json',
                          'X-HTTP-Method-Override' : 'DELETE'
                        },
                        data : JSON.stringify({
                          'numReview' : numReview
                        }),
                        success : function(result) {
                          if (result == 'success') {
                            alert('삭제 성공');
                            getAllReview();
                            getAllReviewPaging();
                          }
                        } // end success
                      }); // end ajax
                    });// on
                    
                    
// ------------------------여기부터 문의 -------------------------------------------------------------------------------------------------
                
                // 비밀글 체크 번호(하나만)
                $('input[type="checkbox"][id="secretCheck').click(function(){
                  if($(this).prop('checked')){
                    $('input[type="checkbox"][id="secretCheck"]').prop('checked',false);                    
                    $(this).prop('checked',true);
                  }
                });
                
                // 문의 등록 
                $('#btnQuestion').click(function(){
                  if(!$(':input:checkbox[id=secretCheck]:checked').val()) {
                    alert("비밀글을 체크 해주세요");
                    return;
                  }
                  
                  console.log(this);
                  var numQt = $('#numQt').val();
                  var titleQt = $('#titleQt').val();
                  var secretCheck = $('input:checkbox[id="secretCheck"]:checked').val();
                  var numAnswer = $('#numAnswer').val();
                  var contentQt = $('#contentQt').val();
                  var id = $('#id').val();
                  
                  var obj = {
                      'numQt' : numQt,
                      'numHotel' : numHotel,
                      'titleQt' : titleQt,
                      'secretCheck' : secretCheck,
                      'numAnswer' : numAnswer,
                      'contentQt' : contentQt,
                      'id' : id
                  };
                  
                  $.ajax({
                    type : 'post',
                    url : '/hotel/questions',
                    headers : {
                      'Content-Type' : 'application/json',
                      'X-HTTP-Method-Override' : 'POST'
                    },
                    data : JSON.stringify(obj),
                    success : function(result, status) {
                      if(result == 1) {
                        alert('문의 등록 성공');
                        $('#titleQt').val('');
                        $('#contentQt').val('');
                        getAllQuestions();
                      }
                    }
                  })// end ajax                  
                }); // end btnReview
                var num = 0;
                
                
                
                
                // 목록 불러오기(대댓글 제외)
                function getAllQuestions() {
                
                  var url = "/hotel/questions/all/" + numHotel;
                  console.log("문의 게시글 불러오기 URL : " + url);
                  $.getJSON(
                     url,
                     function(jsonData) {
                       console.log(jsonData)
                       var list = "";
                       var tdList = "";
                       var SessionId = $('#SessionId').val();
                       var hotelId = $('#hotelId').val();
                       console.log(hotelId)
                       $(jsonData).each(function(){
                         // 정렬하기(li 또는 tb)
                         var check = this.secretCheck;
                                              
                         if(this.id === SessionId){
                         tdList += '<tr class="question-reply" id="question-reply'+num+'">'
                         + '<td style="text-align:center;"><input type="hidden" style="background-colr="white"; " id="numQt'+num+'" value="'+this.numQt+'" readonly="readonly">'+this.rn+'</td>'
                         + '<td>상품</td>'
                         + '<td>답변 완료</td>'
                         + '<td><button style="background-color: white; cursor:pointer;"; class="questionsReplyCount" id="questionsReplyCount'+num+'" type="button" value="'+num+'">'+this.titleQt+'</button>' 
                         + '<button class="questions-btn-delete" type="button" value="'+this.numQt+'">삭제</button>'
                         + '<button class="questions-btn-update" type="button" value="'+num+'">수정</button>'                         
                         + '</td>'
                         + '<td>'+this.id+'</td>'
                         + '<td>'+moment(this.dateQt).format("YYYY-MM-DD HH:mm")+'</td>'
                         + '<td>'
                         + '</td>'
                         + '</tr>'
                         + '<tr class="question-reply-q" id="question-reply-q'+num+'"style="display: none;">'
                         + '<td></td>'
                         + '<td></td>'
                         + '<td></td>'
                         + '<td>'                 
                         + '<span id="question-span-q">Q</span>&nbsp;&nbsp;'+this.contentQt
                         + '<button class="questionsReplyInsert" type="button" value="'+num+'">답글 달기</button>'
                         + '<div class="questions-itemRe" id="questions-itemRe'+num+'"><div>'
                         + '</td>'
                         + '<td></td>'
                         + '<td>'
                         + '<input type="hidden" id="num'+num+'" value="' + num + '">'
                         + '<input type="hidden" id="titleQt'+num+'" value="' + this.titleQt + '">'                       
                         + '<input type="hidden" id="numQt'+num+'" value="' + this.numQt + '"'
                         + '<input type="hidden" id="secretCheck'+num+'" value="' + this.secretCheck + '"> <br>'
                         + '<input type="hidden" id="numAnswer'+num+'"  value="' + this.numAnswer + '">'
                         + '<input type="hidden" id="contentQt'+num+'"  value="' + this.contentQt + '">'
                         + '<input type="hidden" id="id'+num+'" value="' + this.id +'">'
                         + '<input type="hidden" id="dateQt'+num+'" value="' + moment(this.dateQt).format("YYYY-MM-DD HH:mm:ss") +'">'
                         + '<input type="hidden" id="numHotel'+num+'" value="' + this.numHotel +'">'
                         +'</td>'
                         + '</tr>';}
                         else if(this.id !== SessionId){
                             tdList += '<tr id="question-reply'+num+'">'
                             + '<td style="text-align:center;"><input type="hidden" style="background-colr="white"; " id="numQt'+num+'" value="'+this.numQt+'" readonly="readonly">'+this.rn+'</td>'
                             + '<td>상품</td>'
                             + '<td>답변 완료</td>';
                             if(check === "f" || hotelId === SessionId) {
                             tdList+= '<td><button style="background-color: white; cursor:pointer;"; class="questionsReplyCount" id="questionsReplyCount'+num+'" type="button" value="'+num+'">'+this.titleQt+'</button>'                        
                             + '</td>'
                             }else if(check === "t"){
                             tdList+= '<td>비밀글입니다.</td>';
                             }
                             tdList+= '<td>'+this.id+'</td>'
                             + '<td>'+moment(this.dateQt).format("YYYY-MM-DD HH:mm")+'</td>'
                             + '<td>'
                             + '</td>'
                             + '</tr>'
                             + '<tr class="question-reply-q" id="question-reply-q'+num+'"style="display: none;">'
                             + '<td></td>'
                             + '<td></td>'
                             + '<td></td>'
                             + '<td>'                 
                             + '<span id="question-span-q">Q</span>&nbsp;&nbsp;'+this.contentQt;
                             if(SessionId == hotelId){
                             tdList+= '<button class="questionsReplyInsert" type="button" value="'+num+'">답글 달기</button>'
                             + '<div class="questions-itemRe" id="questions-itemRe'+num+'"><div>'
                             }
                             tdList+= '</td>'
                             + '<td></td>'
                             + '<td>'
                             + '<input type="hidden" id="num'+num+'" value="' + num + '">'
                             + '<input type="hidden" id="titleQt'+num+'" value="' + this.titleQt + '">'                       
                             + '<input type="hidden" id="numQt'+num+'" value="' + this.numQt + '"'
                             + '<input type="hidden" id="secretCheck'+num+'" value="' + this.secretCheck + '"> <br>'
                             + '<input type="hidden" id="numAnswer'+num+'"  value="' + this.numAnswer + '">'
                             + '<input type="hidden" id="contentQt'+num+'"  value="' + this.contentQt + '">'
                             + '<input type="hidden" id="id'+num+'" value="' + this.id +'">'
                             + '<input type="hidden" id="dateQt'+num+'" value="' + moment(this.dateQt).format("YYYY-MM-DD HH:mm:ss") +'">'
                             + '<input type="hidden" id="numHotel'+num+'" value="' + this.numHotel +'">'
                             +'</td>'
                             + '</tr>';	 
                        	 
                         }
                         
                         num++;
                         
                       }); // end each
                       $('#quetion-td').html(tdList);
                     }
                  ); // end getJSON                  
                  on = true;
                } // end getAllQuestions
        		
                // 문의 새창에서 글 작성 시 새로고침
                window.call = function(){
                    
                    var url = "/hotel/questions/all/" + numHotel;
                    console.log("문의 게시글 불러오기 URL : " + url);
                    $.getJSON(
                       url,
                       function(jsonData) {
                         console.log(jsonData)
                         var list = "";
                         var tdList = "";
                         var SessionId = $('#SessionId').val();
                         var hotelId = $('#hotelId').val();
                         console.log(hotelId)
                         $(jsonData).each(function(){
                           // 정렬하기(li 또는 tb)
                           var check = this.secretCheck;
                                                
                           if(this.id === SessionId){
                           tdList += '<tr class="question-reply" id="question-reply'+num+'">'
                           + '<td style="text-align:center;"><input type="hidden" style="background-colr="white"; " id="numQt'+num+'" value="'+this.numQt+'" readonly="readonly">'+this.rn+'</td>'
                           + '<td>상품</td>'
                           + '<td>답변 완료</td>'
                           + '<td><button style="background-color: white; cursor:pointer;"; class="questionsReplyCount" id="questionsReplyCount'+num+'" type="button" value="'+num+'">'+this.titleQt+'</button>' 
                           + '<button class="questions-btn-delete" type="button" value="'+this.numQt+'">삭제</button>'
                           + '<button class="questions-btn-update" type="button" value="'+num+'">수정</button>'                         
                           + '</td>'
                           + '<td>'+this.id+'</td>'
                           + '<td>'+moment(this.dateQt).format("YYYY-MM-DD HH:mm")+'</td>'
                           + '<td>'
                           + '</td>'
                           + '</tr>'
                           + '<tr class="question-reply-q" id="question-reply-q'+num+'"style="display: none;">'
                           + '<td></td>'
                           + '<td></td>'
                           + '<td></td>'
                           + '<td>'                 
                           + '<span id="question-span-q">Q</span>&nbsp;&nbsp;'+this.contentQt
                           + '<button class="questionsReplyInsert" type="button" value="'+num+'">답글 달기</button>'
                           + '<div class="questions-itemRe" id="questions-itemRe'+num+'"><div>'
                           + '</td>'
                           + '<td></td>'
                           + '<td>'
                           + '<input type="hidden" id="num'+num+'" value="' + num + '">'
                           + '<input type="hidden" id="titleQt'+num+'" value="' + this.titleQt + '">'                       
                           + '<input type="hidden" id="numQt'+num+'" value="' + this.numQt + '"'
                           + '<input type="hidden" id="secretCheck'+num+'" value="' + this.secretCheck + '"> <br>'
                           + '<input type="hidden" id="numAnswer'+num+'"  value="' + this.numAnswer + '">'
                           + '<input type="hidden" id="contentQt'+num+'"  value="' + this.contentQt + '">'
                           + '<input type="hidden" id="id'+num+'" value="' + this.id +'">'
                           + '<input type="hidden" id="dateQt'+num+'" value="' + moment(this.dateQt).format("YYYY-MM-DD HH:mm:ss") +'">'
                           + '<input type="hidden" id="numHotel'+num+'" value="' + this.numHotel +'">'
                           +'</td>'
                           + '</tr>';}
                           else if(this.id !== SessionId){
                               tdList += '<tr id="question-reply'+num+'">'
                               + '<td style="text-align:center;"><input type="hidden" style="background-colr="white"; " id="numQt'+num+'" value="'+this.numQt+'" readonly="readonly">'+this.rn+'</td>'
                               + '<td>상품</td>'
                               + '<td>답변 완료</td>';
                               if(check === "f" || hotelId === SessionId) {
                               tdList+= '<td><button style="background-color: white; cursor:pointer;"; class="questionsReplyCount" id="questionsReplyCount'+num+'" type="button" value="'+num+'">'+this.titleQt+'</button>'                        
                               + '</td>'
                               }else if(check === "t"){
                               tdList+= '<td>비밀글입니다.</td>';
                               }
                               tdList+= '<td>'+this.id+'</td>'
                               + '<td>'+moment(this.dateQt).format("YYYY-MM-DD HH:mm")+'</td>'
                               + '<td>'
                               + '</td>'
                               + '</tr>'
                               + '<tr class="question-reply-q" id="question-reply-q'+num+'"style="display: none;">'
                               + '<td></td>'
                               + '<td></td>'
                               + '<td></td>'
                               + '<td>'                 
                               + '<span id="question-span-q">Q</span>&nbsp;&nbsp;'+this.contentQt;
                               if(SessionId == hotelId){
                               tdList+= '<button class="questionsReplyInsert" type="button" value="'+num+'">답글 달기</button>'
                               + '<div class="questions-itemRe" id="questions-itemRe'+num+'"><div>'
                               }
                               tdList+= '</td>'
                               + '<td></td>'
                               + '<td>'
                               + '<input type="hidden" id="num'+num+'" value="' + num + '">'
                               + '<input type="hidden" id="titleQt'+num+'" value="' + this.titleQt + '">'                       
                               + '<input type="hidden" id="numQt'+num+'" value="' + this.numQt + '"'
                               + '<input type="hidden" id="secretCheck'+num+'" value="' + this.secretCheck + '"> <br>'
                               + '<input type="hidden" id="numAnswer'+num+'"  value="' + this.numAnswer + '">'
                               + '<input type="hidden" id="contentQt'+num+'"  value="' + this.contentQt + '">'
                               + '<input type="hidden" id="id'+num+'" value="' + this.id +'">'
                               + '<input type="hidden" id="dateQt'+num+'" value="' + moment(this.dateQt).format("YYYY-MM-DD HH:mm:ss") +'">'
                               + '<input type="hidden" id="numHotel'+num+'" value="' + this.numHotel +'">'
                               +'</td>'
                               + '</tr>';	 
                          	 
                           }
                           
                           num++;
                           
                         }); // end each
                         $('#quetion-td').html(tdList);
                       }
                    );
        		};
               
                // 대댓글 답글 등록 버튼 만들기
                $(document).on('click', '.questionsReplyInsert', function(){
                  var list = "";
                  var num = $(this).val();
                  var SessionId = $('#SessionId').val();
                  var hotelId = $('#hotelId').val();
                  console.log(num);
                  var numQt = $(this).prevAll('#numQt').val();
                  list +='<input type="hidden" id="id" value="'+SessionId+'" readonly="readonly">'
                  + '<input type="hidden" id="numQtReply" value="' + numQt + '">'
                  + '<input type="hidden" id="numHotel" value="' + numHotel + '">'                  
                  + '<input type="hidden" id="titleQt" value="대댓글"><br>'                  
                  + '<input type="hidden" id="secretCheck" value="f">'
                  + '<input type="hidden" id="numAnswer" value="2">'
                  + '<input type="text" id="contentQt" placeholder="내용 입력" required="required" style="width: 505px; height: 60px; margin-bottom: 5px;">'
                  + '<button type="button" class="btnQuestionCancle" value="'+num+'">취소 하기</button><hr>'
                  + '<button type="button" class="btnQuestion" value="'+num+'">답변 등록</button><hr>'
                
                $('#questions-itemRe'+num).html(list);
                $(this).toggle();
                });// end questionsReplyInsert               
                
                // 대댓글 답글 취소
                                $(document).on('click', '.btnQuestionCancle', function(){
                  var list = "";
                  var num = $(this).val();
                  var SessionId = $('#SessionId').val();
                  var hotelId = $('#hotelId').val();
                  console.log(num);
                  var numQt = $(this).prevAll('#numQt').val();
                  list +=''
                
                $('#questions-itemRe'+num).html(list);
                $('#questionsReplyInsert'+num).toggle();
                });// end questionsReplyInsert  
                
                
                // 대댓글 쓰기
                $(document).on('click', '.btnQuestion', function(){
                  var num = $(this).val();
                  console.log("num : " + num);
                  var titleQt = $(this).prevAll('#titleQt').val();
                  console.log("titleQt : "+titleQt);
                  var secretCheck = $(this).prevAll('#secretCheck').val();
                  console.log("secretCheck : "+secretCheck);
                  var numAnswer = $(this).prevAll('#numAnswer').val();
                  console.log("numAnswer : "+numAnswer);
                  var contentQt = $(this).prevAll('#contentQt').val();
                  console.log("contentQt : "+contentQt);
                  var id = $(this).prevAll('#id').val();
                  console.log("id : "+id);
                  var numQtReply = $('#numQt'+num).val();
                  console.log("numQtReply : "+numQtReply);
                  var obj = {
                      'titleQt' : titleQt,
                      'secretCheck' : secretCheck,
                      'numAnswer' : numAnswer,
                      'contentQt' : contentQt,
                      'id' : id,
                      'numQtReply' : numQtReply,
                      'numHotel' : numHotel
                  };
                  $.ajax({
                    type : 'post',
                    url : '/hotel/questions',
                    headers : {
                      'Content-Type' : 'application/json',
                      'X-HTTP-Method-Override' : 'POST'
                    },
                    data : JSON.stringify(obj),
                    success : function(result, status) {   
                     if(result == 1) {
                       alert('답변 입력 성공');
                       getAllQuestionPaging();
                       getAllQuestions();
                       
                     }
                    } 
                  }); // end ajax
                }); // end btnQuestion
                
                // 문의 글 누르면 대댓글 추가
                $(document).on('click', '.questionsReplyCount', function(){                  
                  var numx = $(this).val();
                  console.log("numx : "+ numx);
                  var numQtReply = $('#numQt'+numx).val();
                  console.log("numQtReply : " +numQtReply);
				  console.log("아이디 : "+this.id)
                  var url = '/hotel/questions/replyAll/' + numQtReply;
              var list = "";
              var log = this;
                  console.log(log);
                  $.getJSON(
                      url,
                      function(jsonData) {                     
                        $(jsonData).each(function(){
                          var hotelId = this.id;
                          var WId= $('#hotelId').val();
                          console.log("hotelId : " + hotelId)
                          var SessionId = $('#SessionId').val();
                          console.log("id : "+this.id);
                          console.log("SessionId : "+ SessionId);
                          // 대댓글 클릭시 보이는 화면
                          list += '<tr class="question-reply-a" id="question-reply-a'+numx+'">'                         
                          + '<td><input id="question-rply-numQtReply'+this.numQt+'" type="hidden" value="'+this.numQt+'"></td>'
                          + '<td><input id="question-rply-id'+this.numQt+'" type="hidden" value="'+this.id+'"></td>'
                          + '<td><input id="question-rply-contentQt'+this.numQt+'" type="hidden" value="'+this.contentQt+'"></td>'
                          + '<td>';
                          if(WId==this.id){
                          list+='<span id="question-span-a">A</span>&nbsp;&nbsp;'+this.contentQt;
                          }else{
                        	  list+= '<span id="question-span-q">Q</span>&nbsp;&nbsp;'+this.contentQt;
                          }
                          if(SessionId===hotelId){
                          list+= '<button class="questions-btn-delete" type="button" value="'+this.numQt+'">삭제</button><hr>' 
                          + '<button class="questionsRe-btn-update" type="button" value="'+this.numQt+'">수정</button>'                          
                          }
                          
                          list+= '</td>'
                          + '<td></td>'
                          + '<td></td>'
                         + '</tr>';
                            
                        });// end each 
                        
                         
                        
                        if($("#question-reply-q"+numx).css("display") == "none"){   
                        	$("#question-reply-q"+numx).after(list);
                        } else {  
                        	$(".question-reply-a").remove();
                        }  
                        $("#question-reply-q"+numx).toggle();

                        
                      }
                  ); // end getJSON
                }); // end questionsReplyCount
                
                // 문의 수정버튼
                 $(document).on('click', '.questions-btn-update', function(){
                  console.log(this);
                  var num = $(this).val();
                  var list = "";
                  var titleQt = $('#titleQt'+num).val();
                  console.log(titleQt);
                 var contentQt = $('#contentQt'+num).val();
                  var id = $('#id'+num).val();
                  console.log(id);
                  var dateQt = $('#dateQt'+num).val();
                  var numAnswer = $('#numAnswer'+num).val();
                  var numQt = $('#numQt'+num).val();
                  var SessionId= $('#SessionId'+num).val();
                  list +='비밀글 체크 :' 
                  + '예 <input type="checkbox" id="secretCheckre" value="t">'
                  + '아니요 <input type="checkbox" id="secretCheckre" value="f" checked="checked"> <br>'
                  + '제목 <input type="text" id="titleQt" required="required" value="'+titleQt+'"><br>'
                  + '<input type="hidden" id="numAnswer" value="' + numAnswer + '">'
                  + '<input type="hidden" id="numQt" value="' + numQt + '">'
                  + 'Q  <input type="text" id="contentQt" required="required" value="'+contentQt+'">'
                  + '<button class="questionsCancel" type="button">취소하기</button>'
                  + '<button type="button" class="questionsUpdate">수정하기</button>';
                  var prevTr = $(this).parent();
                  prevTr.html(list);
                 
                });
                
                 // 문의 댓글 수정 화면 추가버튼
                 $(document).on('click', '.questionsRe-btn-update', function(){
                  var num = $(this).val();
                  var list = "";
                  var titleQt = $('#titleQt'+num).val();
                  console.log("num : " + num);
                 var contentQt = $('#question-rply-contentQt'+num).val();
                  var id = $('#question-rply-id'+num).val();
                  console.log(id);
                  var dateQt = $('#dateQt'+num).val();
                  var numAnswer = $('#numAnswer'+num).val();
                  var numQt = $('#numQt'+num).val();
                  
                  list += '<input type="hidden" id="numAnswer" value="' + numAnswer + '">'
                  + id + ':'
                  + '<input type="hidden" id="numQt" value="' + numQt + '">'
                  + '<input type="text" id="contentQt" required="required" value="'+contentQt+'">'                  
                  + '<button class="questionsCancel" type="button">취소하기</button>'
                  + '<button type="button" class="questionsUpdateRe" value="'+num+'">수정하기</button>';
                  var prevTr = $(this).parent();
                  prevTr.html(list);
                 
                });
                                 
                
                // 문의 수정하기 버튼
                $(document).on('click', '.questionsUpdate', function(){
                  console.log(this);
                  
                  var numAnswer = $(this).prevAll('#numAnswer').val();
                  var titleQt = $(this).prevAll('#titleQt').val();
                  var contentQt = $(this).prevAll('#contentQt').val();
                  var secretCheck = null;
                  var numQt = $(this).prevAll('#numQt').val();
                  if(numAnswer == 1) {
                  if(!$(':input:checkbox[id=secretCheckre]:checked').val()) {
                    alert("비밀글을 체크 해주세요");
                    return;
                    }                       
                  secretCheck = $(this).prevAll('input:checkbox[id="secretCheckre"]:checked').val();
                  } else if(numAnswer == 2) {
                    secretCheck = $(this).prevAll('#secretCheckre').val();
                  }
                  $.ajax({
                    type : 'put',
                    url : '/hotel/questions/' + numQt,
                    headers : {
                      'Content-Type' : 'application/json',
                      'X-HTTP-Method-Override' : 'PUT'
                    },
                    data : JSON.stringify({
                      'titleQt' : titleQt,
                      'contentQt' : contentQt,
                      'secretCheck' : secretCheck,
                      'numQt' : numQt
                    }),
                    success : function(result){
                      if(result == 'success') {
                        alert('문의 수정 성공');
                        getAllQuestions();
                      }
                    } // end success  
                  }); // end ajax
                }); // end questionsUpdate
                
                // 문의 대댓글 수정하기 버튼
                $(document).on('click', '.questionsUpdateRe', function(){
                  console.log(this);
                  
                  var numAnswer = 2;
                  var titleQt = "대댓글";
                  var contentQt = $(this).prevAll('#contentQt').val();
                  var secretCheck = "f";
                  var numQt = $(this).val();
                  console.log("numQt : "+ numQt);
                  $.ajax({
                    type : 'put',
                    url : '/hotel/questions/' + numQt,
                    headers : {
                      'Content-Type' : 'application/json',
                      'X-HTTP-Method-Override' : 'PUT'
                    },
                    data : JSON.stringify({
                      'titleQt' : titleQt,
                      'contentQt' : contentQt,
                      'secretCheck' : secretCheck,
                      'numQt' : numQt
                    }),
                    success : function(result){
                      if(result == 'success') {
                        alert('문의 수정 성공');
                        getAllQuestionPaging();
                        getAllQuestions();
                        $('.questionsReplyCount').toggle();
                        
                      }
                    } // end success  
                  }); // end ajax
                }); // end questionsUpdate
                
                // 문의 수정 취소버튼
                $(document).on('click', '.questionsCancel', function(){
                  console.log(this);
                  getAllQuestions();
                }); // end questionsCancel
                
                
                // 문의 대댓글삭제 버튼
        $(document).on('click', '.questions-btn-delete', function(){
                  var num = $(this).val();
                  console.log("num : " + num);
                  var numQt = num;
                  console.log("numQt : "+numQt);
                  
                  $.ajax({
                    type : 'delete',
                    url : '/hotel/questions/' + numQt,
                    headers : {
                      'Content-Type' : 'application/json',
                      'X-HTTP-Method-Override' : 'DELETE'
                    },
                  data : JSON.stringify({
                      'numQt' : numQt
                    }),
                  success : function(result){
                      if(result == 'success') {
                        alert('삭제 성공');
                        getAllQuestionPaging();
                        getAllQuestions();
                      }
                    } // end success  
                  }); // end ajax                  
                });

              }); // end document
              
              // 문의 페이징 번호 불러오기
              function getAllQuestionPaging() {
            	var numHotel = $('#numHotel').val(); 
            	var url = '/hotel/questions/paging/'+ numHotel;
            	console.log("페이징목록 url : "+url);
            	console.log("문의 numHotel : " + numHotel);
                $
                    .getJSON(
                        url,
                        function(jsonData) {
                          console.log(jsonData);
                          var list = ""; // JSON 데이터를 표현할 변수
                          $(jsonData)
                              .each(
                                  function() { // jsonData를 사용하는 each 반복문
                                  var count = this.totalCount;
                                  var hasPrev = this.hasPrev;
                                  var hasNext = this.hasNext;
                                  var startPageNo = this.startPageNo-1;
                                  var endPageNo = this.endPageNo+1;
                                  list+= '<ul class="pager">'
                                  if(hasPrev){
                                  	list+='<li class="question-paging" value="'+startPageNo+'">이전</li>'
                                  }
                               	for (var i = this.startPageNo; i <= this.endPageNo; i++) {
                               	  if(i==1){
                               		 list +='<li class ="question-paging" value="'+i+'" style="background-color: #51abf3; color: white;")>'+i+'</li>'}
                               	  else{
                               		 list +='<li class ="question-paging" value="'+i+'">'+i+'</li>'
                               	  }
                            		}
                                  if(hasNext){
                                  	list+= '<li class="question-paging" value="'+endPageNo+'">다음</a></li>'       
                                  }
                                  list+= '</ul>'
                                  
                                  	  
                                  }); // end each
                          $('#question-paging').html(list)
                        } // end callback         
                    ); // end getJSON      
              } // end getAllQuestionPaging
              getAllQuestionPaging();   

           // 클릭시 숫자 목록 색바뀜
              $(document).on('click', '.question-paging', function(){
              	var page = $(this).val(); 
				var numHotel = $('#numHotel').val();	

                  var url = '/hotel/questions/paging/'+ numHotel+'?page='+page;
                  $
                      .getJSON(
                          url,
                          function(jsonData) {
                            console.log(jsonData);
                            var list = ""; // JSON 데이터를 표현할 변수
                            $(jsonData)
                                .each(
                                    function() { // jsonData를 사용하는 each 반복문
                                  	  var count = this.totalCount;
                                        var hasPrev = this.hasPrev;
                                        var hasNext = this.hasNext;
                                        var startPageNo = this.startPageNo -1;
                                        var endPageNo = this.endPageNo+1;
                                        list+= '<ul class="pager">'
                                        
                                        if(hasPrev){
                                        	list+='<li class="question-paging" value="'+startPageNo+'">이전</a></li>'
                                        }
                                     	for (var i = this.startPageNo; i <= this.endPageNo; i++) {
                                     		  if(i==page){
                                     			list +='<li class ="question-paging" value="'+i+'" style="background-color: #51abf3; color: white;")>'+i+'</li>'
                                     		  }else{
                                  		  list +='<li class ="question-paging" value="'+i+'")>'+i+'</li>'}
                                  		}
                                        if(hasNext){
                                        	list+= '<li class="question-paging" value="'+endPageNo+'">다음</a></li>'       
                                        }
                                        
                                        list+= '</ul>'      	
                                    }); // end each
                            $('#question-paging').html(list)
                            
                          } // end callback         
                      ); // end getJSON  
                });
    
				
           // 목록 불러오기 페이징(대댓글 제외)
              $(document).on('click', '.question-paging',function() {
              	var numHotel = $('#numHotel').val();
            	var page = $(this).val();
                var url = "/hotel/questions/all/" + numHotel+'?page='+page;
                console.log("문의 게시글 불러오기 URL : " + url);
                $.getJSON(
                   url,
                   function(jsonData) {
                     console.log(jsonData)
                     var list = "";
                     var tdList = "";
                     var SessionId = $('#SessionId').val();
                     var hotelId = $('#hotelId').val();
                     var num = 0;
                     console.log(hotelId)
                     $(jsonData).each(function(){
                       // 정렬하기(li 또는 tb)
                       var check = this.secretCheck;
                                            
                       if(this.id === SessionId){
                       tdList += '<tr class="question-reply" id="question-reply'+num+'">'
                       + '<td style="text-align:center;"><input type="hidden" style="background-colr="white"; " id="numQt'+num+'" value="'+this.numQt+'" readonly="readonly">'+this.rn+'</td>'
                       + '<td>상품</td>'
                       + '<td>답변 완료</td>'
                       + '<td><button style="background-color: white; cursor:pointer;"; class="questionsReplyCount" id="questionsReplyCount'+num+'" type="button" value="'+num+'">'+this.titleQt+'</button>' 
                       + '<button class="questions-btn-delete" type="button" value="'+this.numQt+'">삭제</button>'
                       + '<button class="questions-btn-update" type="button" value="'+num+'">수정</button>'                         
                       + '</td>'
                       + '<td>'+this.id+'</td>'
                       + '<td>'+moment(this.dateQt).format("YYYY-MM-DD HH:mm")+'</td>'
                       + '<td>'
                       + '</td>'
                       + '</tr>'
                       + '<tr class="question-reply-q" id="question-reply-q'+num+'"style="display: none;">'
                       + '<td></td>'
                       + '<td></td>'
                       + '<td></td>'
                       + '<td>'                 
                       + '<span id="question-span-q">Q</span>&nbsp;&nbsp'+this.contentQt
                       + '<button class="questionsReplyInsert" id="questionsReplyInsert'+num+'" type="button" value="'+num+'">답글 달기</button>'
                       + '<div class="questions-itemRe" id="questions-itemRe'+num+'"><div>'
                       + '</td>'
                       + '<td></td>'
                       + '<td>'
                       + '<input type="hidden" id="num'+num+'" value="' + num + '">'
                       + '<input type="hidden" id="titleQt'+num+'" value="' + this.titleQt + '">'                       
                       + '<input type="hidden" id="numQt'+num+'" value="' + this.numQt + '"'
                       + '<input type="hidden" id="secretCheck'+num+'" value="' + this.secretCheck + '"> <br>'
                       + '<input type="hidden" id="numAnswer'+num+'"  value="' + this.numAnswer + '">'
                       + '<input type="hidden" id="contentQt'+num+'"  value="' + this.contentQt + '">'
                       + '<input type="hidden" id="id'+num+'" value="' + this.id +'">'
                       + '<input type="hidden" id="dateQt'+num+'" value="' + moment(this.dateQt).format("YYYY-MM-DD HH:mm:ss") +'">'
                       + '<input type="hidden" id="numHotel'+num+'" value="' + this.numHotel +'">'
                       +'</td>'
                       + '</tr>';}
                       else if(this.id !== SessionId){
                           tdList += '<tr id="question-reply'+num+'">'
                           + '<td style="text-align:center;"><input type="hidden" style="background-colr="white"; " id="numQt'+num+'" value="'+this.numQt+'" readonly="readonly">'+this.rn+'</td>'
                           + '<td>상품</td>'
                           + '<td>답변 완료</td>';
                           if(check === "f" || hotelId === SessionId) {
                           tdList+= '<td><button style="background-color: white; cursor:pointer;"; class="questionsReplyCount" id="questionsReplyCount'+num+'" type="button" value="'+num+'">'+this.titleQt+'</button>'                        
                           + '</td>'
                           }else if(check === "t"){
                           tdList+= '<td>비밀글입니다.</td>';
                           }
                           tdList+= '<td>'+this.id+'</td>'
                           + '<td>'+moment(this.dateQt).format("YYYY-MM-DD HH:mm")+'</td>'
                           + '<td>'
                           + '</td>'
                           + '</tr>'
                           + '<tr class="question-reply-q" id="question-reply-q'+num+'"style="display: none;">'
                           + '<td></td>'
                           + '<td></td>'
                           + '<td></td>'
                           + '<td>'                 
                           + '<span id="question-span-q">Q</span>&nbsp;&nbsp'+this.contentQt;
                           if(SessionId == hotelId){
                           tdList+= '<button class="questionsReplyInsert" type="button" value="'+num+'">답글 달기</button>'
                           + '<div class="questions-itemRe" id="questions-itemRe'+num+'"><div>'
                           }
                           tdList+= '</td>'
                           + '<td></td>'
                           + '<td>'
                           + '<input type="hidden" id="num'+num+'" value="' + num + '">'
                           + '<input type="hidden" id="titleQt'+num+'" value="' + this.titleQt + '">'                       
                           + '<input type="hidden" id="numQt'+num+'" value="' + this.numQt + '"'
                           + '<input type="hidden" id="secretCheck'+num+'" value="' + this.secretCheck + '"> <br>'
                           + '<input type="hidden" id="numAnswer'+num+'"  value="' + this.numAnswer + '">'
                           + '<input type="hidden" id="contentQt'+num+'"  value="' + this.contentQt + '">'
                           + '<input type="hidden" id="id'+num+'" value="' + this.id +'">'
                           + '<input type="hidden" id="dateQt'+num+'" value="' + moment(this.dateQt).format("YYYY-MM-DD HH:mm:ss") +'">'
                           + '<input type="hidden" id="numHotel'+num+'" value="' + this.numHotel +'">'
                           +'</td>'
                           + '</tr>';	 
                      	 
                       }
                       
                       num++;
                       
                     }); // end each
                     $('#quetion-td').html(tdList);
                   }
                ); // end getJSON                  
              });

           		
              $(document).on('click', '.question-do',function() {
              	var receiveId = $('#SessionId').val();
              	var sendId = 'test';
              	var titleHotel = $('#titleHotel').val();
              	var numHotel = $('#numHotel').val();
                // window.name = "부모창 이름"; 
                window.name = "parent";
                // window.open("open할 window", "자식창 이름", "팝업창 옵션");
                openWin = window.open("/hotel/hotelboard/question?titleHotel="+titleHotel+"&id="+receiveId+"&numHotel="+numHotel,
                        "childForm", "width=700, height=860, resizable = no, scrollbars = no");
              });
              
      		$(document).on('click', '#hotelDelete',function(){
      		  var numHotel = $('#numHotel').val();
      		  if (confirm('삭제 하시겠습니까?')) {
                  console.log("yes");
                  console.log	(numHotel);
                  location.href = "/hotel/hotelboard/delete/?numHotel="+numHotel;
             } else {
            	 console.log("no");
 }

			  });
            
    </script>
    
    	
	</div>
	
</body>
</html>