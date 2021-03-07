package kr.co.doogle.front.controller.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.doogle.dto.Order_listPaymentProductDTO;
import kr.co.doogle.dto.QnaDTO;
import kr.co.doogle.mapper.QnaMapper;

@Controller
public class QnaController {
	
	@Autowired
	private QnaMapper qnaMapper;
	
//  1:1 문의 list
	@RequestMapping("/shop/qna")
	public String qna(Model model) {
		List<QnaDTO> list = qnaMapper.getAll();
		model.addAttribute("list",list);
		return "/front/shop/qna/qna";
	}
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
	public String qnaUpdate(Model model,int qnno) {
		
		QnaDTO dto = qnaMapper.getOne(qnno); 
		System.out.println(dto);
		model.addAttribute("dto",dto);
		model.addAttribute("edit","edit");
		model.addAttribute("url","/qnaUpdate");
		return "/front/shop/qna/qnaUpdate";
	}
	
	@RequestMapping("/shop/qnaUpdateOk")
	public String qnaUpdateOk(QnaDTO dto) {
		qnaMapper.update(dto);
		return "redirect:/shop/qna";
	}
	
	@RequestMapping("/shop/qnaOrderList")
	public String qnaOrderList(int mno,Model model) {
		List<Order_listPaymentProductDTO> list = qnaMapper.qnaOrderList(111);
		System.out.println(list);
		model.addAttribute("list",list);
		
		return "/front/shop/qna/qnaOrderList";
	}
}
