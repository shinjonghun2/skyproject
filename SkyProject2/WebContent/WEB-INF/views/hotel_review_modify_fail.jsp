<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
	alert('게시글 수정 실패')
	location.href = '${root}hotel_review_read?hotel_content_idx=${modifyHotelContentBean.hotel_content_idx}'
</script>