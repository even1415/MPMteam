<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type=text/css href="${pageContext.request.contextPath}/resources/css/MPMteam_Mypage.css">
<c:import url="/common/top"/>
<script>
$(function(){
	  $('#signupbtn').click(function(){
		 	if($('#pwd').val()!=$('#pwdrepeat').val()){
		 		alert("비밀번호와 비밀번호확인을 동일하게 입력해주세요.");
		 		return false;
		 	}
			if($('#pwd').val()==''){
		 		alert("수정할 비밀번호를 입력해주세요.");
		 		return false;
		 	}
		 	if($('#nickname').val()==''){
		 		alert("수정할 닉네임을 입력해주세요.");
		 		return false;
		 	}
		 	if($('#email').val()==''){
		 		alert("수정할  이메일을 입력해주세요.");
		 		return false;
		 	}
		 	alert("수정 완료")
		 	
	  });
});
function goDel(idx){
	alert(idx);
	let yn=confirm(" 정말 삭제할까요?")
	if(yn){
		location.href="UserDel?idx="+idx;
	}
}
</script>
<div class="section">
     <div class="container">
          <form name="loginF" action="edit" method="post">
              <table id="signupform">
                        <tr>
                            <td colspan="2" id="signuptext">마이페이지${mem.idx }<br>
                           </td>
                            
                        </tr>
                        <tr>
                            <td id="formtext">아이디(ID)</td>
                            <td class="col-md-8">
                                <input type="text" name="userid" id="userid" class="userid" placeholder="${mem.userid}" readonly>
                                 <span id="issamepwd" class="issamepwd" style="text-align:right">※ 수정불가</span>
                            </td>
                        </tr>
                        <tr>
                            <td id="formtext">비밀번호(Password)</td>
                            <td class="col-md-8">
                                <input type="password" name="pwd" id="pwd" class="pwd" placeholder="${mem.pwd}">
                                 
                            </td>
                        </tr>
                        <tr>
                            <td id="formtext">비밀번호(Password) 확인</td>
                            <td class="col-md-8">
                                <input type="password" id="pwdrepeat" class="pwdrepeat" placeholder="${mem.pwd}">
                             
                            </td>
                        </tr>
                        <tr>
                            <td id="formtext">별명(Nickname)</td>
                            <td class="col-md-8">
                                <input type="text" name="nickname" id="nickname" class="nickname" value="${mem.nickname}">
                            </td>
                        </tr>
                        <tr>
                            <td id="formtext">이메일(E-Mail)</td>
                            <td class="col-md-8">
                                <input type="text" name="email" id="email" class="email" value="${mem.email}">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" id="submit">
                               <input type="hidden" name="idx" value="${mem.idx}">
                               <button id="signupbtn">수정하기</button>
                                <button id="resetbtn" type="reset">다시쓰기</button>
                                
                            </td>
                        </tr>
             </table>
          </form>
          <div class="delete">
          <button id="deletebtn" onclick="javascript:goDel('${mem.idx}')" >회원 탈퇴</button>
          </div>
     </div>
</div>
<c:import url="/common/foot"/>