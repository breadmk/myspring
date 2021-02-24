package kr.co.doogle.front.controller.shop;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.doogle.dto.QnaDTO;
import kr.co.doogle.dto.QuestionDTO;
import kr.co.doogle.mapper.QuestionMapper;
import net.webjjang.util.PageObject;

@Controller
public class QuestionController {
	
	@Autowired
	private QuestionMapper questionMapper;
	
//	자주하는 질문
	@RequestMapping("/shop/questionList")
	public String questionList(Model model,PageObject pageObject,HttpServletRequest request) {
		String no = request.getParameter("no");
		if(no==null) {
			pageObject.setTotalRow(questionMapper.getRow(pageObject));
			List<QuestionDTO> list = questionMapper.getAll(pageObject);
			System.out.println(list);
			model.addAttribute("pageObject",pageObject);
			model.addAttribute("list",list);
		}else if(no.equals("1")) {
			pageObject.setTotalRow(questionMapper.getRow1(pageObject,no));
			List<QuestionDTO> list = questionMapper.getAll_1(no,pageObject);
			model.addAttribute("pageObject",pageObject);
			model.addAttribute("list",list);
		}else if(no.equals("2")) {
			pageObject.setTotalRow(questionMapper.getRow1(pageObject,no));
			List<QuestionDTO> list = questionMapper.getAll_1(no,pageObject);
			model.addAttribute("pageObject",pageObject);
			model.addAttribute("list",list);
		}else if(no.equals("3")) {
			pageObject.setTotalRow(questionMapper.getRow1(pageObject,no));
			List<QuestionDTO> list = questionMapper.getAll_1(no,pageObject);
			model.addAttribute("pageObject",pageObject);
			model.addAttribute("list",list);
		}else if(no.equals("4")) {
			pageObject.setTotalRow(questionMapper.getRow1(pageObject,no));
			List<QuestionDTO> list = questionMapper.getAll_1(no,pageObject);
			model.addAttribute("pageObject",pageObject);
			model.addAttribute("list",list);
		}else if(no.equals("5")) {
			pageObject.setTotalRow(questionMapper.getRow1(pageObject,no));
			List<QuestionDTO> list = questionMapper.getAll_1(no,pageObject);
			model.addAttribute("pageObject",pageObject);
			model.addAttribute("list",list);
		}else if(no.equals("6")) {
			pageObject.setTotalRow(questionMapper.getRow1(pageObject,no));
			List<QuestionDTO> list = questionMapper.getAll_1(no,pageObject);
			model.addAttribute("pageObject",pageObject);
			model.addAttribute("list",list);
		}
		
		return "/front/shop/question/questionList";
	}
//  질문지 작성-1
	@RequestMapping("/shop/questionRegister")
	public String questionRegister(QnaDTO dto,Model model) {
		model.addAttribute("edit","edit");
		model.addAttribute("url","/questionRegister");
		return "/front/shop/question/questionRegister";
	}
//  질문지 작성-2
	@RequestMapping("/shop/questionRegisterOk")
	public String questionRegisterOk(QuestionDTO dto) {
		questionMapper.insert(dto);
		System.out.println(dto.getType());
		return "redirect:/shop/questionList";
	}
//	질문지 수정 -1
	@RequestMapping("/shop/questionUpdate")
	public String questionUpdate(Model model,int qno) {
		QuestionDTO qdto = questionMapper.getOne(qno);
		System.out.println(qdto);
		model.addAttribute("edit","edit");
		model.addAttribute("url","/questionUpdate");
		model.addAttribute("qdto",qdto);
		return "/front/shop/question/questionUpdate";
	}
//	질문지 수정 -2
	@RequestMapping("/shop/questionUpdateOk")
	public String questionUpdateOk(QuestionDTO dto) {
		questionMapper.update(dto);
		return "redirect:/shop/questionList";
		
	}
	
//	질문지 삭제 
	@RequestMapping("/shop/questionDelete")
	public String questionDelete(int qno) {
		questionMapper.delete(qno);
		return "redirect:/shop/questionList";
	}

}
