<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="myctx" value="${pageContext.request.contextPath}" scope="session" />
<link rel="stylesheet" type="text/css" href="${myctx}/resources/css/MPMteam_MusicInsert.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<c:import url="/common/top" />
<div class="container">
<form action="musicInsertEnd" method="post" name="musicInsert">
		<table class="table">
			<tr>
				<th>제목</th>
				<td><input type="text" name="mtitle" id="mtitle"
					required maxlength="80"></td>
			</tr>
			<tr>
				<th>가수</th>
				<td><input type="text" name="martist" id="martist"
					required maxlength="40"></td>
			</tr>
			<tr>
				<th>Comment</th>
				<td>
					<textarea name="mcoment" id="mcoment" rows="4"
					cols="60" required maxlength="200"></textarea>
				</td>
			</tr>
			<tr>
				<th>가사</th>
				<td>
					<textarea name="mlyrics" id="mlyrics" rows="10"
						cols="60" required maxlength="2000"></textarea>
				</td>
			</tr>
			<tr>
				<th>음원 파일</th>
				<td><input type="file" name="filename" id="filename" required></td>
			</tr>
			<tr>
				<th>앨범 사진</th>
				<td><input type="file" name="album" id="album" required></td>
			</tr>
		</table>
		<input class="btn" type="submit" value="음원 등록">
	</form>
</div>
<c:import url="/common/foot" />