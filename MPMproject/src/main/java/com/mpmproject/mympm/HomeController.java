package com.mpmproject.mympm;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("common/top")
	public void topView() {}
	
	@RequestMapping("common/foot")
	public void footView() {}
	
	@RequestMapping("common/carousel")
	public void carouselView() {}

	@RequestMapping(value = "/")
	public String facadeView() {
		return "home";
	}
}
