<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type=text/css href="${pageContext.request.contextPath}/resources/css/MPMteam_Login.css">
<c:import url="/common/top"/>

<script>
$(function(){
	  $('#signupbtn').click(function(){
		 	location.href = '../login/signup'
	  });
})
</script>

<div class="section">
       <div class="container">
              <table id="loginform">
                    <tr>
                        <td colspan="2" id="logintext">Login</td>
                    </tr>
                    <tr>
                        <td id="formtext">아이디(ID)</td>
                        <td class="col-md-8">
                            <input type="text" id="inputid" class="inputid" placeholder="아이디 입력">
                        </td>
                    </tr>
                    <tr>
                        <td id="formtext">비밀번호(Password)</td>
                        <td class="col-md-8">
                            <input type="password" id="inputpwd" class="inputpwd" placeholder="비밀번호 입력">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="checkbox" id="saveid" name="xxx" value="0">
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
       </div>
</div>

<c:import url="/common/foot"/>