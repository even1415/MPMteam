package com.mpmproject.mympm;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mympm.domain.CommunityVO;
import com.mympm.service.CommunitySerivce;

@Controller
public class BoardController {
		
	@Inject
	private CommunitySerivce ctService;
	
	Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	
	@RequestMapping("/board/boardList")
	public String boardListPage(HttpSession ses) {
		
		
		return "board/noticeList";
	}
	
	@GetMapping("/board/communityList")
	public String communityListPage(Model m) {
		List<CommunityVO> ctreadList=ctService.ctreadList();
		
		m.addAttribute("ctreadList", ctreadList);
		
		return "board/communityList";
	}
	
	@GetMapping("/user/communityWrite")
	public String communityWritePage() {
		logger.info("");
		return "user/communityWrite";
	}
	
	@PostMapping("/user/CommunityWriteEnd")
	public String communityWriteEndPage(@ModelAttribute CommunityVO ctvo) {
		logger.info("ctvo={}", ctvo);
		ctvo.setCt_writer("changsu");
		int n = ctService.ctwriterinsert(ctvo);
		logger.info("n={}", n);
		return "board/communityList";
	}
	
	@PostMapping("/board/communityView")
	public String communityViewPage(@ModelAttribute CommunityVO ctvo) {
		return "board/communityView";
	}
	
	
	
}
