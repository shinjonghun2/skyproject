<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html lang="ko">
  
   <body>
  

    <nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar fixed-top" id="probootstrap-navbar">
      <div class="container">
        <a class="navbar-brand" href="${root }index">Sky Travel</a>
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
          <span><i class="ion-navicon"></i></span>
        </button>
        
        <div class="collapse navbar-collapse" id="probootstrap-menu">
      <ul class="navbar-nav" >
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">리뷰보기</a>
        <div class="dropdown-menu">
        <a class="dropdown-item" href="${root }travel_review">여행리뷰</a>
        <a class="dropdown-item" href="${root }hotel_review">호텔리뷰</a>
        </div>
        </li>
      </ul>
              
               
       <ul class="navbar-nav ml-auto">
         <c:choose>
            <c:when test="${loginUserBean.userLogin == true }">
               <li class="nav-item">
                     <a class="nav-link" href="${root }user_modify">${loginUserBean.user_id}</a>
                  </li>
                  
                
                
                      <c:choose>
                        <c:when test="${reservation.user_id.trim() eq reservation1.user_id.trim()}"> 
                        
		                         <c:choose>
		                               <c:when test="${loginUserBean.user_id.trim() eq 'sky123'}">
		                                  <li class="nav-item active">
		                                     <a class="nav-link" href="${root }reservation_management">예약관리수정</a>
		                                     </li>
		                               </c:when>
		                               <c:otherwise>
		                                <li class="nav-item active"> 
		                                      <a class="nav-link" href="${root }order_check?user_id=${loginUserBean.user_id}">내 예약확인</a>
		                                   </li>
		                               </c:otherwise>
		                          </c:choose>
                        </c:when>
                         <c:otherwise>
                            <li class="nav-item active"> 
                                <a class="nav-link" href="${root }order_check_fail">내 예약확인</a>
                             </li>
                      </c:otherwise>
                   </c:choose>


					<c:choose>
	                    <c:when test="${loginUserBean.user_id.trim() eq 'sky123'}">
	    	           </c:when>
	    	           <c:otherwise>
	                  <li class="nav-item active">
	                     <a class="nav-link" href="${root }user_modify">정보수정</a>   
	                  </li>	
	    	           </c:otherwise>
		            </c:choose>
	
	                  <li class="nav-item">
        	             <a class="nav-link" href="${root }logout">로그아웃</a>
    	              </li>
          		</c:when>
            
            
            
            
	            <c:otherwise>
	                  <li class="nav-item active">
	                     <a class="nav-link" href="${root}login">로그인</a>
	                  </li>
	                  <li class="nav-item">
	                     <a class="nav-link" href="${root}member_join">회원가입</a>
	                  </li>
	            </c:otherwise>
         </c:choose>
          </ul>   


        </div>
      </div>
    </nav>
    
    </body>
    </html>
    