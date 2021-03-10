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
	overflow: hidden;
}
.background{
	background-color: #f3f3f3;
}

.section {
	float: left;
	width: 600px;
	margin-right: 20px;
}

.favorites-result{
	float: left;
	width: 360px;
	height: 360px;
	border: 1px solid #ececec;
	margin-top: 20px;
	background-color: white;
	color: black;
	
}
.favorites-result-totalPrice{
	border-top: 1px solid #ececec;
	margin-left: 20px;
	margin-right: 20px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.center {
	overflow: hidden;
	padding-top: 30px;
	margin-bottom: 50px;
}

.search {
	height: 100px;
	background-color: grey;
}


.attentionList-content{
	margin-top: 20px;
}

.attentionList-title{
    border-bottom: 1px solid #ececec;
    color:black;
    font-size: 20px;
    padding-top:30px;
    padding-bottom:30px;
    text-align: left;
    
    
}

.attentionList-title h1{
	margin-left: 20px;
}

.favoritesList{
	border: 0px 1px 1px 1px solid #ececec;
	padding: 10px;
	overflow: hidden;
	background-color: white;
	width: 580px;
	height: 70px;
}

.product-title{
	padding-bottom: 10px;
	background-color: white;
	width: 580px;
	padding: 10px;
	margin-top: 20px;
}

.favoritesList button{
	cursor: pointer;
	width: 20px;
    height: 20px;
    color: #aaaaaa;
    background-color: white;
    font-size: 15px;
    margin-bottom: 4px;
    float: right;
}

.product-title{
	font-weight: bold;
	font-size: 20px;
	color: black;
}

.product-content{
	float: left;
	color: black;
	margin-left: 20px;
	margin-top: 10px;
	font-size: 18px;
}
form{
	display: inline;
}

.purchase{
	margin-top: 10px;
	margin-left:10px;
	margin-right:10px;
	width: 340px;
	height: 60px;
	background-color: #51abf3;
	border: 1px solid #d9d9d9;
	color: white;
	font-size: 22px;
    font-weight: bold;
	border-radius: 4px;
	float: right;
	cursor: pointer;
}

.favorites-result-title{
	margin:20px;
	padding-bottom:20px;
	border-bottom: 1px solid #ececec;
	font-size: 16px;
    color: #1e1e1e;
}

.favorites-result-content{
	padding: 10px 20px 10px 20px;
	font-size: 15px;
	
}
.favorites-result-content p {
	margin-bottom: 10px;
	color: #7F8590;
}

.product-result{
	width: 581px;
	height: 40px;
	background-color: #f8f9fa;
	border-bottom: 1px solid #ddd;
	padding-left: 20px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.product-result-value{
	float: left;
	width: 115px;
}

.product-result-value p{
	font-size: 12px;
    color: #A4A9B0;
    margin-bottom: 5px;
    
}

.product-result-value span{
	font-size: 18px;
    line-height: 17px;
    color: #444444;
}


</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - 장바구니</title>
</head>
<body>
	<div class="container">
	<%@ include file="../common/header.jspf"%>
	</div>
	<%@ include file="../common/search.jspf"%>
	<div class="attentionList-title"><div class="container"><h1>장바구니</h1></div></div>
	<div class="background">
	<div class="container">
		<div class="center">
			<input type="hidden" id="SessionId" value="${SessionId }"readonly="readonly">
			<div class="section">
			
			
			<div class="attentionList-content">
					
					<c:set var="n" value="0"/>
					<c:set var="numHotel" value="0"/>
					<c:set var="totalAllPrice" value="0"/>
					<c:set var="totalAllSalePrice" value="0"/>
					
					<c:forEach var="vo" items="${list }">
					
					<c:set var="totalSalePrice" value="${vo.salePro * vo.timePro }"/>
					<c:set var="totalPrice" value="${vo.timePro * vo.pricePro }"/>
					
					<c:if test="${numHotel != vo.numHotel}">
					<div class="product-title"><span style="margin-left: 20px;">${vo.titleHotel }</span><div style="border-bottom:1px solid #A4A9B0; margin-top: 10px;"></div></div>
					<c:set var="numHotel" value="${vo.numHotel}"/>
					</c:if>
					
					<div class="favoritesList">

					<div class="product">
					<input type="hidden" value="${vo.namePro }" id="namePro">
					<input type="hidden" value="${vo.timePro }" id="timePro">
					<input type="hidden" value="${vo.numPro }" id="numPro">
					<input type="hidden" value="${vo.pricePro }" id="pricePro">
					<input type="hidden" value="${vo.salePro }" id="salePro">
					<input type="hidden" value="${vo.numHotel }" id="numHotel">
					<input type="hidden" value="${vo.hotelImg }" id="hotelImg">
					<input type="hidden" value="${vo.titleHotel }" id="titleHotel">
					
					
					<div class="product-content" style="width: 200px">${vo.namePro }</div>
					
					<div class="product-content" style="width: 150px"> ${vo.timePro }개</div>
					
					<form id="submit" action="favoritesDelete" method="post">
					<div class="product-content" style="width: 170px;"><span style="float: right;">
					
					<span style="margin-right: 20px;"><fmt:formatNumber value="${vo.timePro * vo.pricePro }" pattern="#,###,###,###" />원</span>
					
					<input type="hidden" name="numFavorites" value="${vo.numFavorites }">
					
					<button onclick="removeCheck();" value="${vo.numFavorites }">X</button>
					</span>
					
					
					<input type="hidden" value="${vo.timePro * vo.pricePro }">
					</div>
					</form>
					
					</div>
					</div>
					<div class="product-result">
					<div class="product-result-value">
					<p style="margin-left: 10px;">상품금액</p>
					<span style="color: #444444; margin-left: 10px;">
					<fmt:formatNumber value="${vo.pricePro }" pattern="#,###,###,###" />원
					</span>
					</div>
					
					<div class="product-result-value"><strong  style="font-size: 30px; margin-left: 20px;">ㅡ</strong></div>
					
					<div class="product-result-value"><p>할인금액</p>
					<span style="color: #23C72E;">
					<fmt:formatNumber value="${vo.salePro }" pattern="#,###,###,###" />원
					
					</span>
					</div>
					
					<div class="product-result-value" style="width: 60px;"><strong style="font-size: 30px; margin-left: 20px;">=</strong></div>
					
					<div class="product-result-value" style=" width: 170px;"><div style="float: right; margin-right: 47px;"><p style="">주문금액</p>
					<span style="color: #000;">
					<fmt:formatNumber value="${vo.pricePro - vo.salePro }" pattern="#,###,###,###" />원
					</span></div>
					</div>
					
					
					</div>
					<c:set var="n" value="${n + 1}"/>
					<c:set var="totalAllPrice" value="${totalPrice + totalAllPrice}"/>
					<c:set var="totalAllSalePrice" value="${totalSalePrice + totalAllSalePrice }"/>
					</c:forEach>


				</div>

			</div>
			<div class="favorites-result">
			<div class="favorites-result-title">전체 합계</div>
			<div class="favorites-result-content">
			<p>상품수<span style="float: right;">${n }개</span></p>
			<p>상품금액<span style="float: right; ">
			<fmt:formatNumber value="${totalAllPrice }" pattern="#,###,###,###" />원</span>
			</p>
			<p>할인금액<span style="float: right; color: #23c72e;">
			-<fmt:formatNumber value="${totalAllSalePrice }" pattern="#,###,###,###" />원
			</span></p>
			</div>
			
			<div class="favorites-result-totalPrice">
			<span style="font-size: 16px; height: 44px; line-height: 44px;">전체 주문금액</span>
			<span style="float: right; font-size: 30px; font-weight: bold;">
			<fmt:formatNumber value="${totalAllPrice - totalAllSalePrice }" pattern="#,###,###,###" />원
			</span></div>
			<button class="purchase" onclick="ProBtnList();">구매하기</button>
			</div>


		</div>
		
	</div>
	</div>
	<div class="container" style="margin-top: 40px;">
	<%@ include file="../common/footer.jspf"%>
	</div>
	<script type="text/javascript">
	function removeCheck() {
		
		 if (confirm("선택하신 상품을 삭제하시겠습니까?") == true){
			 document.getElementById('submit').submit();
		 }else{   //취소

		     return false;

		 }

		}
	
	function ProBtnList() {
		  // 선택한 상품 보내기
		  
		   var id = $('#SessionId').val();
		  if(id ==""|| id == null) {
		    alert("아이디를 입력해주세요!");
		    return;
		  }
		  var nameProlist = document.querySelectorAll('.product #namePro');
		  var priceProlist = document.querySelectorAll('.product #pricePro');
		  var saleProlist = document.querySelectorAll('.product #salePro');
		  var numProlist = document.querySelectorAll('.product #numPro');
		  var timeProlist = document.querySelectorAll('.product #timePro');
		  var testNumlist = document.querySelectorAll('.product #numHotel');
		  var hotelImglist = document.querySelectorAll('.product #hotelImg');
		  var titleHotelList = document.querySelectorAll('.product #titleHotel');
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
		        'numHotel' : $((testNumlist)[i]).val(),
		        'hotelImg' : $((hotelImglist)[i]).val(),
		        'titleHotel' : $((titleHotelList)[i]).val()
		    };
		  }
		  var obj = JSON.stringify(obj = {"proList" : arr})
		  console.log(obj);
		  $.ajax({
		    type : 'post',
		    url : '/hotel/pronext/payment',
		    headers : {
		      'Content-Type' : 'application/json',
		      'X-HTTP-Method-Override' : 'post'
		    },
		    data : obj,
		    async : false,
		    success : function(data) {
		      document.location.href="/hotel/pronext/payment";
		    }
		  })
		  
		}
	</script>
</body>
</html>