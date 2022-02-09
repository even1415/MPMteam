package com.mpmproject.mympm;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@GetMapping("/boardWrite") 
	public String wirteFormAction() {
		//logger.info("adminController");
		return "admin/boardWrite";
	}
	
}
