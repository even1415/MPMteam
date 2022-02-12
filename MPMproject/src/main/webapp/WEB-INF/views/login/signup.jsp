<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type=text/css href="${pageContext.request.contextPath}/resources/css/MPMteam_Signup.css">
<c:import url="/common/top"/>

<div class="section">
     <div class="container">
              <table id="signupform">
                        <tr>
                            <td colspan="2" id="signuptext">Sign Up</td>
                        </tr>
                        <tr>
                            <td id="formtext">아이디(ID)</td>
                            <td class="col-md-8">
                                <input type="text" id="inputid" class="inputid" placeholder="아이디 입력">
                                <button id="idcheckbtn">중복체크</button>
                            </td>
                        </tr>
                        <tr>
                            <td id="formtext">비밀번호(Password)</td>
                            <td class="col-md-8">
                                <input type="password" id="inputpwd" class="inputpwd" placeholder="비밀번호 입력">
                            </td>
                        </tr>
                        <tr>
                            <td id="formtext">비밀번호(Password) 확인</td>
                            <td class="col-md-8">
                                <input type="password" id="inputpwdrepeat" class="inputpwdrepeat" placeholder="비밀번호 재입력">
                                <span id="issamepwd" class="issamepwd"><b>비밀번호 불일치</b></span>
                            </td>
                        </tr>
                        <tr>
                            <td id="formtext">별명(Nickname)</td>
                            <td class="col-md-8">
                                <input type="text" id="inputnickname" class="inputnickname" placeholder="닉네임 입력">
                            </td>
                        </tr>
                        <tr>
                            <td id="formtext">이메일(E-Mail)</td>
                            <td class="col-md-8">
                                <input type="text" id="inputemail" class="inputemail" placeholder="이메일 입력">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" id="submit">
                                <button id="signupbtn">회원가입</button>
                                <button id="resetbtn">다시쓰기</button>
                            </td>
                        </tr>
             </table>
     </div>
</div>

<c:import url="/common/foot"/>