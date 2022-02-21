package com.mpmproject.mympm;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mympm.domain.MemberVO;
import com.mympm.domain.NotMemberException;
import com.mympm.service.UserService;
import com.mympm.util.CommonUtil;

@Controller
public class LoginController {
	
	private static Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Inject
	private UserService userService;
	
	//@Inject
	//private CommonUtil util;
	
	@RequestMapping("/login")
	public String loginPage() {
		return "login/login";
	}
	
	@RequestMapping("/signup")
	public String signupPage() {
		return "login/signup";
	}
	
//	@RequestMapping("/login/idCheckPop")
//	public void idCheckPop() {
//	}
	
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
		//logger.info("loginUser={}", loginUser); //테스트코드
		
		return "redirect:../mympm";
	}
	
	@RequestMapping("/signupEnd")
	public String signupEnd(Model m,
			HttpSession session,
			HttpServletResponse response,
			@ModelAttribute("user") MemberVO user) throws NotMemberException, IOException {
		logger.info("user={}", user);
//		if(user.getUserid().isEmpty()||user.getPwd().isEmpty()) {
//			return "redirect:../mympm";
//		}
		//MemberVO loginUser = userService.loginCheck(user);
		int n = userService.insertMember(user);
		logger.info(n+"");
		
		//logger.info("loginUser={}", loginUser); //테스트코드
		
//		String msg = "";
//		String loc = "";
//		msg = (n>0)? "회원가입 성공" : "회원가입 실패";
//		loc = (n>0)? "redirect:login":"javascript:history.back()";
		
		return "redirect:login";
//		return util.addMsgLoc(m, msg, loc);
	}
	
//	@RequestMapping("/idCheckPopEnd")
//	public String idCheckPopEnd(HttpSession session, 
//			@ModelAttribute("user") MemberVO user) throws NotMemberException {
//		//logger.info("idCheckPopEnd.......");
//		
//		boolean n = userService.idCheck(user.getUserid());
//		
//		session.setAttribute("isIdCheck", n);
//		
//		return "redirect:login/idCheckPop";
//	}
	
	@ResponseBody
	@RequestMapping("/idCheck")
	public int idCheck(String userid) throws Exception {
		//logger.info("idCheck......userid={}", userid);
		int result = userService.idCheck(userid);
		
		return result;
	}
	
	@RequestMapping(value="/logout")
    public String logout(HttpServletRequest request) throws Exception{
        
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:../mympm";
    }
	
	@ExceptionHandler(NotMemberException.class)
	public String excepitonHandler(Exception ex) {
		
		return "common/errorAlert";
	}
}
