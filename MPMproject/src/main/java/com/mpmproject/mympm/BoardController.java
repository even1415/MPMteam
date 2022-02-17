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
import org.springframework.web.bind.annotation.PathVariable;
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
	//커뮤니티 글 목록 페이지
	@GetMapping("/board/communityList")
	public String communityListPage(Model m) {
		List<CommunityVO> ctreadList=ctService.ctreadList();
		
		m.addAttribute("ctreadList", ctreadList);
		
		return "board/communityList";
	}
	//커뮤니티 글 상세 페이지
	@GetMapping("/board/communityView/{idx}")
	public String communityViewPage(Model m,@PathVariable int idx) {
		logger.info("idx={}", idx);
		CommunityVO ctvo=this.ctService.selectCommunityByIdx(idx);
		m.addAttribute("ct",ctvo);
		return "board/communityView";
	}
	//커뮤니티 글 쓰기 페이지
	@GetMapping("/user/communityWrite")
	public String communityWritePage() {
		logger.info("");
		return "user/communityWrite";
	}
	//커뮤니티 글 쓰기 작동 페이지
	@PostMapping("/user/CommunityWriteEnd")
	public String communityWriteEndPage(@ModelAttribute CommunityVO ctvo) {
		logger.info("ctvo={}", ctvo);
		ctvo.setCt_writer("changsu");
		int n = ctService.ctwriterinsert(ctvo);
		logger.info("n={}", n);
		return "board/communityList";
	}
	
	
	
	
}
