package org.zerock.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.board.service.BoardService;
import org.zerock.image.service.ImageService;

import net.webjjang.util.PageObject;

@Controller
@RequestMapping("/main")
public class MainController {
	
	//자동 DI 적용
	@Autowired
	@Qualifier("boardServiceImpl")
	private BoardService boardService;
	@Autowired
	@Qualifier("imageServiceImpl")
	private ImageService imageService;
	
	@RequestMapping("/main.do")
	public String main(Model model) {
		PageObject pageObject = new PageObject(1, 7); // 페이지당 뿌릴 갯수
		model.addAttribute("boardList",boardService.list(pageObject));
		
		pageObject = new PageObject(1,4);
		model.addAttribute("imageList",imageService.list(pageObject));
		return "main/main";
	}
	
	
	
}
