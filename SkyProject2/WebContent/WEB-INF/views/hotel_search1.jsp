<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>


<!DOCTYPE html>
<html lang="en">
<head>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title> &mdash; SKY Travel</title>
<meta name="description"content="Free Bootstrap 4 Theme by ProBootstrap.com">
<meta name="keywords"
   content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">


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
	<!-- top menu import -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp"/>
   
   <section class="probootstrap-cover overflow-hidden relative"
      style="background-image: url('assets/images/bg_1.jpg');"
      data-stellar-background-ratio="0.5" id="section-home">
      <div class="overlay"></div>
      <div class="container">
         <div class="row align-items-center text-center">
            <div class="col-md">
               <h2 class="heading mb-2 display-4 font-light probootstrap-animate">호텔 검색 </h2>
               <p class="lead mb-5 probootstrap-animate"></p>
               
              
            </div>
         </div>
      </div>

   </section>
   <!-- END section -->
   
<!-- 호텔 1 -->
   <section class="probootstrap_section" id="section-city-guides">
     
     
       <div class="col-lg-9 blog-post-item order-2 order-lg-2">
         <c:forEach var="obj" items="${hotelsearchList}">
        <div class="row mb-5">
            <div class="col-md-12"> 
               <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                  <div class="probootstrap-media-image" style="background-size: 300px;
                             width: 300px; height: 300px;">
                   <img src="${obj.hotel_pic}" width="300px" height="300px"/>
                             </div>
                             <div class="media-body" style="height: 260px; width: 300px">
                     <h5 class="mb-3">${obj.hotel_name}</h5>
                     <p>
               <!--별 구현2-->
                <style>
               * {
                  margin: 0;
                  padding: 0;
               }
               
               .star {
                  display: inline-block;
                  width: 30px;
                  height: 60px;
                  
               }
               
               .star_left {
                  background:
                     url(https://iconsplace.com/wp-content/uploads/_icons/ffe500/256/png/rating-star-icon-19-256.png)
                     no-repeat 0 0;
                  background-size: 30px;
                  margin-right: -20px;
                  top: -18px
                  
               }
               
               .star_right {
                  background:
                     url(https://iconsplace.com/wp-content/uploads/_icons/ffe500/256/png/rating-star-icon-19-256.png)
                     no-repeat -30px 0;
                  background-size: 30px;
                  margin-left: -20px;
                  top: -18px
                  
               }
               
               </style>
               <!--  -->
               
                        <style>
                        html, body {
                         height: 100%;
                         }

                         .wrap {
                         height: 100%;
                         display: flex;
                         align-items: center;
                         justify-content: center;
                         }
                  
                        .button {
                         width: 140px;
                         height: 45px;
                         font-family: 'Roboto', sans-serif;
                         font-size: 11px;
                         text-transform: uppercase;
                         letter-spacing: 2.5px;
                         font-weight: 500;
                         color: #000;
                         background-color: #fff;
                         border: none;
                         border-radius: 45px;
                         box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
                         /* transition: all 0.3s ease 0s; */
                         cursor: pointer;
                         outline: none;
                         /* position: absolute; */
                         /* bottom: 60px;
                         right: 70px;
                         bottom: 50px; */
 
                          }

                        .button:hover {
                        background-color: #2EE59D;
                        box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
                        color: #fff;
                        transform: translateY(-7px);
                        
                         }
                        </style>
                        
           <div class="row">      
                      <!--별 구현 1 -->
                <c:forEach begin="1" end="${obj.hotel_rating }" step="1" varStatus="status">
               
                  <div class="star-box">
                     <span class="star star_left"></span> 
                     <span class="star star_right"></span>
                     
                  </div>
                  
                     </c:forEach>       
                  <div class="col-md-3 order-md-2"> 

                     <div style="font-size:22px; font-weight:bold; float:right;">${obj.hotel_price}원</div>
                  </div>    
                	
                 <div class="col-md-3 order-md-3">
                  <a href="hotel_detail?hotel_num=${obj.hotel_num}&check_in=${check_in}&check_out=${check_out}">  
                  <button class="button" >Submit</button> 
                  <input type="hidden" value="${check_in}" name="check_in">
                  <input type="hidden" value="${check_out}" name="check_out">
                  </a>
                  </div>
                 </div>
                  </div>
               </div>
            </div>
         </div>
	</c:forEach> 
       <div class="widget mb-60">
        <div class="sidebar-form" style="position: absolute; bottom: 1480px;" >
        호텔검색
        <form action="hotel_search1?check_in=${check_in}&check_out=${check_out}" method="get">
          <input type="hidden" value="${check_in}" name="check_in">
          <input type="hidden" value="${check_out}" name="check_out">
          <input type="text" name="hotel_search1" placeholder="Search">
         <button type="submit" value="이름으로 검색하기"><i class="fa fa-search"></i></button>
        </form>
        </div>
     </div>
     </div>

   </section>
   <!-- bottom import -->
    <c:import url="/WEB-INF/views/include/bottom_info.jsp"/>


   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/popper.min.js"></script>
   <script src="assets/js/bootstrap.min.js"></script>
   <script src="assets/js/owl.carousel.min.js"></script>
   <script src="assets/js/jquery.waypoints.min.js"></script>
   <script src="assets/js/jquery.easing.1.3.js"></script>
   <script src="assets/js/select2.min.js"></script>
   <script src="assets/js/main.js"></script>
</body>
</html>