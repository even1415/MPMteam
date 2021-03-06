<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="myctx" value="${pageContext.request.contextPath}" scope="session" />
<link rel="stylesheet" type="text/css" href="${myctx}/resources/css/MPMteam_MusicEdit.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<c:import url="/common/top" />
<div class="container">
	<form action="musicEditEnd" method="post" name="musicEditEnd" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<th>제목</th>
				<td id="t1"><input type="text" name="mtitle" id="mtitle"
					maxlength="25" value="${editArr.mtitle }" required></td>
			</tr>
			<tr>
				<th>가수</th>
				<td id="t1"><input type="text" name="martist" id="martist"
					required maxlength="20" value="${editArr.martist }" required></td>
			</tr>
			<tr>
				<th>Comment</th>
				<td id="t1">
					<textarea name="mcoment" id="mcoment" rows="4"
					cols="60" maxlength="100" required>${editArr.mcoment }</textarea>
				</td>
			</tr>
			<tr>
				<th>가사</th>
				<td id="t1">
					<textarea name="mlyrics" id="mlyrics" rows="10"
						cols="60" maxlength="2000" required>${editArr.mlyrics }</textarea>
				</td>
			</tr>
			<tr>
				<th>음원 파일</th>
				<td>
					<span>${editArr.filename }</span><br>
					<input type="file" name="mfilename" id="mfilename" required>
				</td>
			</tr>
			<tr>
				<th>앨범 사진</th>	
				<td>
					<span>${editArr.album }</span><br>
					<input type="file" name="mafilename" id="mafilename" required>
				</td>
			</tr>
		</table>
		<input type="hidden" id="midx" name="midx" value="${editArr.midx }"> <!-- 파라미터로 넘겨준 midx를 value에 넣어주기 -->
		<input class="btn" type="submit" value="수정">
	</form>
</div>
<c:import url="/common/foot" />