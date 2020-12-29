<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
	<head>
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
            <h2 class="heading mb-2 display-4 font-light probootstrap-animate">여행 리뷰 수정하기</h2>
             
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
				<form:form action="${root}travel_review_modify_pro" method="get" modelAttribute="modifyTravelBean3"
				    enctype="multipart/form-data">
				    <form:hidden path="travel_content_idx" />
					
					
					<div class="form-group">
						<form:label path="travel_content_subject">제목</form:label>
						<form:input path="travel_content_subject" class="form-control" />	
					</div>
					
					<div class="form-group">
						<form:label path="travel_content_city">도시</form:label>
						<form:input path="travel_content_city" class="form-control"/>
					</div>
					
					<div class="form-group">
						<form:label path="travel_content_place">장소</form:label>
						<form:input path="travel_content_place" class="form-control" />						
					</div>
					
					<div class="form-group">
						<form:label path="travel_content_text">내용</form:label>
						<form:textarea path="travel_content_text" class="form-control"
										rows="10" style="resize:none" />
					</div>
					
					<div class="form-group">
						<form:label path="travel_content_writer">작성자</form:label>
						<form:input path="travel_content_writer" class="form-control"/>
					</div>
					<div class="form-group">
						<form:label path="travel_content_date">작성날짜</form:label>
						<form:input path="travel_content_date" class="form-control" />
					</div>
					<div class="form-group">
						<div class="text-right">
							<form:button type="submit" class="btn btn-primary">수정완료</form:button>
							<form:button onclick="history.go(-1)" class="btn btn-danger">취소하기</form:button>
							<%-- <a href="${root}travel_review_modify_delete" class="btn btn-danger">취소하기</a> --%>
                     		<%-- <form:button onclick="${root}travel_review_modify?travel_content_idx=${travel_content_idx}" class="btn btn-info">수정하기</form:button> --%>
                     		<%-- <form:button onclick="history.go(-1)">취소하기</form:button> --%>
							<%-- <button type="submit" class="btn btn-primary">수정완료</button>
								<a href="${root }hotel_review" class="btn btn-info">취소</a> --%>
						</div>
					</div>
					</form:form>
					
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