<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.container {
	width: 1060px;
	margin: 0 auto;
}

.content{
	overflow:hidden;	
	width: 800px;
	margin: 0 auto;
	
}

.pay-title{
	height: 100px;
	border-bottom: 1px solid #cccccc;
	line-height: 100px;
	padding-left: 130px;
}

.pay-title h1{
	color: #363636;
	font-size: 38px;
}

.pay-left{
	float: left;
	width: 360px;
	overflow: hidden;
	margin-right: 5%;
}

.pay-right{
	float: left;
	width: 50%;
	overflow: hidden;
}

.pay-left-detail{
	border: 1px solid #cccccc;
	border-radius: 2px;
	margin-top: 5px;
	margin-bottom: 20px;
	color: #333;
	
	
}
.pay-left-detail #h2{
	border-bottom: 1px solid #cccccc;
	padding: 10px;
	
}

h2{
	color: black;
}

.pay-left-detail input[type=text]{
	width: 250px;
	margin-left: 10px;
}

.pay-left-detail p{
	margin-left: 10px;
	margin-top: 10px;
	color: #444;
}

.product-list{
	border: 1px solid #cccccc;
	border-radius: 2px;
	margin-top: 5px;
	margin-bottom: 20px;
	color: #333;
	padding: 10px 20px 20px 20px;
	text-align: center;
	overflow: auto;
	height: 380px;
}

.result{
	border: 1px solid #cccccc;
	border-radius: 2px;
	margin-bottom: 20px;
	margin-top: 5px;
	color: #333;
	text-align: center;
}

.product{
	border-bottom: 1px solid #cccccc;
	margin-bottom: 20px;
	border-radius: 2px;
	text-align: left;
	overflow: hidden;
}

#product-name-p{
	font-size: 20px;
	margin-bottom: 5px;
	font-weight: bold;
	color: #444;
}

#product-price-p{
	font-size: 14px;
	margin-bottom: 10px;
	
	color: #444;
}

#result-span1{
	margin: 20px;
	color: rgb(68, 68, 68);
	font-size: 15px;
}

#result-span2{
	color: rgb(239, 39, 5);
	font-size: 30px; 
	text-align: right;
}

#pas-submit{
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


.product-left{
	float: left;
	width: 50%;
}

.product-right{
	float: left;
	width: 50%;
	text-align: center;
}

.product-right img{
	display: line-block;
	max-width: auto;
	width:170px;
	margin-bottom: 10px;
	margin-right: 10px;
}
</style>

<script type="text/javascript">

</script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<meta charset="UTF-8">
<title>???????????? ?????? - ?????? ?????????</title>
</head>
<body>
	<!-- ?????? ?????? ?????? ??? ???????????? ???????????? ?????? -->
	<c:if test="${alert == null || alert == 'false'}">
		<script type="text/javascript">
			alert("???????????? ?????? ???????????????.");
			location.href = "/hotel/main/aniHotel";
		</script>
	</c:if>

	<div class="container">
	<%@ include file="../common/header.jspf"%>
	</div>
	<%@ include file="../common/search.jspf"%>
	<form action="favoritesPurchase" method="post">
  	<input type="hidden" name="id" value="${MemberVO.id }">
	<div class="wrap">
	<div class="container">
	<div class="pay-title"><h1>?????? ??????</h1></div>
	<div class="content">
	<div class="pay-left">
	<h2 style="margin-top: 20px;">????????? ??????</h2>
	
	<div class="pay-left-detail">
	<p>????????? ?????????</p><input type="text"  value="${MemberVO.id }" readonly="readonly" class="user-info">
	<p>????????? ??????</p><input type="text" name="email" value="${MemberVO.email }" readonly="readonly" class="user-info">
	<p>?????? ??????</p><input type="text" name="contact" style="margin-bottom: 20px;" value="${MemberVO.contact }" readonly="readonly" class="user-info">
	<p>?????? ??????</p><input type="text" name="animals" value="${MemberVO.animals }" readonly="readonly">
  	<p>?????? ???</p><br> <textarea style="width: 340px;margin-left: 5px;" name="contentHistory" rows="2" cols="120" placeholder="?????? ?????? ???????????????."></textarea>
  	<p style="margin-bottom: 10px;">?????? ????????? ????????? ????????????????????? ?????? ????????????.</p>
  	
  	<p>?????? ??????</p>
  	<c:set var="now" value="<%=new java.util.Date()%>" />
  	<c:set var="sysYear">
	<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" />
	</c:set>
	<p>check-in</p><input id="checkInN" type="date" style="width: 200px; margin-left: 10px;margin-top: 10px;" value="${sysYear}" min="${sysYear}">
	<p>check-out</p><input id="checkOutN" type="date" style="width: 200px; margin-left: 10px;margin-bottom: 10px;"  value="${sysYear}" min="${sysYear}">
	<input type="hidden" id="startDate" name="checkIn" value="<fmt:formatDate value="${now}" pattern="yyyy/MM/dd" />">
	<input type="hidden" id="endDate" name="checkOut" value="<fmt:formatDate value="${now}" pattern="yyyy/MM/dd" />">
	</div>
	
	
	</div>
	<div class="pay-right">
	<div class="pay-right-detail">
	<h2 style="margin-top:20px; margin-bottom:0px;">???????????? ??????</h2>
	<div class="product-list">
	
	<c:set var="n" value="0"/>
	<c:set var="numHotel" value="0"/>
	<c:set var="numHotel2" value="0"/>
	<c:forEach var="vo" items="${mainList }" varStatus="status">
   	<c:set var="n" value="${n + 1}"/>
    <div class="product">
    <input type="hidden" name="numHotelList[${status.count }]" value="${vo.numHotel }">
  	<input type="hidden" name="titleHotelList[${status.count }]" value="${vo.titleHotel }">
    <input type="hidden" name="numProlist[${status.count }]" value="${vo.numProlist }">
    <input type="hidden" name="timeProlist[${status.count }]" value="${vo.timePro}">
    
    <div class="product-left">
    <c:if test="${numHotel != vo.numHotel }">
    <p style="font-size: 25px; color: #2e8de5;">${vo.titleHotel }</p>
    <c:set var="numHotel" value="${vo.numHotel }"/>
    </c:if>
    <p id="product-name-p">${vo.nameProlist }</p>
    <span style="text-decoration: line-through;">
    <fmt:formatNumber value="${vo.priceProlist }" pattern="#,###,###,###" />???</span><br>
    <span style="font-size: 12px;color: #ec4937;background-color: #fbf1ef;">??????
    <fmt:formatNumber value="${vo.saleProlist }" pattern="#,###,###,###" />???</span>
    <p id="product-price-p">
    <fmt:formatNumber value="${vo.priceProlist-vo.saleProlist }" pattern="#,###,###,###" />???/ ${vo.timePro }???</p>
    <input type="hidden" name="pricePurchaselist[${status.count }]" value="${vo.priceProlist-vo.saleProlist }">
    <c:set var = "sum" value = "${sum + ((vo.priceProlist-vo.saleProlist)*vo.timePro) }"/>
    </div>
    <div class="product-right">
    <c:if test="${numHotel2 != vo.numHotel }">
    <img src="display?fileName=${vo.hotelImg }" />
    <c:set var="numHotel2" value="${vo.numHotel }"></c:set>
    </c:if>
    </div>
    </div>
	</c:forEach>
	<span style="font-size: 17px;">???<span style="color: #2b6fd3; font-size: 20px;">&nbsp;${n }&nbsp;</span>???</span>
	
	</div>
	
	<h2>???????????? ??????</h2>
	<div class="result" style="heigt:250px;">
	<span id="result-span1" style="font-size: 18px; font-weight: bold;">?????? ??????</span>
	<span id="result-span2"><fmt:formatNumber value="${sum }" pattern="#,###,###,###" /><span style="color: rgb(239, 39, 5); font-size: 15px;">???</span>
	
	</span>
	<br><input type="submit" id="pas-submit" value="????????????">
	</div>
	</div>
	
	
	</div>	
	</div>
	<%@ include file="../common/footer.jspf"%>
	</div>
	</div>
	</form>
  	<script type="text/javascript">
    $(document).on('change', '#checkInN',function() {
    	  var date = new Date($(this).val());
    	  day = date.getDate();
    	  month = date.getMonth() + 1;
    	  year = date.getFullYear();
    	  var check = [year, month, day].join('/');
    	  $('#startDate').val(check);

      });
    
    $(document).on('change', '#checkOutN',function() {
  	  	 var date = new Date($(this).val());
	  	 day = date.getDate();
	     month = date.getMonth() + 1;
	     year = date.getFullYear();
	     var check = [year, month, day].join('/');
	     $('#endDate').val(check);
      });
  	</script>
</body>
</html>