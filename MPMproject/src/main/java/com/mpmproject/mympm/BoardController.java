package com.mpmproject.mympm;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {
		
	Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	
	@RequestMapping("/boardList")
	public String boardListPage() {
		return "board/noticeList";
	}
	
}
