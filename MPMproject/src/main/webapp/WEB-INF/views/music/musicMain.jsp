<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="myctx" value="${pageContext.request.contextPath}"
	scope="session" />
<link rel="stylesheet" type="text/css"
	href="${myctx}/resources/css/MPMteam_MusicMain.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<c:import url="/common/top" />
<div class="container">
	<table class="table">
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회수</th>
			<th colspan="2">비고</th>
			<!-- 기능구현 할 때 회원번호가 일치하는 유저만 보이게 구현하기  -->
		</tr>
		<tr>
			<c:if test="${musicArr eq null or empty musicArr}">
				<tr>
					<td colspan="5"><b>게시글이 없습니다</b></td>
				</tr>
			</c:if>
			<c:if test="${musicArr ne null and not empty musicArr}">
				<c:forEach var="music" items="${musicArr }">
					<tr>
						<!-- 기능구현 할 때 음원번호를 파라미터로-->
						<td onclick="music('${music.midx }','${loginUser}')">${music.mtitle }</td>
						<td onclick="music('${music.midx }','${loginUser}')">${music.nickname }</td>
						<td onclick="music('${music.midx }','${loginUser}')">${music.mdate }</td>
						<td onclick="music('${music.midx }','${loginUser}')">${music.mreadnum }</td>
						<td>
							<c:if test="${loginUser.idx eq music.idx_fk }">
							<a href="javascript:void(0);" onclick="musicEdit('${music.midx }')">수정</a>
							<!-- 기능구현 할 때 회원번호가 일치하는 유저만 보이게 구현하기, 회원번호와 음원번호를 파라미터로  -->
							&nbsp; <a href="javascript:void(0);" onclick="musicDel('${music.midx }')">삭제</a>
							<!-- 기능구현 할 때 로그인하면 보이게 구현하기  -->
							</c:if>
						</td>
					</tr>
				</c:forEach>
			</c:if>
		<tr>
			<td colspan="6">
				${pageNavi}
			</td>
		</tr>
	</table>
	<button class="btn" onclick="musicInsert()">음원 등록</button>
	<form name="mF">
		<input type="hidden" name="midx" id="midx">
		<input type="hidden" name="loginUser" id="loginUser">
	</form>
</div>
<c:import url="/common/foot" />
<script>
	function musicInsert() {
		location.href = "${myctx}/music/musicInsert";
	}
	function musicEdit(midx) {
		mF.midx.value=midx;
		mF.method="post";
		mF.action="${myctx}/music/musicEdit";
		mF.submit();
	}
	function musicDel(midx) {
		mF.midx.value=midx;
		mF.method="post";
		mF.action="${myctx}/music/musicDelete";
		mF.submit();
	}
	function musicPlay() {
		alert('음악 재생');
	}
	function music(midx,loginUser) {
		mF.midx.value=midx;
		mF.loginUser.value=loginUser;
		mF.method="post";
		mF.action="${myctx}/music/music";
		mF.submit();
	}
</script>