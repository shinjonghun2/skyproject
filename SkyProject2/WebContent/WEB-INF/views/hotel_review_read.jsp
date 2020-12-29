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
            <h2 class="heading mb-2 display-4 font-light probootstrap-animate">호텔 리뷰 읽기</h2>
             
            <p class="lead mb-5 probootstrap-animate">
          </p>
          </div> 
        </div>
      </div>
    
    </section>
    <!-- END section -->
	
	 <section class="probootstrap_section" id="section-city-guides">
	 
<!-- 상단 메뉴 부분 -->
<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					
					<div class="form-group">
						<label for="hotel_content_subject">제목</label>
						<input type="text" id="hotel_content_subject" name="board_subject" class="form-control" value="${hotelreview.hotel_content_subject}" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="hotel_content_hotelname">호텔이름</label>
						<input type="text" id="hotel_content_hotelname" name="board_subject" class="form-control" value="${hotelreview.hotel_content_hotelname}" disabled="disabled"/>						
					</div>
					<div class="form-group">
						<label for="hotel_content_text">내용</label>
						<textarea id="hotel_content_text" name="board_content" class="form-control" rows="10" style="resize:none" disabled="disabled">${hotelreview.hotel_content_text}</textarea>
					</div>
					<div class="form-group">
						<label for="hotel_content_writer_id">작성자</label>
						<input type="text" id="hotel_content_writer_id" name="board_writer_name" class="form-control" value="${hotelreview.hotel_content_writer_id}" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="hotel_content_date">작성날짜</label>
						<input type="text" id="hotel_content_date" name="board_date" class="form-control" value="${hotelreview.hotel_content_date}" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="hotel_content_rating">평점</label>
						<input type="text" id="hotel_content_rating" name="board_subject" class="form-control" value="${hotelreview.hotel_content_rating}" disabled="disabled"/>					
					</div>
					<div class="form-group">
						<div class="text-right">
							<a href="${root }hotel_review" class="btn btn-primary">목록보기</a>
							<a href="${root }hotel_review_modify?hotel_content_idx=${hotelreview.hotel_content_idx}" class="btn btn-info">수정하기</a>
							
							<a href="${root }hotel_review_modify_delete?hotel_content_idx=${hotelreview.hotel_content_idx}" class="btn btn-danger">삭제하기</a>
						</div>
					</div>
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