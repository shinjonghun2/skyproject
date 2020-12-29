<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var='root' value="${pageContext.request.contextPath }/"/>
 <footer class="probootstrap_section probootstrap-border-top">
      <div class="container text-center" >
        <div class="row mb-5 text-center" >
          
          <div class="col-md-3 text-center">
           
            </ul>
          </div>
        </div>
        <div class="row pt-5">
          <div class="col-md-12 text-center">
           <h3 class="probootstrap_font-18 mb-3">Quick Links</h3>
            <ul class="list-unstyled">
              
              <li><a href="${root}order_check?user_id=${loginUserBean.user_id}" >내 예약관리</a></li>
              <li><a href="${root}conditions" >이용약관</a></li>
              <li><a href="${root}information_handling" >개인정보 취급방침</a></li>
              </ul>
            <p class="probootstrap_font-14">&copy; 2020. All Rights Reserved. <br> Designed &amp; Developed by <a href="https://probootstrap.com/" target="_blank">ProBootstrap</a><small> (Don't remove credit link on this footer. See <a href="https://probootstrap.com/license/">license</a>)</small></p>
            <p class="probootstrap_font-14">Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a></p>
          </div>
        </div>
      </div>
    </footer>