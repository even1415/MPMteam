<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type=text/css href="${pageContext.request.contextPath}/resources/css/MPMteam_Login.css">
<c:import url="/common/top"/>

<script>
$(function(){
	  $('#signupbtn').click(function(e){
		  	e.preventDefault();
		 	location.href = '${pageContext.request.contextPath}/signup'
	  });
	  /* $('#loginbtn').click(function(){
		 	location.href = '${pageContext.request.contextPath}/loginEnd'
	  }); */
})
</script>

<div class="section">
       <div class="container">
       <form name="loginF" action="${pageContext.request.contextPath}/loginEnd" method="post">
              <table id="loginform">
                    <tr>
                        <td colspan="2" id="logintext">Login</td>
                    </tr>
                    <tr>
                        <td id="formtext">아이디(ID)</td>
                        <td class="col-md-8">
                            <input type="text" name="userid" id="userid" class="userid" value="${cookie.uid.value}" placeholder="아이디 입력" required>
                        </td>
                    </tr>
                    <tr>
                        <td id="formtext">비밀번호(Password)</td>
                        <td class="col-md-8">
                            <input type="password" name="pwd" id="pwd" class="pwd" placeholder="비밀번호 입력" required>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="checkbox" name="saveId" id="saveId">
                            <span>아이디 저장</span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" id="submit">
                            <button id="loginbtn">로그인</button>
                            <button id="signupbtn">회원가입</button>
                        </td>
                    </tr>
             </table>
       </form>      
       </div>
</div>

<c:import url="/common/foot"/>