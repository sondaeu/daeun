<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.wrap{
	width: 100%;
}

.container {
	width: 1060px;
	margin: 0 auto;
	position: relative;
}


.section {
	float: left;
	width: 98%;
	margin: 0 auto;
	position: relative;
	margin-left: 20px;
	
}

.center {
	overflow: hidden;
	padding-top: 30px;
	margin-bottom: 20px;
}



.myNav {
	color: black;
	font-size: 20px;
	font: bold;
	padding-left: 25px;
	font-weight: bold;
	line-height: 40px;
}

#filter-title {
	border-bottom: 1px solid #e9ecef;
	height: 30px;
	color: #373a3c;
	font-size: 18px;
	line-height: 18px;
	padding: 5px;
}

#filter-score {
	font-size: 16px;
	padding: 5px;
}

.starR{
 	background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
  	background-size: auto 100%;
  	width: 30px;
  	height: 30px;
  	display: inline-block;
  	text-indent: -9999px;
  	cursor: pointer;
}
#filter-facility{
	border-top: 1px solid #e9ecef;
	padding: 5px;
}
.starRev{
	padding: 5px;
}

.section-top{
	overflow: hidden;
	
}


.content-hotel{
	height: 300px;
	margin-top: 15px;
	margin-bottom: 15px;
	overflow: hidden;
	box-shadow: inset 0 0 0 1px rgba(102,109,117,.2);
	border-radius: 5px;
	cursor: pointer;
	

	
}
.content-hotel-left{
	float: left;
	width: 300px;
	height: 100%;
	overflow: hidden;
	display: flex;
	align-items: center;
	justify-content: center;

}
.content-hotel-left img{
	max-width: 100%; max-height: auto;
}

.content-hotel-center{
	float: left;
	width: 440px;
	height: 160px;
	padding-top: 20px;
	padding-left: 30px;
	color: black;	
}

.content-hotel-right{
	float: left;
	width: 25%;
	height: 100%;
	position: relative;
	
}

.content-hotel-right-1{
	padding: 20px;
	text-align: right;
	font-size: 15px;
	height: 260px;
	
	
}

.content-hotel-right-1 #L-price{
	color: #848c94;
	text-decoration:line-through;
	font-size: 13px;
}

.content-hotel-right-1 #price{
	font-size: 25px;
	font-weight: bold;
	color: black;
	padding: 1px;
}

.content-hotel-right-1 #sale{
	display: inline-block;
    padding: 0 4px;
    margin-bottom: 3px;
    font-size: 12px;
    font-weight: 600;
    border-radius: 4px;
    color: #ec4937;
    background-color: #fbf1ef;
}

.content-hotel-right:before{
	content: "";
    width: 1px;
    height: calc(80%);
    background-color: #e9ecef;
    position: absolute;
    top: 20px;
    left: 0;
}
.section-top {
	font-size: 20px;
	font-style: normal;
	color: black;
}

.section-top a{
	color: #666d75;
}

.section-top a:hover {
  color: black;
  }

.review-paging{
	width: 100%;
	margin: auto;
	
	
}
.section ul {
	text-align: right;
}

.review-paging ul {
	text-align: center;
}

.pager{
	height: 56px;
}

.review-paging li {
	text-align:center;
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
.review-paging li a{
	display: block;
	color: #51abf3; 
	
}

.review-paging li:hover {
	width: 40px;
	height: 40px;
	transition: background-color .2s, color .2s;
	border: 3px solid #51abf3;
	border-radius: 40px;
	background-color: rgba(0, 0, 0, 0);
	
}

#powerlink{
	border: 1px solid #eaebec;
	border-radius: 5px;
	margin-bottom: 20px;
}

#powerlink-content{
	cursor: pointer;
	padding: 10px;
	color: black;
	overflow: hidden;
	border-bottom: 1px solid #eaebec;
}

#powerlink-content:hover{
	background-color: #dcdcdc;
}

#powerlink-content-img{
	width: 80px;
	height: 80px;
	overflow: hidden;
	float: left;
	display: flex;
    align-items: center;
    justify-content: center;
	
}

#powerlink-content-title{
	float: left;
	font-size: 15px;
	margin-left: 15px;

	
}

#powerlink-content-img img{
	max-width: 100%; max-height: auto;
	border-radius: 5px;
	
}

.star{
	background-color: #51abf3;
	border-radius: 50%;
	color: #fff;
	display: inline-block;
	font-size: 20px;
	font-weight: 700;
	width: 80px;
	height: 80px;
	line-height: 80px;
	text-align: center;
	vertical-align: middle;
}

.section li {display: inline-block; padding: 5px;}
.starR.on{background-position:0 0;}
</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - 호텔 목록</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div class="wrap">
	<%@ include file="../common/header.jspf"%>
	<%@ include file="../common/search.jspf"%>
	<div class="container">
		<div class="center">
			<div class="section">
			<c:set var="numHotel" value="0"/>
			<div id="powerlink">
			<div id="powerlink-title" style="border-bottom: 1px solid #eaebec; background-color: #f7f9fa; padding: 10px;">
			<strong style="font-size: 20px; color: black;">파워링크</strong> <span style="margin-left: 20px;">추천 호텔</span></div>
			<c:forEach var="vo" items="${powerLinkList }">
			<c:if test="${numHotel != vo.numHotel}">
			<c:set var="numHotel2" value="${vo.numHotel }"/>
			<div id="powerlink-content" onclick="location.href='detail?numHotel=${vo.numHotel }&checkIn=${param.checkIn }&checkOut=${param.checkOut }'">
			
			<div id="powerlink-content-img">
			<img src="display?fileName=${vo.hotelImg }">
			</div>
			
			<div id="powerlink-content-title">
			<strong style="color: #0313aa; font-size: 15px; text-decoration: underline;">${vo.titleHotel }</strong>
			<div style="color: #242424; margin-top: 10px; margin-bottom: 10px;">${vo.contentHotel}</div>
			<c:forEach var="vo2" items="${powerLinkList }">
			<c:if test="${numHotel2 == vo2.numHotel}">
			<div id="powerlink-content-product" style="color: #2b96ed; width: 400px;"><Strong>${vo2.namePro }</Strong><span style="color: black; float: right;"><c:if test="${vo2.pricePro != 0}"><fmt:formatNumber value="${vo2.pricePro - vo2.salePro}" pattern="#,###,###,###" />원</c:if></span></div>
			</c:if>
			</c:forEach>
			</div>
			
			

			
			
			</div>
			
			<c:set var="numHotel" value="${vo.numHotel}"/>
			</c:if>
			</c:forEach>
			
			</div>
			<div class="section-top">
			검색된 숙소 <strong>${count}</strong>개
			<ul>
			<c:if test="${param.order == 'desc'}">
					<li><a style="color: #51abf3; font-weight: bold;" href="/hotel/hotelboard/list?conditions=${param.conditions }&districtName=${param.districtName }&hotelName=${param.hotelName}&checkIn=${param.checkIn }&checkOut=${param.checkOut}&order=desc">가격 높은순</a></li>				
			</c:if>
			
			<c:if test="${param.order != 'desc'}">
					<li><a href="/hotel/hotelboard/list?conditions=${param.conditions }&districtName=${param.districtName }&hotelName=${param.hotelName}&checkIn=${param.checkIn }&checkOut=${param.checkOut}&order=desc">가격 높은순</a></li>				
			</c:if>
			
			<c:if test="${param.order == 'asc'}">
					<li><a style="color: #51abf3; font-weight: bold;" href="/hotel/hotelboard/list?&conditions=${param.conditions }&districtName=${param.districtName }&hotelName=${param.hotelName}&checkIn=${param.checkIn }&checkOut=${param.checkOut}&order=asc">가격 낮은순</a></li>
			</c:if>
			
			<c:if test="${param.order != 'asc'}">
					<li><a href="/hotel/hotelboard/list?&conditions=${param.conditions }&districtName=${param.districtName }&hotelName=${param.hotelName}&checkIn=${param.checkIn }&checkOut=${param.checkOut}&order=asc">가격 낮은순</a></li>
			</c:if>
			
			<c:if test="${param.order == 'star'}">
					<li><a style="color: #51abf3; font-weight: bold;" href="/hotel/hotelboard/list?&conditions=${param.conditions }&districtName=${param.districtName }&hotelName=${param.hotelName}&checkIn=${param.checkIn }&checkOut=${param.checkOut}&order=star">별점순</a></li>
			</c:if>
			
			<c:if test="${param.order != 'star'}">
					<li><a href="/hotel/hotelboard/list?&conditions=${param.conditions }&districtName=${param.districtName }&hotelName=${param.hotelName}&checkIn=${param.checkIn }&checkOut=${param.checkOut}&order=star">별점순</a></li>
			</c:if>
			</ul>
			</div>

			<div class="section-content">

			
    <c:forEach var="vo" items="${list }">
				<div class="content-hotel" onclick="location.href='detail?numHotel=${vo.numHotel }&checkIn=${param.checkIn }&checkOut=${param.checkOut }'">
			<div class="content-hotel-left">
			<img src="display?fileName=${vo.hotelImg }">
			</div>
			<div class="content-hotel-center">
			<div style="height: 150px;">
			<h1 style="font-size: 30px;">${vo.titleHotel }</h1>
			</div>
			<div style="overflow: hidden;">
			<c:if test="${vo.star != 0 }">
			<div class="star" style=" margin-right: 10px; float: left;">
			
			<fmt:formatNumber value="${vo.star }" pattern=".0"/> 
			</div>
			<div style="float: left;"><p style="color: #51abf3; font-size: 20px;">
			<c:if test="${vo.star > 4}">
			매우 만족
			</c:if>
			<c:if test="${vo.star > 3 && vo.star < 4 || vo.star == 4}">
			만족
			</c:if>
			<c:if test="${vo.star > 2 && vo.star < 3 || vo.star == 3}">
			보통
			</c:if>
			<c:if test="${vo.star > 1 && vo.star < 2 || vo.star == 2}">
			불만족
			</c:if>
			<c:if test="${vo.star == 1}">
			매우 불만족
			</c:if>
			</p><span style="color: #666d75; font-size: 15px;">리뷰 별점</span></div>
			</c:if>
			<c:if test="${vo.star == 0 }">
			<div style="float: left;"><p style="color: #51abf3; font-size: 20px; margin-left: 10px;">리뷰 없음</p></div>
			</c:if>
			</div>
			</div>
			
			

			<div class="content-hotel-right">
			<div class="content-hotel-right-1">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>최저가  <span id="L-price"><fmt:formatNumber value="${vo.pricePro }" pattern="#,###,###,###" />원</span>
				<br><span id="sale">추가할인 ${vo.salePro }원</span>
				<br><span id="price"><fmt:formatNumber value="${vo.pricePro - vo.salePro}" pattern="#,###,###,###" />원</span>
				
				
			</div>
			
			</div>
			</div>
  </c:forEach>			
			
			
			</div>
			
			<div class="review-paging">
			<!-- 페이징처리 -->
						<ul class="pager">
							<c:if test="${pageMaker.hasPrev }">
								<li><a href="${pageMaker.startPageNo - 1 }">이전</a></li>
							</c:if>
							<c:forEach begin="${pageMaker.startPageNo }"
								end="${pageMaker.endPageNo }" var="num">
								<c:set var="page" value="${param.page }"></c:set>
								<c:if test="${empty page}">
									<c:set var="page" value="1"></c:set>
								</c:if>
								
								<c:if test="${num eq page}"><li style="background-color: #51abf3;"><a style="color: white;" href="${num }">${num }</a></li></c:if>
								<c:if test="${num != page}">
								<li><a href="${num }">${num }</a>
								</li></c:if>
							</c:forEach>
							<c:if test="${pageMaker.hasNext }">
								<li><a href="${pageMaker.endPageNo + 1 }">다음</a></li>
							</c:if>
						</ul>
						<div>
							<form id="pagingForm" style="display: none;">
								<input type="text" name="page">
								<input type="text" id="conditions" name="conditions" value="${param.conditions}">
								<input type="text" id="districtName" name="districtName" value="${param.districtName}">
								<input type="text" id="hotelName" name="hotelName" value="${param.hotelName }">
								<input type="text" id="checkIn" name="checkIn" value="${param.checkIn }">
								<input type="text" id="checkOut" name="checkOut" value="${param.checkOut}">
								<input type="text" id="order" name="order" value="${param.order}">
							</form>
						</div>
					</div>
			
			</div>
		</div>
		
		
		<%@ include file="../common/footer.jspf"%>
	</div>
	</div>
<script>
	$('.starRev span').click(function() {
		$(this).parent().children('span').removeClass('on');
		$(this).addClass('on').prevAll('span').addClass('on');
		return false;
	});
	
	/* ========================================================================= */
	/* 검색기능 수정코드 */
    $(document).ready(function(){
        /* 페이징 처리 */
        $('.pager li a').click(function(){
          // pager 클래스의 하위 li 요소의 a 요소를 찾아감
          event.preventDefault(); // a 태그의 기본 동작(페이지 이동)을 금지
          var targetPage = $(this).attr('href'); // a 태그 href 속성의 값을 저장
          console.log(targetPage);
          var frm = $('#pagingForm');
          frm.find('[name="page"]').val(targetPage);

          frm.attr('action', '/hotel/hotelboard/list'); // form에 action 속성-값 추가
          frm.submit(); // form 데이터 전송
  
		}); // end click()
        /* ============================================================================ */
        
      }); // end document
</script>
</body>
</html>