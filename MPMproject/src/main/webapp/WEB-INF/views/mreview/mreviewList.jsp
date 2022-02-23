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
		<c:if test="${listmusic eq null or empty listmusic}">
			등록된 댓글이 없습니다.
		</c:if>
		<c:if test="${listmusic ne null and not empty listmusic}">
			<c:forEach var="mr" items="${listmusic}">
				[:${mr.nickname}:]&nbsp;${mr.mr_content}&nbsp;[${mr.mr_date}]&nbsp;
				<c:if test="${loginUser.idx eq mr.idx_fk}">
					<a href="javascript:void(0);" onclick="mreviewDelete('${mr.mr_idx }','${mr.midx }')">[삭제]</a>
				</c:if>
				<br>
			</c:forEach>
		</c:if>
	</div>
</div>
<form name="mrf">
	<input type="hidden" name="mr_idx" id="mr_idx" value="">
	<input type="hidden" name="midx" id="midx" value="">
</form>
<script>
	function mreviewDelete(mr_idx,midx) {
		//alert(mr_idx);
		mrf.mr_idx.value=mr_idx;
		mrf.midx.value=midx;
 		mrf.method="post";
		mrf.action="${myctx}/music/mreviewDel";
		mrf.submit();
	}
</script>