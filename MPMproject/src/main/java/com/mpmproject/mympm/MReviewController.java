package com.mpmproject.mympm;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mreview")
public class MReviewController {
	
	private static final Logger logger = LoggerFactory.getLogger(MReviewController.class);
	
	@RequestMapping("/mreviewInsert")
	public String mreviewInsert() {
		logger.info("mreviewInsert");
		return "mreview/mreviewInsert";
	}
	
	@RequestMapping("/mreviewList")
	public String mreviewList() {
		logger.info("mreviewList");
		return "mreview/mreviewList";
	}
}
