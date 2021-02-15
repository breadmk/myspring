package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.board.service.BoardService;
import org.zerock.board.vo.BoardVO;

import net.webjjang.util.PageObject;

@Controller
@RequestMapping("/board")
//@AllArgsConstructor
public class BoardController {
	
	private final String MODULE  = "board";
	@Autowired
	@Qualifier("boardServiceImpl")
	private BoardService service;
	
	@RequestMapping("/list.do")
	//pageObject에서 데이터가 넘어오지 않으면 기본페이지는 1, 페이지당 데이터의 갯수는 10으로 한다.
	public String list(Model model,PageObject pageObject) {
		//model에 데이터를 담으면 request에 데이터가 담기게 된다.
		//jsp 에서 꺼내 쓸때는 jstl 로 사용한다. ${list} ==${requestScope.list}
		model.addAttribute("list",service.list(pageObject));
		// 하단 부분의 페이지네이션 처리를 위해서 pageObject가 꼭 필요하다.
		// 2페이지 이상이 되면 페이지네이션을 표시한다.
		model.addAttribute("pageObject",pageObject);
		return MODULE + "/list";
	}
	
	@RequestMapping("/view.do")
	public String view(Model model,int no, int inc) {
		
		model.addAttribute("vo",service.view(no, inc));
		return MODULE + "/view";
	}
	
	@GetMapping("/write.do")
	public String writeForm() {
		return MODULE + "/write";
	}
	
	@PostMapping("/write.do")
	public String write(BoardVO vo) {
		service.write(vo);
		return "redirect:list.do";
	}
	
	@GetMapping("update.do")
	public String updateForm(int no,Model model) {
		//데이터를 가져오기 위해 view() 호출 :inc=0
		model.addAttribute("vo",service.view(no,0));
		return MODULE + "/update";
	}
	
	@PostMapping("update.do")
	public String update(BoardVO vo) {
		service.update(vo);
		return "redirect:view.do?no="+vo.getNo()+"&inc=0";
	}
	
	@PostMapping("/delete.do")
	public String delete(BoardVO vo) {
		service.delete(vo);
		return "redirect:list.do";
	}
}
