<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="myctx" value="${pageContext.request.contextPath}" scope="session" />
<link rel="stylesheet" type="text/css" href="${myctx}/resources/css/MPMteam_MusicMain.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<c:import url="/common/top"/>
<div class="container">
	<table class="table">
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회수</th>
			<th colspan="2">비고</th> <!-- 기능구현 할 때 회원번호가 일치하는 유저만 보이게 구현하기  -->
		</tr>
		<tr> 
			<!-- 기능구현 할 때 음원번호를 파라미터로-->
			<td onclick="music()">연후가 부른 노래</td>
			<td onclick="music()">조연후</td>
			<td onclick="music()">2022-02-09</td>
			<td onclick="music()">100000000000</td>
			<td>
				<a href="javascript:void(0);" onclick="musicEdit()">수정</a>  <!-- 기능구현 할 때 회원번호가 일치하는 유저만 보이게 구현하기, 회원번호와 음원번호를 파라미터로  -->
				&nbsp;
				<a href="javascript:void(0);" onclick="musicDel()">삭제</a> <!-- 기능구현 할 때 로그인하면 보이게 구현하기  -->
			</td>
			<td>
				<button class="btn" onclick="musicPlay()">▷</button>
			</td>
		</tr>
	</table>
	<button class="btn" onclick="musicInsert()">음원 등록</button>
</div>
<c:import url="/common/foot"/>
<script>
	function musicInsert() {
		location.href="${myctx}/music/musicInsert";
	}
	function musicEdit() {
		location.href="${myctx}/music/musicEdit";
	}
	function musicDel() {
		alert('삭제');
	}
	function musicPlay() {
		alert('음악 재생');
	}
	function music() {
		location.href="${myctx}/music/music";
	}
</script>