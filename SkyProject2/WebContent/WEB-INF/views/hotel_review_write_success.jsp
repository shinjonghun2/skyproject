<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
	alert('게시글이 등록되었습니다')
	location.href = '${root}hotel_review_read?hotel_content_idx=${writeHotelContentBean.hotel_content_idx}'
</script>