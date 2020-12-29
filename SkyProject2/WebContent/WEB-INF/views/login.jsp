<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
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
<link rel="stylesheet" href="assets/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="assets/css/select2.css">


<link rel="stylesheet" href="assets/css/helpers.css">
<link rel="stylesheet" href="assets/css/style.css">

<style>
.flex-container{
  width: 100%;
  height: 100vh;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}


</style>
</head>





<body>
<nav
		class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top shadow-lg">
		<div >
		<a class="navbar-brand" href="${root }index">
		Winged</a>
		</div>
		</nav>
		

	<div class="flex-container">
	<form:form action="${root }login_pro" method="post" modelAttribute="tempLoginUserBean" class="form-signin" >
		<br><Br>
		<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1><br>
			<form:input path="user_id" name="user_id" class="form-control" placeholder="아이디" required="autofocus" style="width:450px;"/> <br>
			<form:errors path="user_id" />
		
			<form:password path="user_pw" name="user_pw" class="form-control" placeholder="비밀번호" required="autofocus" style="width:450px;"/><br>
			<form:errors path="user_pw" />
		
			<form:button class="btn btn-lg btn-primary btn-block" type="submit" style="width:450px;"> 로그인</form:button>

	</form:form>
	</div>
</body>
</html>