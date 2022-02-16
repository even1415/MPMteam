package com.mpmproject.mympm;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mympm.domain.MemberVO;
import com.mympm.domain.NotMemberException;
import com.mympm.service.UserService;

@Controller
public class LoginController {
	
	private static Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Inject
	private UserService userService;
	
	@RequestMapping("/login")
	public String loginPage() {
		return "login/login";
	}
	
	@RequestMapping("/signup")
	public String signupPage() {
		return "login/signup";
	}
	
	@RequestMapping("/loginEnd")
	public String loginEnd(HttpSession session, 
			HttpServletResponse res,
			@ModelAttribute("user") MemberVO user) throws NotMemberException {
		logger.info("user={}", user);
		if(user.getUserid().isEmpty()||user.getPwd().isEmpty()) {
			return "redirect:../mympm";
		}
		MemberVO loginUser = userService.loginCheck(user);
		if(loginUser!=null) {
			//로그인 인증을 받았다면 세션에 저장
			session.setAttribute("loginUser", loginUser);
			Cookie ck = new Cookie("uid", loginUser.getUserid());
			if(user.isSaveId()) {
				ck.setMaxAge(7*24*60*60); //7일간 쿠키 유지
			}
			else {
				ck.setMaxAge(0); //쿠키 제거
			}
			ck.setPath("/");
			res.addCookie(ck);
		}
		
		return "redirect:../mympm";
	}
}
