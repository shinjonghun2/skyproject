<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>


<!DOCTYPE html>
<html lang="en">
	<head>
      <!-- 
    More Templates Visit ==> ProBootstrap.com
    Free Template by ProBootstrap.com under the License Creative Commons 3.0 ==> (probootstrap.com/license)

    IMPORTANT: You can do whatever you want with this template but you need to keep the footer link back to ProBootstrap.com
    -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		 <title>&mdash; SKY TRAVEL</title>
		<meta name="description" content="Free Bootstrap 4 Theme by ProBootstrap.com">
		<meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">

		<link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/fonts/ionicons/css/ionicons.min.css">
    
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    
    <link rel="stylesheet" href="assets/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="assets/fonts/fontawesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="assets/css/select2.css">
    

    <link rel="stylesheet" href="assets/css/helpers.css">
    <link rel="stylesheet" href="assets/css/style.css">

	</head>
	<body>
  

    <c:import url="/WEB-INF/views/include/top_menu.jsp"/>
    <!-- END nav -->
    

    <section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5" id="section-home">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center text-center">
          <div class="col-md">
            <h2 class="heading mb-2 display-4 font-light probootstrap-animate">예약 확인</h2>
             
            <p class="lead mb-5 probootstrap-animate">
          </p>
          </div> 
        </div>
      </div>
    
    </section>
    <!-- END section -->
    
    <section class="probootstrap_section" id="section-city-guides">
      <!-- 게시글 리스트 -->
<div class="container" style="margin-top:50px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form action="${root }admin_delete" method="post">
					<div class="form-group">
						<label for="user_pw">예약자</label>
						<input type="text" id="user_phone" name="reserve_name" class="form-control" value="${reservation.reserve_name } " readonly="true"/>
					</div>
					<div class="form-group">
						<label for="user_pw">호텔</label>
						<input type="text" id="user_phone" name="hotel_name" class="form-control" value="${reservation.hotel_name }" readonly="true"/>
					</div>
					<div class="form-group">
						<label for="user_pw">휴대전화</label>
						<input type="text" id="user_phone" name="reserve_phone" class="form-control" value="${reservation.reserve_phone } " readonly="true"/>
					</div>
					<div class="form-group">
						<label for="user_pw">체크인/아웃</label>
						<input type="text" id="user_phone" name="check" class="form-control" value="${reservation.check_in } ~ ${reservation.check_out }" readonly="true"/>
					</div>
					<div class="form-group">
						<label for="user_pw">결제금액</label>
						<input type="text" id="user_phone" name="room_price" class="form-control" value="${reservation.room_price }" readonly="true"/>
					</div>
					
					
					<div class="form-group">
						<div class="text-right">
						<input type="hidden" name="user_id" value="${reservation.user_id }"/>
							<button type="submit" class="btn btn-danger">삭제하기</button>
						</div>
					</div>
					
					</form>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
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
<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>

	</body>
</html>