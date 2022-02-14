<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="myctx" value="${pageContext.request.contextPath}" scope="session" />
<link rel="stylesheet" type="text/css" href="${myctx}/resources/css/MPMteam_Music.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<c:import url="/common/top" />
<div class="container">
	<table class="table">
		<tr>
			<th>
				<input type="text" name="mtitle" id="mtitle"
				maxlength="80" value="제목" disabled>
			</th>
		</tr>
		<tr>
			<th>
				<input type="text" name="martist" id="martist"
				maxlength="40" value="가수" disabled>

				<input type="text" name="sname" id="sname"
				maxlength="40" value="곡 이름" disabled> <!-- 곡 이름의 name, id는 DB에 filename에서 가져오기 -->
				
				<button class="btn" onclick="musicPlay()">▷</button>
			</th>
		</tr>
		<tr>
			<th>
				<textarea name="mcoment" id="mcoment" rows="4"
				cols="60" maxlength="200" disabled>코멘트</textarea>
			</th>
		</tr>
		<tr>
			<th>
				<textarea name="mlyrics" id="mlyrics" rows="10"
					cols="60" maxlength="2000" disabled>가사</textarea>
			</th>
		</tr>
		<tr>
			<th>
				<a href="javascript:void(0);" onclick="goDown('')">파일명</a> <!-- 물리적 파일이름을 파라미터로 넘기기 -->
				<label>[파일사이즈 bytes]</label>
			</th>
		</tr>
		<tr>
			<th>
				<c:import url="/mreview/mreviewInsert"/><br>
				<c:import url="/mreview/mreviewList"/>
			</th>
		</tr>
	</table>
	
	
	<!-- ----------------------------------- -->
	<form name="fileF" action="" method="post">
		<input type="text" name="filename" value="물리적 파일명"><!-- 물리적 파일명 -->
		<input type="text" name="originFilename" value="원본파일명"><!-- 원본파일명 -->
	</form>
	<!-- ----------------------------------- -->
</div>
<c:import url="/common/foot" />
<script>
	function musicPlay() {
		alert('음악 재생');
	}
	function goDown(fname) {
		//fileF.submit();
		alert('다운 로드');
	}
</script>