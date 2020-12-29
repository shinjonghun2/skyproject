<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />


<!DOCTYPE html>
<html lang="en">
<head>




<!-- 
    More Templates Visit ==> ProBootstrap.com
    Free Template by ProBootstrap.com under the License Creative Commons 3.0 ==> (probootstrap.com/license)

    IMPORTANT: You can do whatever you want with this template but you need to keep the footer link back to ProBootstrap.com
    -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>&mdash; SKY TRAVEL</title>
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
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
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
					<h2 class="heading mb-2 display-4 font-light probootstrap-animate">결제방법 선택</h2>

					<p class="lead mb-5 probootstrap-animate"></p>
				</div>
			</div>
		</div>

	</section>
	<!-- END section -->
	<div class="form-group">
		<section class="form-group" id="section-city-guides">
			<!-- 게시글 리스트 -->
			<div class="container" style="margin-top: 50px">
				<div class="row">
					<div class="col-sm-3"></div>
					<div class="col-sm-6">
						<div class="card shadow">
							<div class="card-body">
							
							
	<script language="javascript">
	
	function check(){
		var form = document.form1;
		//첫번째 라디오 버튼을 선택한 경우
		if(form.ex[0].checked == true){
			
			form.action="kakaopay";
		}
		//두번째 라디오 버튼을 선택한 경우
		else if(form.ex[1].checked == true){
			form.action = "nopassbook";
		}
		else{
			form.action = "nopassbook";
			
		}
		form.submit();
	}
	
	</script>				
			
						
	<form name="form1"  modelAttribute="resBean" >
					<div class="form-group">
		<input type = "radio" name="ex" value="1" checked>카카오페이<br>
		<img src="assets/images/pay/카카오페이.jpg" height="80" width="100"><br>
		<input type = "radio" name="ex" value="2" checked>신용카드<br>
		<img src="assets/images/pay/신용카드.jpg" height="80" width="100"><br>
		<input type = "radio" name="ex" value="3" checked>무통장입금<br>
		<img src="assets/images/pay/무통장.png" height="80" width="100"><br>
		 
	


						 
									


						<div class="form-group">
								<br>
								<span style="font-size: 20px;"><b>결제금액은 <br></span>
								<span style="font-size: 24px;"><Strong>${room_price }</Strong>원 입니다.</span>
								<span style="float:right;">
								
								<a href = "javascript:check()"><button type="button" class="btn btn-primary">결제 </button></a>
								<a href="index"><button type="button" class="btn btn-primary">취소 </button></a>
								</span>
						</div>

							</div>
							
							
							 <input type="hidden" name="user_id" value="${loginUserBean.user_id}">
							 <input type="hidden" name="user_id" value="${loginUserBean.user_id}">
							 <input type="hidden" name="room_price" value="${room_price}">
                   <input type="hidden" name="check_in" value="${check_in}">
                   <input type="hidden" name="check_out" value="${check_out}">
                   <input type="hidden" name="hotel_name" value="${hotel_name}">
                   
                   <input type="hidden" name="room_num" value="${room_num}">
                   <input type="hidden" name="room_name" value="${room_name}">
                   <input type="hidden" name="reserve_name" value="${reserve_name}">
                   <input type="hidden" name="reserve_phone" value="${reserve_phone}">
								</form>
								
						
                
						</div>
					</div>
					<div class="col-sm-3"></div>
			
		<script src="assets/js/popper.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/owl.carousel.min.js"></script>

		<script src="assets/js/jquery.waypoints.min.js"></script>
		<script src="assets/js/jquery.easing.1.3.js"></script>

		<script src="assets/js/select2.min.js"></script>

		<script src="assets/js/main.js"></script>
		<c:import url="/WEB-INF/views/include/bottom_info.jsp" />
</body>
</html>