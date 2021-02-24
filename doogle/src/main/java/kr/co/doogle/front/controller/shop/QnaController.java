package kr.co.doogle.front.controller.shop;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.doogle.dto.QnaDTO;
import kr.co.doogle.mapper.QnaMapper;
import net.webjjang.util.PageObject;

@Controller
public class QnaController {
	
	@Autowired
	private QnaMapper qnaMapper;
	
//  1:1 문의 list
	@RequestMapping("/shop/qna")
	public String qna(Model model,PageObject pageObject) {
		pageObject.setTotalRow(qnaMapper.getRow(pageObject));
		List<QnaDTO> list = qnaMapper.getAll(pageObject);
		model.addAttribute("list",list);
		return "/front/shop/qna/qna";
	}
//	1:1문의 view
	@RequestMapping("/shop/qna_register")
	public String qna_register(Model model) {
		model.addAttribute("edit","edit");
		model.addAttribute("url","/qna_register");
		return "/front/shop/qna/qna_register";
	}
	
	@RequestMapping("/shop/qna_register_ok")
	public String qna_register_ok(QnaDTO dto) {
		qnaMapper.insert(dto);
		return "redirect:/shop/qna";
	}
	
	@RequestMapping("/shop/qnaDelete")
	public String questionDelete(int qnno) {
		System.out.println(qnno);
		qnaMapper.delete(qnno);
		return "redirect:/shop/qna";
	}
	
	@RequestMapping("/shop/qnaUpdate")
	public String qnaUpdate(QnaDTO dto,Model model,int qnno) {
		System.out.println(qnno);
		
		return "/front/shop/qna/qnaUpdate";
	}
}
