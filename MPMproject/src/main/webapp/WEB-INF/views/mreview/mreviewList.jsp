<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="myctx" value="${pageContext.request.contextPath}" scope="session" />
<link rel="stylesheet" type="text/css" href="${myctx}/resources/css/MPMteam_M_ReviewList.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<div id="mreviewL">
	<div id="t1">
		<textarea name="mr_content" id="mr_content" rows="10" 
		cols="60" maxlength="2000" disabled>[:이름:]&nbsp;댓글&nbsp;[날짜]&#10;줄넘김</textarea><!-- &#10; : 줄넘김 -->
	</div>
</div>