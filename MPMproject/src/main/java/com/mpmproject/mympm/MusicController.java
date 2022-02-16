package com.mpmproject.mympm;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/music")
public class MusicController {
	private static final Logger logger = LoggerFactory.getLogger(MusicController.class);

	@RequestMapping("/musicMain")
	public String musicMain() {
		logger.info("musicMain");
		return "music/musicMain";
	}
	
	@RequestMapping("/musicInsert")
	public String musicInsert() {
		logger.info("musicInsert");
		return "music/musicInsert";
	}
	
	@RequestMapping("/musicEdit")
	public String musicEdit() {
		logger.info("music/musicEdit");
		return "music/musicEdit";
	}
	
	@RequestMapping("/music")
	public String music() {
		logger.info("music/music");
		return "music/music";
	}
	
	//음원 댓글 매핑-------------------------------------------------------------
	@RequestMapping("/mreviewInsert")
	public void mreviewInsertView() {}
	
	@RequestMapping("/mreviewList")
	public void mreviewListView() {}
}