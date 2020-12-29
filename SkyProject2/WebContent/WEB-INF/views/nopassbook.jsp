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
					<h2 class="heading mb-2 display-4 font-light probootstrap-animate">예약
						확인</h2>

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
							<form action="nopassbook_pro" method="post" modelAttribute="resBean">
							
							<div class="form-group">
								<label for="board_travel">무통장 입금</label>
								 <select onchange="categoryChange(this)" id="korea" name="board_travel "
									class="form-control" style="width: 450px;">
									<option>은행</option>
									<option value="a">신한은행</option>
									<option value="b">하나은행</option>
									<option value="c">카카오뱅크</option>
									
									
								
								</select>

 
							</div>

							<select id="good"  class="form-control" style="width:450px;">
								<option>은행을 먼저 선택하세요</option>
							</select>

							<script>
								function categoryChange(e) {
									var good_a =  ["110-378-634403 심완우"];
									var good_b = ["373911807071307 심완우"] ;
									var good_c =  ["3333-11-1127079 심완우"];
							
									var target = document
											.getElementById("good");

									if (e.value == "a")
										var d = good_a;
									else if (e.value == "b")
										var d = good_b;
									else if (e.value == "c")
										var d = good_c;
									else if (e.value == "d")
										var d = good_d;
									else if (e.value == "e")
										var d = good_e;
									else if (e.value == "f")
										var d = good_f;

									target.options.length = 0;

									for (x in d) {
										var opt = document
												.createElement("option");
										opt.value = d[x];
										opt.innerHTML = d[x];
										target.appendChild(opt);
									}
								}
							</script>
									
									
									
									
									
									</select>
									
									
									
									
									

										 
									


									<div class="form-group">
											<br>
											<span style="font-size: 20px;">결제금액은 <br></span>
											<span style="font-size: 24px;"><Strong>${room_price}</Strong>원 입니다.</span>
											<span style="float:right;">
											<input type="hidden" value="${room_price}" name="room_price">
												<button type="submit" class="btn btn-primary"> 결제 </button>
											<a href="index"><button type="button" class="btn btn-primary">취소 </button></a>
											</span>
									</div>
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
					</div>
					<div class="col-sm-3"></div>
				</div>
			</div>


		</section>

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