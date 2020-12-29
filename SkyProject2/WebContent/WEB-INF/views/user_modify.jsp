<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>

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

<nav
		class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top shadow-lg">
		<div >
		<a class="navbar-brand" href="${root }index">
		Winged</a>
		</div>
		</nav>

<div style="font-size: 35px; text-align: center; margin-top: 100px;">회원정보 수정</div><br>
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form:form action="${root }modify_pro" method="post" modelAttribute="modifyUserBean">
					<div class="form-group">
						<form:label path="user_name">이름</form:label>
						<form:input path="user_name" class="form-control" value="${loginUserBean.user_name}" readonly="true"/>
					</div>
					<div class="form-group">
						<form:label path="user_birth">생년월일</form:label>
						<form:input path="user_birth" class="form-control" value="${loginUserBean.user_birth}" readonly="true"/>
					</div>
					<div class="form-group">
						<form:label path="user_id">아이디</form:label>
						<form:input path="user_id" class="form-control" value="${loginUserBean.user_id}" readonly="true"/>
					</div>
					<div class="form-group">
						<form:label path="user_pw">비밀번호</form:label>
						<form:password path="user_pw" class="form-control" value="${loginUserBean.user_pw}"/>
						<form:errors path='user_pw' style='color:red'/>
					</div>
					<div class="form-group">
						<form:label path="user_pw2">비밀번호 확인</form:label>
						<form:password path="user_pw2" class="form-control" value="${loginUserBean.user_pw2}"/>
						<form:errors path='user_pw2' style='color:red'/>
					</div>
					
					<div class="form-group">
						<form:label path="user_email">이메일</form:label>
						<form:input path="user_email" class="form-control" value="${loginUserBean.user_email}" />
					
					</div>
					
					<div class="form-group">
						<form:label path="user_phone">휴대전화</form:label>
						<form:input path="user_phone" class="form-control" value="${loginUserBean.user_phone}" />
						<form:errors path='user_phone' style='color:red'/>
					</div>
					<div class="form-group">
						<div class="text-right">
							<form:button type="submit" class="btn btn-primary">정보수정</form:button>
						</div>
					</div>
					
					</form:form>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>

<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>

</body>
</html>