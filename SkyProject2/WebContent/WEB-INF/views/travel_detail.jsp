<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>&mdash;Sky Travel</title>
<meta name="description"
	content="Free Bootstrap 4 Theme by ProBootstrap.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="assets/css/animate.css">
<link rel="stylesheet" href="assets/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet"
	href="assets/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/select2.css">
<link rel="stylesheet" href="assets/css/helpers.css">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
	<!-- END nav -->


	<section class="probootstrap-cover overflow-hidden relative"
		style="background-image: url('assets/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5" id="section-home">
		<div class="overlay"></div>
		<div class="container">
			<div class="row align-items-center text-center">
				<div class="col-md">
					<h2 class="heading mb-2 display-4 font-light probootstrap-animate">${travelinfo.travel_place}</h2>
					<p class="lead mb-5 probootstrap-animate">
				</div>
			</div>
		</div>

	</section>
	<!-- END section -->

	<section class="probootstrap-section-half d-md-flex" id="section-about">
		<div
			class="probootstrap-image probootstrap-animate fadeIn probootstrap-animated"
			data-animate-effect="fadeIn"
			style="background-image: url(${travelinfo.travel_place_pic})"></div>

		<div class="probootstrap-text">
			<div class="probootstrap-inner probootstrap-animate"
				data-animate-effect="fadeInRight">
				<h2 class="heading mb-4">${travelinfo.travel_place }</h2>

				${travelinfo.travel_detail }


			</div>
		</div>
	</section>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/jquery.waypoints.min.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/js/select2.min.js"></script>
	<script src="assets/js/main.js"></script>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div align="left" style="margin-top: 100px;">
		<hr>
		<h1>지도정보</h1>
		<hr>
	</div>
	<div id="map"
		style="width: 900px; height: 500px; margin: auto; text-align: center"></div>

	<script type="text/javascript"
		src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=fdb6d3b6b6f99a34eba8fb8d5fc67ffa"></script>
	<script>
// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
   var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(${travelinfo.travel_latitude},${travelinfo.travel_longitude}), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 
//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(${travelinfo.travel_latitude},${travelinfo.travel_longitude}); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();
// 주소로 좌표를 검색합니다
geocoder.addressSearch('경북 경주시 인왕동 910-30', function(result, status) {
    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {
        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });
        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
        });
        infowindow.open(map, marker);
        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
}); 
   </script>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />
</body>
</html>