package kr.co.doogle.back.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminFileController {

	@RequestMapping("/admin/file")
	public String file() {
		return "/back/file/list";
	}

}