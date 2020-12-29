<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
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
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

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
<script>
    function checkUserIdExist() {
     //변수선언 : 사용자가 입력한 id 가져오기
   var user_id=$("#user_id").val()
    //입력값이 없을시 요청되는 메소드
    if(user_id.length==0){
      alert('아이디를 입력해주세요')
      return false;
   }
    
   $.ajax({
      url : '${root }checkUserIdExist/' + user_id, //요청할 페이지의 주소
      type : 'get', //요청타입
      dataType : 'text', //문자열
      //성공시 호출할 함수
      success : function(result){ 
         if(result.trim() == 'true'){
            alert('사용할 수 있는 아이디입니다')
            $("#userIdExist").val('true')//유효성 체크
         } else if(result.trim() == 'false'){
            alert('사용할 수 없는 아이디 입니다')
            $("#userIdExist").val('false')
         }
      }
   })
  }
   //사용자 아이디란에 입력하면 다시 reset시키기
   function resetUserIdExist() {
      $("userIdExist").val('false')
   } 


</script>


<body>
   

   <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top shadow-lg">
      <div >
      <a class="navbar-brand" href="${root }index">
      Winged</a>
      </div>
      </nav>
      <div class="flex-container">
     

         <form:form action="${root }join_pro" method="post" modelAttribute="joinUserBean">
            <div style="font-size: 35px; text-align: center; margin-top: 200px;">회원가입</div><br>
               <form:hidden path="userIdExist"/>
               
            <form:label path="user_name">이름</form:label>
            <form:input path="user_name" required="autofocus" style="width: 450px;" class="form-control" />
            <form:errors path="user_name" style='color:red' />     

            <form:label path="user_birth">생년월일</form:label>
            <form:input path="user_birth" required="autofocus"  placeholder="8자리(ex 20201008)" maxlength="8" style="width: 450px;" class='form-control' onkeypress="resetUserIdExist()"/>
            <form:errors path="user_birth" style='color:red' />

               <form:label path="user_id">아이디</form:label><Br>
            <form:input path="user_id" style="width: 330px; float:left; margin-right: 20px;" class='form-control' onkeypress="resetUserIdExist()"/>
              <button type="button"  class="btn btn-primary btn-sm btn-block" onclick='checkUserIdExist()' style="width: 100px; float:left;">중복확인</button><Br><Br>
            <form:errors path="user_id" style='color:red' />
 
            <p>
               <form:label path="user_pw">비밀번호</form:label>
            <form:password path="user_pw" class='form-control' required="autofocus" style="width: 450px;"/>
            <form:errors path='user_pw' style='color:red'/>      
            </p>
            
               <form:label path="user_pw2">비밀번호확인</form:label>
            <form:password path="user_pw2" class='form-control' required="autofocus" style="width: 450px;"/>
            <form:errors path='user_pw2' style='color:red'/>

               <form:label path="user_email">이메일</form:label>
            <form:input path="user_email" class='form-control' placeholder="you@example.com" required="autofocus" style="width: 450px;"/>
            <form:errors path='user_email' style='color:red'/>

               <form:label path="user_phone">휴대전화</form:label>
            <form:input path="user_phone" class='form-control' placeholder="-포함하여 입력" required="autofocus" style="width: 450px;"/>
            <form:errors path='user_phone' style='color:red'/>
                                    
           <br>
            <form:button class="btn btn-primary btn-lg btn-block" type="submit" style="width: 450px;">회원가입</form:button>
                         
         </form:form>
   </div>
         

</body>

</html>