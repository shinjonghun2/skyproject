<%@page import="java.net.URLEncoder"%>
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
    <link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="assets/css/select2.css">
    

    <link rel="stylesheet" href="assets/css/helpers.css">
    <link rel="stylesheet" href="assets/css/style.css">

	   </head>
   <body>
  

    <c:import url="/WEB-INF/views/include/top_menu.jsp"/>
    <!-- END nav -->
    

   <section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5"  id="section-home">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md">
            <h2 class="heading mb-1 display-3 font-light ">원하는 숙소의 최저가를 쉽게 찾으세요.</h2>
           
               
          
          </div> 
          <div class="col-md probootstrap-animate">
            <form action="hotel_search" class="probootstrap-form" method="get">
              <div class="form-group">
                <div class="row mb-3">
                  <div class="col-md">
                    <div class="form-group">
                      <label for="id_label_single">지역선택</label>

                      <label for="id_label_single" style="width: 100%;">
                        <select class="js-example-basic-single js-states form-control" id="id_label_single" style="width: 100%;" name="city">
                          <option value="서울">서울</option>
                          <option value="부산">부산</option>
                          <option value="전주">전주</option>
                          <option value="제주">제주</option>
                          <option value="속초">속초</option>
                          <option value="경주">경주</option>
                         
                        </select>
                      </label>

                <!-- END row -->
                <div class="row mb-5">
                  <div class="col-md">
                    <div class="form-group">
                      <label for="probootstrap-date-departure">체크인</label>
                      <div class="probootstrap-date-wrap">
                        <span class="icon ion-calendar"></span> 
                        <input type="text" id="probootstrap-date-departure" class="form-control" placeholder="" name="check_in">
                      </div>
                    </div>
                  </div>
                  <div class="col-md">
                    <div class="form-group">
                      <label for="probootstrap-date-arrival">체크아웃</label>
                      <div class="probootstrap-date-wrap">
                        <span class="icon ion-calendar"></span> 
                        <input type="text" id="probootstrap-date-arrival" class="form-control" placeholder="" name="check_out">
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END row -->
                <div class="row">
                  
                    <input type="submit" value="검색" class="btn btn-primary btn-block">
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    
    </section>
    <!-- END section -->
    

    
   


   <section class="probootstrap_section" id="section-city-guides">
      <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
          <div class="col-md-12">
            <h2 class="display-3 border-bottom probootstrap-section-heading">국내 여행지</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-6 probootstrap-animate mb-3" style="margin-left: 100px">
            <a href="${root }travel_summary?travel_city=<%=URLEncoder.encode("서울","UTF-8") %>" class="probootstrap-thumbnail">
              <img src="assets/images/seoul.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
              <div class="probootstrap-text" >
                <h3>서울</h3>
              </div>
            </a>
          </div>
          <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
            <a href="${root }travel_summary?travel_city=<%=URLEncoder.encode("부산","UTF-8") %>" class="probootstrap-thumbnail">
              <img src="assets/images/boosan.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
              <h3>부산</h3>
            </a>
          </div>
          <div class="col-lg-3 col-md-6 probootstrap-animate mb-3" style="margin-right: 100px">
            <a href="${root }travel_summary?travel_city=<%=URLEncoder.encode("전주","UTF-8") %>" class="probootstrap-thumbnail">
              <img src="assets/images/jeonju.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
              <h3>전주</h3>
            </a>
          </div>
          <div class="col-lg-3 col-md-6 probootstrap-animate mb-3" style="margin-left: 100px">
            <a href="${root }travel_summary?travel_city=<%=URLEncoder.encode("제주","UTF-8") %>" class="probootstrap-thumbnail" >
              <img src="assets/images/jeju.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
              <h3>제주도</h3>
            </a>
          </div>
          <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
            <a href="${root }travel_summary?travel_city=<%=URLEncoder.encode("경주","UTF-8") %>" class="probootstrap-thumbnail">
              <img src="assets/images/keungju.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
              <h3>경주</h3>
            </a>
          </div>
          <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
            <a href="${root }travel_summary?travel_city=<%=URLEncoder.encode("속초","UTF-8") %>" class="probootstrap-thumbnail">
              <img src="assets/images/sokcho.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
              <h3>속초</h3>
            </a>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->
    
	<section class="probootstrap_section" id="section-city-guides">
      <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
          <div class="col-md-12">
            <h2 class="display-3 border-bottom probootstrap-section-heading">국내 호텔</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-6 probootstrap-animate mb-3" style="margin-left: 100px">
            <a href="${root }hotel_summary?city=<%=URLEncoder.encode("서울","UTF-8") %>" class="probootstrap-thumbnail">
              <img src="assets/images/hotel10.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
              <div class="probootstrap-text" >
                <h3>서울</h3>
              </div>
            </a>
          </div>
          <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
            <a href="${root }hotel_summary?city=<%=URLEncoder.encode("부산","UTF-8") %>" class="probootstrap-thumbnail">
              <img src="assets/images/hotel11.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
              <h3>부산</h3>
            </a>
          </div>
          <div class="col-lg-3 col-md-6 probootstrap-animate mb-3" style="margin-right: 100px">
            <a href="${root }hotel_summary?city=<%=URLEncoder.encode("전주","UTF-8") %>" class="probootstrap-thumbnail">
              <img src="assets/images/hotel12.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
              <h3>전주</h3>
            </a>
          </div>
          <div class="col-lg-3 col-md-6 probootstrap-animate mb-3" style="margin-left: 100px">
            <a href="${root }hotel_summary?city=<%=URLEncoder.encode("제주","UTF-8") %>" class="probootstrap-thumbnail">
              <img src="assets/images/hotel13.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
              <h3>제주도</h3>
            </a>
          </div>
          <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
            <a href="${root }hotel_summary?city=<%=URLEncoder.encode("경주","UTF-8") %>" class="probootstrap-thumbnail">
              <img src="assets/images/hotel14.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
              <h3>경주</h3>
            </a>
          </div>
          <div class="col-lg-3 col-md-6 probootstrap-animate mb-3">
            <a href="${root }hotel_summary?city=<%=URLEncoder.encode("속초","UTF-8") %>" class="probootstrap-thumbnail">
              <img src="assets/images/hotel15.jpg" alt="Free Template by ProBootstrap.com" class="img-fluid">
              <h3>속초</h3>
            </a>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->
    
	
    



    
  

    
 
    

    
      
      <c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
    
    
    <script src="assets/js/jquery.min.js"></script>
    
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>

    <script src="assets/js/bootstrap-datepicker.js"></script>
    <script src="assets/js/jquery.waypoints.min.js"></script>
    <script src="assets/js/jquery.easing.1.3.js"></script>

    <script src="assets/js/select2.min.js"></script>

    <script src="assets/js/main.js"></script>
   </body>
</html>