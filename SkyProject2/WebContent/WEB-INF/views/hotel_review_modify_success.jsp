<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value='${pageContext.request.contextPath}/'/>
<script>
	alert('호텔 후기가 수정되었습니다')
	location.href = '${root}hotel_review_read?hotel_content_idx=${modifyHotelContentBean.hotel_content_idx}'
</script> 