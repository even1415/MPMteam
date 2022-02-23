<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="myctx" value="${pageContext.request.contextPath}" scope="session" />
<link rel="stylesheet" type="text/css" href="${myctx}/resources/css/MPMteam_M_ReviewInsert.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<div id="mreviewF">
	<form action="mreviewInsertEnd" method="post" name="mreviewInsertEnd">
		<div id="t1">
			<span id="sp1">${loginUser.nickname }</span>
			&nbsp;
			<input type="text" name="mr_content" id="mr_content">
			<button class="btn" type="submit">댓글쓰기</button>
		</div>
		<input type="hidden" name="midx" id="midx" value="${musicList.midx }">
		<input type="hidden" name="idx_fk" id="idx_fk" value="${loginUser.idx }">
	</form>
</div>