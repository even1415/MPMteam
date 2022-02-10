<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type=text/css href="${pageContext.request.contextPath}/resources/css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<script>
$(function(){
	  $('#notice').click(function(){
		 	location.href = 'board/boardList'
	  });
	  
	  $('#login').click(function(){
		 	location.href = 'login/login'
	  });
})
</script>
<body>
    <div class="wrap">
        <!--header----------------------------------------------------->
        <header class="header">
            <div class="logo">
                <a href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/resources/img/logo.png"></a>
            </div>
            <nav class="nav">
                <div class="notice">
                    <a href="#" id="notice">공지사항</a>
                </div>
                <div class="music">
                    <a href="#">음원차트</a>
                </div>
                <div class="community">
                    <a href="#">커뮤니티</a>
                </div>
            </nav>
            <div class="logintag">
                <span><a href="#">조연후</a>&nbsp;<span>님 환영합니다.</span>
            </div>
            <div class="login">
                <button class="login-btn" id="login">로그인</button>
            </div>
       </header>