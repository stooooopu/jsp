package com.study.jsp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// RestController가 아님
@Controller
public class HomeController {

	@GetMapping("/home")
	public String loadHomePage() {
		return "index"; // jsp파일명으로 리턴
	}
}
