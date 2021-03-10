<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<style type="text/css">
.wrap{
	width: 100%;
	margin: 0 auto;
}

.container {
	width: 1060px;
	margin: 0 auto;
}

.hotel {
	height: 400px;
	width: 1180px; 
	margin : 0 auto;
	position: relative;
	
}
.hotelCenter{
 	overflow: hidden;
}

.hotelContent {
	height: 280px;
	width: 240px;
	background: white;
	margin: 10px;
	display: inline-block; 
	vertical-align: middle;
	border: 1px solid #aaa;
	border-radius: 5px;
	cursor: pointer;
}
.hotelContent-top{
	overflow: hidden;
	display: flex;
	align-items: center;
	justify-content: center;
	width: 100%;
	height: 60%;
	
}
.hotelContent-bottom{
	
}

.hotelContent-bottom-title{
	padding: 10px;
	height: 40px;
	
	
}

.hotelContent-bottom-title h3{
	color: #343a40;
	font-size: 18px;
}

.hotelContent-bottom-content{
	
	padding: 10px;
	text-align: right;
	
	
}

.hotelContent-bottom-content p{
	font-size:15px;
	font-weight:bold;
	color:black;
	
	
}

.hotelContent-top img{
	max-width: 100%;
	height: auto;
	color:#848c94;
	
}

.hotel-title{
	width: 1060px;
	margin-left: 70px;
	font: bold;
	color: black;
}
.ad .swiper-slide {
	text-align:center;
	display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items:center; /* 위아래 기준 중앙정렬 */
	justify-content:center; /* 좌우 기준 중앙정렬 */
}
.ad .swiper-container{
	width: 1060px;
	
}

.hotelCenter .swiper-container{
	width: 1060px;
	position: static;
	
}

.ad{
	
	margin-top: 40px;
	margin-bottom: 40px;
}

.swiper-slide{
	cursor: pointer;
}

</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - 메인</title>
</head>
<body>
	<div class="container">
	<%@ include file="common/header.jspf"%>
	</div>
	<%@ include file="common/search.jspf"%>
	<div class="wrap">
		<div class="ad">
			<h2 class="hide">광고 영역</h2>

				<div class="swiper-container swiper">
					<div class="swiper-wrapper">

						<div class="swiper-slide">
							<img src="<c:url value="/resources/img/ad.png" />">
						</div>
						<div class="swiper-slide">
							<img src="<c:url value="/resources/img/ad.png" />">
						</div>
						
					<!-- 네비게이션 -->

					
				</div>

				<div class="swiper-button-next button-next"></div>
				<!-- 다음 버튼 (오른쪽에 있는 버튼) -->
				<div class="swiper-button-prev button-prev"></div>
				<!-- 이전 버튼 -->
				<div class="swiper-pagination"></div>

			</div>

				
				
			</div>
			
		</div>
		
		<div class="hotel">
			<div class="hotel-title">
				<h1>인기 호텔</h1>
			</div>
			<div class="hotelCenter">
			
				<div class="swiper-container swiper2">
					<div class="swiper-wrapper">

						<c:forEach var="vo" items="${list }">
							<div class="swiper-slide">
								<div class="hotelContent" onclick="location.href='hotelboard/detail?numHotel=${vo.numHotel }'">
									<div class="hotelContent-top">
										<img src="hotelboard/display?fileName=${vo.hotelImg }">
									</div>
									<div class="hotelContent-bottom">
										<div class="hotelContent-bottom-title">
											<h3>${vo.titleHotel }</h3>
										</div>
										
										<div class="hotelContent-bottom-content">
											 <p><fmt:formatNumber value="${vo.pricePro }" pattern="#,###,###,###" />원</p>
											  1일 최저가
										</div>		
									</div>
									
								</div>
							</div>
						</c:forEach>
						
						
					</div>



				</div>
					<!-- 네비게이션 -->
					<div class="swiper-button-next button2-next"></div>
					<!-- 다음 버튼 (오른쪽에 있는 버튼) -->
					<div class="swiper-button-prev button2-prev"></div>
					<!-- 이전 버튼 -->
				
			</div>
		</div>





		<script>

			new Swiper('.swiper', {

				slidesPerView : 1, // 동시에 보여줄 슬라이드 갯수
				spaceBetween : 0, // 슬라이드간 간격
				slidesPerGroup : 1, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

				// 그룹수가 맞지 않을 경우 빈칸으로 메우기
				// 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬

				pagination : { // 페이징
					el : '.swiper-pagination',
					clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
				},
				navigation : { // 네비게이션
					nextEl : '.button-next', // 다음 버튼 클래스명
					prevEl : '.button-prev', // 이번 버튼 클래스명
				},
			});

			new Swiper('.swiper2', {
				
				slidesPerView : 4, // 동시에 보여줄 슬라이드 갯수
				spaceBetween : 0, // 슬라이드간 간격
				slidesPerGroup : 4, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음

				// 그룹수가 맞지 않을 경우 빈칸으로 메우기
				// 4개가 나와야 되는데 1개만 있다면 3개는 빈칸으로 채워서 3개를 만듬
				loopFillGroupWithBlank : true,



				navigation : { // 네비게이션
					nextEl : '.button2-next', // 다음 버튼 클래스명
					prevEl : '.button2-prev', // 이번 버튼 클래스명
				},
			});
		</script>
		<div class="container">
		<%@ include file="common/footer.jspf"%>
		</div>

</body>
</html>