<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/base.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/MPMteam_boardWrite.css">
<script src="${pageContext.request.contextPath}/resources/js/ckeditor/ckeditor.js"></script>
<c:import url="/common/top"/>
<div class="container" style="margin-top:120px">
	<section style="height:80%;padding-top:40px;background-color:#fff;height:100%;" role="main">

<form name="bf" action="CommunityWriteEnd" method="post">

<div class="text_inp_wrap" style="height:100%;">
	<div class="subject">
		<textarea name="ct_title" class="sbj" rows="1" maxlength="100" placeholder="제목을 입력해 주세요" autofocus></textarea>
	</div>
	
	<textarea name="ct_content" class="editor_wrap" rows="10" cols="80" style="padding-top:20px;"></textarea> 
    <div style="padding-top : 15px; text-align:right">
		 <button type="submit" class="btn btn-success">글쓰기</button>   
		 <button type="reset" class="btn btn-danger">다시쓰기</button>   
    </div>
</div>
</form>
</section>
</div>

<script>
	CKEDITOR.config.resize_enabled = false
	CKEDITOR.replace('ct_content',{
		language : 'ko',
		uiColor : '#CCEAEE',
		width : '100%',
		height : '400',
		allowedContent:true, 
	    filebrowserUploadUrl : '${pageContext.request.contextPath}/admin/boardWriteEnd'
	}) 
	$('.btn-primary').click(function(){
		history.back(-2)
	}) 
	
	
</script>
<c:import url="/common/foot"/>