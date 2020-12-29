<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!doctype html>
<html lang="en">
<head>
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
<link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="assets/css/select2.css">


<link rel="stylesheet" href="assets/css/helpers.css">
<link rel="stylesheet" href="assets/css/style.css">
</head>


<body>
   <c:import url="/WEB-INF/views/include/top_menu.jsp"/>
    <!-- END nav -->
    
    <section class="probootstrap-cover overflow-hidden relative"
      style="background-image: url('assets/images/bg_1.jpg');"
      data-stellar-background-ratio="0.5" id="section-home">
      <div class="overlay"></div>
      <div class="container">
         <div class="row align-items-center text-center">
            <div class="col-md">
               <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Our
                  Services</h2>

               <p class="lead mb-5 probootstrap-animate"></p>
               <a href="https://themewagon.com/theme_tag/free/" target="_blank"
                  role="button"
                  class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">More
                  Templates Here</a>
               </p>
            </div>
         </div>
      </div>

   </section>
   <!-- END section -->
    
    <script type="text/javascript">
    
    room_name=encodeURIComponent(${hotelRoombean.room_name1});
    
    
    </script>
  
      <!-- 본문 페이지 -->   
      <section class="probootstrap_section" id="section-city-guides">
        <div class="blog-area pt-100 pb-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 blog-post-item order-1 order-lg-2">
                        <div class="blog-wrapper blog-details">
                               <span style="font-size: 35px; font-style: blod;">${hotelRoomBean.hotel_name}</span> <br>
                        
                                <img src="${hotelRoomBean.hotel_pic}"  width="200" height="200" >
                               <!-- 이미지 확대 -->
                        <img src="assets/images/Room_Royal.jpg" alt="호텔이미지2" width="200" height="200" class="img-fluid" >
                        <img src="assets/images/Room_Deluxe.jpg" alt="호텔이미지3" width="200" height="200" class="img-fluid" >
                        <img src="assets/images/Room_Double.jpg" alt="호텔이미지4" width="200" height="200" class="img-fluid" >

                            <div class="blog-content">
                          <br>
                                <h3>Rooms</h3>
                                <p>최상의 룸을 제공 합니다.</p>
                           <!-- Room1 -->    
                            <div class="row">
                              <div class="col-12">
                                  <div class="room-list-item">
                                      <div class="row">
                                          <div class="col-lg-3">
                                               <img src="assets/images/Room_Royal.jpg" alt="방이미지1" width="180" height="180" class="img-fluid" >
                                          </div>
                                          <div class="col-lg-5">
                                               <h3>${hotelRoomBean.room_name1}</h3>
                                               <ul>
                                                   <li><i class="fa fa-bed"></i> Bed <span> : 1 King Bed</span></li>
                                                   <li><i class="fa fa-wifi"></i> Free Wifi <span> : Yes</span></li>
                                                   <li><i class="fa fa-coffee"></i> Breakfast <span> : Yes</span></li>
                                                   <li><i class="fa fa-users"></i> Max Occupancy: <span> : 2 Adult, 1 Child</span></li>
                                               </ul>
                                           </div>
                                           <div class="col-lg-2">
                                                 <p>${hotelRoomBean.room_price1}<span>원</span></p>
                                           </div>
                                           <div class="col-lg-2">
                                                <a href="reservation?hotel_num=${hotelRoomBean.hotel_num}&room_num=2"> 결제하기 <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                                          <input type="hidden" value="${check_in}" name="check_in">
                                         <input type="hidden" value="${check_in}" name="check_out">
                                           </div>
                                       </div>
                                  </div>
                                </div>
                           </div>
                           <br><br>
                           
                           
                                <!-- Room2 -->
                                
                            <div class="row">
                              <div class="col-12">
                                  <div class="room-list-item">
                                      <div class="row">
                                          <div class="col-lg-3">
                                               <img src="assets/images/Room_Deluxe.jpg" alt="방이미지2" width="180" height="180" class="img-fluid" >
                                          </div>
                                          <div class="col-lg-5">
                                               <h3>${hotelRoomBean.room_name2}</h3>
                                               <ul>
                                                   <li><i class="fa fa-bed"></i> Bed <span> : 1 King Bed</span></li>
                                                   <li><i class="fa fa-wifi"></i> Free Wifi <span> : Yes</span></li>
                                                   <li><i class="fa fa-coffee"></i> Breakfast <span> : Yes</span></li>
                                                   <li><i class="fa fa-users"></i> Max Occupancy: <span> : 2 Adult, 1 Child</span></li>
                                               </ul>
                                           </div>
                                           <div class="col-lg-2">
                                                 <p>${hotelRoomBean.room_price2}<span>원</span></p>
                                           </div>
                                           <div class="col-lg-2">
                                                <a href="reservation?room_name=<%=URLEncoder.encode("${hotelRoomBean.room_name2}","UTF-8") %>&room_price=${hotelRoomBean.room_price2}&hotel_name=<%=URLEncoder.encode("${hotelRoomBean.hotel_name}","UTF-8") %>&check_in=${check_in}&check_out=${check_out}"> 결제하기 <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                                           
                                           </div>
                                       </div>
                                  </div>
                                </div>
                           </div>
                           
                         <br><br>
 
                            <!-- Room3 -->
                            
                            <div class="row">
                                 <div class="col-12">
                                     <div class="room-list-item">
                                         <div class="row">
                                             <div class="col-lg-3">
                                                  <img src="assets/images/Room_Double.jpg" alt="방이미지2" width="180" height="180" class="img-fluid" >
                                             </div>
                                             <div class="col-lg-5">
                                                  <h3>${hotelRoomBean.room_name3}</h3>
                                                  <ul>
                                                      <li><i class="fa fa-bed"></i> Bed <span> : 1 King Bed</span></li>
                                                      <li><i class="fa fa-wifi"></i> Free Wifi <span> : Yes</span></li>
                                                      <li><i class="fa fa-coffee"></i> Breakfast <span> : Yes</span></li>
                                                      <li><i class="fa fa-users"></i> Max Occupancy: <span> : 2 Adult, 1 Child</span></li>
                                                  </ul>
                                              </div>
                                              <div class="col-lg-2">
                                                    <p>${hotelRoomBean.room_price3}<span>원</span></p>
                                              </div>
                                              <div class="col-lg-2">
                                                   <a href="reservation?room_name=<%=URLEncoder.encode("${hotelRoomBean.room_name3}","UTF-8") %>&room_price=${hotelRoomBean.room_price3}&hotel_name=<%=URLEncoder.encode("${hotelRoomBean.hotel_name}","UTF-8") %>&check_in=${check_in}&check_out=${check_out}"> 결제하기 <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                                              </div>
                                          </div>
                                     </div>
                                   </div>
                              </div>         
                             </div>
                           </div>
                        </div>
                      </div>
                    </div>
                </div>
  
   </section>
 <c:import url="/WEB-INF/views/include/bottom_info.jsp"/>

    <!--All Js Here-->
   <script src="js/vendor/jquery-1.12.4.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script src="js/plugins.js"></script>
   <script src="js/ajax.mail.js"></script>
   <script src="js/main.js"></script>
</body>
</html>