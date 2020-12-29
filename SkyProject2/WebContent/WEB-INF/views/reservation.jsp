<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
   <nav
      class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top shadow-lg">
      <div >
      <a class="navbar-brand" href="${root }index">
      SKY TRAVEL</a>
      </div>
      </nav>
    





  
  
  
  <!-- 오른쪽 -->
  <body class="bg-light">
  
  
    <div class="container">
 
      <div class="py-5 text-center">
       <h2>Reservation form</h2>
     </div>

      <div class="row">        
            <div class="col-md-5 order-md-1">
             <img src="${hotel_pic}" alt="객실 사진 입니다" width="300" style="float:right; margin-right: 20px;">
            </div>
             <!-- 왼쪽 -->
             <div class="col-md-7 order-md-1">
               <h4 class="mb-3">예약 정보</h4>
               <form:form action="${root }payment" class="needs-validation" modelAttribute="resBean"  method="get" >
                <div class="col-md-6 mb-3">
                        회원아이디<input type="text"  value="${loginUserBean.user_id}" class="form-control" name="user_id" style="width:350px;" readonly="readonly">
                   </div>
                    <div class="col-md-6 mb-3">
                        호텔<input type="text" value="${hotel_name} " class="form-control" name="hotel_name" style="width:350px;"  readonly="readonly">
                   </div>
                    <div class="col-md-6 mb-3">
                        객실<input type="text" value="${room_name}" class="form-control" name="room_name" style="width:350px;"  readonly="readonly">
                   </div>                   
                   <div class="col-md-6 mb-3">
                       <label for="num">인원수</label>
                         <select  id="num" class="custom-select d-block w-100" name="room_num" style="width:400px;" >
                       <option>1</option>
                       <option>2</option>
                       <option>3</option>
                       <option>4</option>
                       <option>5</option>
                       <option>6</option>
                       <option>7</option>
                       <option>8</option>
                       <option>9</option>
                       <option>10</option>
                   
                     </select>
                   </div>
             <div class="col-md-6 mb-3">
                   <form:label path="reserve_name" >투숙객 이름</form:label>
                        <form:input  path="reserve_name" class="form-control"  style="width:350px;" required="true"/>
                         <form:errors path="reserve_name" style='color:red'/>
                   
                        
                   </div>
                  <div class="col-md-6 mb-3">
                  
                   <form:label path="reserve_phone">전화번호</form:label>
                        <form:input  path="reserve_phone" class="form-control"  style="width:350px;" required="true"/>
                         <form:errors path="reserve_phone" style='color:red'/>
                         
                         
                  </div>
         
               
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="same-address">
                      <label class="custom-control-label" for="same-address">
                         <span style="font-size: 25px;">가격은 <Strong>${room_price}</Strong>원 입니다</span>
                        <br> 체크인 날짜는 <form:label path="check_in">${check_in}</form:label>,
                           <form:label path="check_out"> 체크아웃 날짜는 ${check_out}</form:label>입니다.
                     </label>
                    </div>
                   <input type="hidden" name="room_price" value="${room_price}">
                   <input type="hidden" name="check_in" value="${check_in}">
                   <input type="hidden" name="check_out" value="${check_out}">
         
               <br>
                 <button class="btn btn-primary btn-lg btn-block" type="submit" style="width:300px;">예약하기</button>
                 <br>
                 <br>
                 <br>
               </form:form>
             </div>
         </div>
   </div>

   <!-- 하단 메뉴 -->
   
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