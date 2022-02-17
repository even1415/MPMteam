<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>MPM</title>
<!-- <base href="/"> -->
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<link rel="icon" href="/favicon.ico">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link
   href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
   rel="stylesheet" type="text/css">
</head>
<body>
	<header id="header" role="banner">
		<div class="header_inner">
			<h1 class="flo_bi">
				<a href="${pageContext.request.contextPath}/"><span class="ir">MPM</span></a>
			</h1>
			<nav role="navigation" class="nav_gnb">
				<ul>
					<li menu="[object Object]"><a href="${pageContext.request.contextPath}/board/noticeList" class="">
							공지사항 </a></li>
					<li menu="[object Object]"><a href="${pageContext.request.contextPath}/board/communityList" class="">
							커뮤니티</a></li>
					<li menu="[object Object]"><a href="" class="">
							음원차트</a></li>
				</ul>
			</nav>
			<fieldset class="flo_search">
			
				<legend>FLO 검색</legend>

				<input id="searchKeywordInput" type="text" placeholder="검색어를 입력하세요."
					autocomplete="new-password" spellcheck="false" autocorrect="off"
					autocapitalize="off" class="iptxt">
				<!---->
				<div class="layer_style search_suggestion_w" style="display: none;">
					<h3 class="hidden">검색제안</h3>
					<!---->
				</div>
			</fieldset>
			<div role="navigation" class="snb_w">
				<ul>
					<c:if test="${loginUser!=null}">
					<li><a href="#" class="">${loginUser.nickname}</a>님 환영합니다.</li>
					<li><a href="${pageContext.request.contextPath}/login" class="">로그아웃</a></li>
					</c:if>
					<c:if test="${loginUser==null}">
					<li><a href="#" class=""></a>로그인이 필요합니다.</li>
					<li><a href="${pageContext.request.contextPath}/login" class="">로그인</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</header>