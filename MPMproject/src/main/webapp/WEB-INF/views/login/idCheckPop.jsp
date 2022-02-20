<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type=text/css href="${pageContext.request.contextPath}/resources/css/MPMteam_idCheckPop.css">

<!DOCTYPE html>
<html>

<script>
	$('#idcheckinsert').click(function(e){
	  	e.preventDefault();
	});
</script>

<head>
<meta charset="UTF-8">
<title>아이디 중복확인 페이지</title>
</head>
<body>
	<h2 id="idchecktitle">=====아이디 중복확인=====</h2>

	<%-- <form name="idCheckF" action="${pageContext.request.contextPath}/idCheckPopEnd" method="post"> --%>
	<div>
	<form name="idCheckF" action="${pageContext.request.contextPath}/idCheckPopEnd" method="post">
		<table id="idCheckTable">	
			<tr>
				<td class="col-md-8">
					<input type="text" name="checkid" id="checkid" class="checkid" placeholder="여기에 아이디 입력" required>
				</td>
				<td id="inserttd">
					<button id="idcheckstart">중복확인</button>
				</td>
			</tr>
			<tr>
				<td id="printtd" colspan="2">
					<span id="NullidCheckMsg">생성 가능한 아이디입니다.</span>
					<span id="IsidCheckMsg">이미 존재하는 아이디입니다.</span>
					<span id="BaseidCheckMsg">이곳에서 아이디 중복여부 확인</span>
				</td>
				
			</tr>
			<tr>
				<td id="inserttd" colspan="2">
					<button id="idcheckinsert">아이디 생성</button>
				</td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>