<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type=text/css href="${pageContext.request.contextPath}/resources/css/MPMteam_Signup.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<c:import url="/common/top"/>

<div class="section">
     <div class="container">
     <form name="signupF" action="${pageContext.request.contextPath}/signupEnd" method="post">
              <table id="signupform">
                        <tr>
                            <td colspan="2" id="signuptext">Sign Up</td>
                        </tr>
                        <tr>
                            <td id="formtext">아이디(ID)</td>
                            <td class="col-md-8">
                                <input type="text" name="userid" id="userid" class="userid" placeholder="아이디 입력 후 [중복확인] 필수" required>
                                <button id="idcheckbtn" onclick="fn_idCheck();">중복확인</button>
                            </td>
                        </tr>
                        <tr>
                            <td id="formtext">비밀번호(Password)</td>
                            <td class="col-md-8">
                                <input type="password" name="pwd" id="pwd" class="pwd" placeholder="비밀번호 입력" required>
                            </td>
                        </tr>
                        <tr>
                            <td id="formtext">비밀번호(Password) 확인</td>
                            <td class="col-md-8">
                                <input type="password" name="pwdrepeat" id="pwdrepeat" class="pwd" placeholder="비밀번호 재입력" required>
                                <span id="issamepwd-base" class="issamepwd-base"><b>비밀번호 재입력</b></span>
                                <span id="issamepwd-success" class="issamepwd-success"><b>비밀번호 일치</b></span>
                                <span id="issamepwd-fail" class="issamepwd-fail"><b>비밀번호 불일치</b></span>
                            </td>
                        </tr>
                        <tr>
                            <td id="formtext">별명(Nickname)</td>
                            <td class="col-md-8">
                                <input type="text" name="nickname" id="nickname" class="nickname" placeholder="닉네임 입력" required>
                            </td>
                        </tr>
                        <tr>
                            <td id="formtext">이메일(E-Mail)</td>
                            <td class="col-md-8">
                                <input type="text" name="email" id="email" class="email" placeholder="이메일 입력" required>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" id="submit">
                                <button id="signupbtn">회원가입</button>
                                <button id="resetbtn" onclick="resetform()">다시쓰기</button>
                            </td>
                        </tr>
             </table>
     </form>
     </div>
</div>

<c:import url="/common/foot"/>

<script>
let idInputSuccess = false;

$('.pwd').focusout(function () {
    var pwd1 = $("#pwd").val();
    var pwd2 = $("#pwdrepeat").val();

    if ( pwd1 != "" && pwd2 == "" ) {
    	$("#issamepwd-base").css('display', 'inline-block');
    	$("#issamepwd-success").css('display', 'none');
    	$("#issamepwd-fail").css('display', 'none');
    	$("#signupbtn").attr("disabled", true);
    } else if (pwd1 != "" || pwd2 != "") {
        if (pwd1 == pwd2) {
        	$("#issamepwd-base").css('display', 'none');
            $("#issamepwd-success").css('display', 'inline-block');
            $("#issamepwd-fail").css('display', 'none');
            $("#signupbtn").attr("disabled", false);
        } else {
        	$("#issamepwd-base").css('display', 'none');
            $("#issamepwd-success").css('display', 'none');
            $("#issamepwd-fail").css('display', 'inline-block');
            $("#signupbtn").attr("disabled", true);
        }
    }
});

$("#signupbtn").on("click", function(){
	if($("#userid").val()==""){
		alert("아이디를 입력해주세요.");
		$("#userid").focus();
		return false;
	}
	else if(idInputSuccess==false) {
		alert("아이디 중복체크를 완료해주세요.");
		$("#userid").focus();
		return false;
	}
	else if($("#pwd").val()==""){
		alert("비밀번호를 입력해주세요.");
		$("#pwd").focus();
		return false;
	}
	else if($("#pwdrepeat").val()==""){
		alert("비밀번호 확인란을 일치시켜주세요.");
		$("#pwdrepeat").focus();
		return false;
	}
	else if($("#nickname").val()==""){
		alert("닉네임을 입력해주세요.");
		$("#nickname").focus();
		return false;
	}
	else if($("#email").val()==""){
		alert("이메일을 입력해주세요.");
		$("#email").focus();
		return false;
	}
	else {
		alert("회원가입 성공! 입력하신 정보로 로그인해주세요.");
		return true;
	}
});

function fn_idCheck() {
	//alert('fn_idCheck() 메소드 진입');
	$.ajax({
		url : "idCheck",
		type : "POST",
		dataType : "JSON",
		data : {"userid" : $("#userid").val()},
		success : function(data) {
			if(data==1) {
				$("#userid").attr("value", "");
				alert("중복된 아이디입니다.");
				idInputSuccess = false;
			}
			else if(data==0) {
				//$("#userid").attr("value", "Y");
				alert("사용 가능한 아이디입니다.");
				idInputSuccess = true;
			}
		},
		error : function(data) {
			console.log(data);
		}
	});
}

$("#resetbtn").on("click", function(e){
	  e.preventDefault();
});

$("#idcheckbtn").on("click", function(e){
	  e.preventDefault();
});

function resetform() {
	document.getElementById("userid").value ='';
	document.getElementById("pwd").value ='';
	document.getElementById("pwdrepeat").value ='';
	document.getElementById("nickname").value ='';
	document.getElementById("email").value ='';
	
	$("#issamepwd-base").css('display', 'inline-block');
	$("#issamepwd-success").css('display', 'none');
    $("#issamepwd-fail").css('display', 'none');
}
</script>