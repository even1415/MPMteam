package com.mpmproject.mympm;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mympm.domain.M_ReviewVO;
import com.mympm.domain.MusicVO;
import com.mympm.service.M_ReviewService;
import com.mympm.service.MusicService;
import com.mympm.service.UserService;

@Controller
@RequestMapping("/mreview")
public class MReviewController {
	
	private static final Logger logger = LoggerFactory.getLogger(MReviewController.class);
	
	@Inject
	private M_ReviewService m_reviewService;
	@Inject
	private MusicService musicService;
	@Inject
	private UserService userService;
	
	@RequestMapping("/mreviewInsert")
	public String mreviewInsert() {
		logger.info("mreviewInsert");
		return "mreview/mreviewInsert";
	}
	
	@RequestMapping("/mreviewList")
	public String mreviewList(Model m,@ModelAttribute("m_review") M_ReviewVO m_review) {
		logger.info("mreviewList");
		if(m_review == null) {
			return "redirect:musicMain";
		}
		MusicVO music = this.musicService.Music(m_review.getMidx());
		m_review.setIdx_fk(music.getIdx_fk());
		List<M_ReviewVO> listmusic = this.m_reviewService.listMusic(m_review);
		m.addAttribute("listmusic",listmusic);
		return "mreview/mreviewList";
	}
	
}