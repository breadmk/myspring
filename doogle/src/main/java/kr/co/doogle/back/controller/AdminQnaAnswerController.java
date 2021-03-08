package kr.co.doogle.back.controller;

import static org.hamcrest.CoreMatchers.nullValue;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.doogle.dto.QnaDTO;
import kr.co.doogle.dto.Qna_AnswerDTO;
import kr.co.doogle.mapper.QnaAnswerMapper;
import kr.co.doogle.paging.Paging;

@Controller
public class AdminQnaAnswerController {
	
	@Autowired
	Paging paging;
	
	@Autowired
	QnaAnswerMapper qnaAnswerMapper;
	
	@RequestMapping("/admin/qnaAnswer")
	public String qnaAnswer(Model model,HttpServletRequest request,QnaDTO dto) {
		
		ArrayList<Integer> qnnoList = qnaAnswerMapper.getQnno();
		int page = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
		if(dto.getCtno()==null) {
			paging.setPaging(page, qnaAnswerMapper.getTotal(null, null), "/admin/qnaAnswer");
			model.addAttribute("list",qnaAnswerMapper.getAll(paging.getStartRow(),paging.getViewCnt(),null,null));
		}else {
			paging.setPaging(page, qnaAnswerMapper.getTotal("where ctno =#{ctno}",dto.getCtno()), "/admin/qnaAnswer?ctno="+dto.getCtno());
			model.addAttribute("list",qnaAnswerMapper.getAll(paging.getStartRow(), paging.getViewCnt(), "where ctno = #{ctno}", dto.getCtno()));
		}
		model.addAttribute("ctnonum",qnnoList);
		model.addAttribute("idx", paging.getStartRow());
		model.addAttribute("ctno",dto.getCtno() != null ? dto.getCtno(): null);
		model.addAttribute("url","/admin/qnaAnswer");
		model.addAttribute("paging",paging.getPageHtml());
		
		return "back/qnaAnswer/list";
	}
	
	@RequestMapping("/admin/quaAnswerWrite")
	public String quaAnswerWrite(HttpServletRequest request,Model model) {
		int qnno = Integer.parseInt(request.getParameter("no"));
		QnaDTO dto = qnaAnswerMapper.getOne(qnno);
		model.addAttribute("dto",dto);
		model.addAttribute("edit","edit");
		model.addAttribute("url","/admin/quaAnswerWrite");
		return "back/qnaAnswer/qnaAnswerWrite";
	}

	@RequestMapping("/admin/qnaAnswerWriteOk")
	public String qnaAnswerWriteOk(Qna_AnswerDTO dto) {
		qnaAnswerMapper.insert(dto);
		return "redirect:/admin/qnaAnswer";
	}
}


















