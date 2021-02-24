package kr.co.doogle.front.controller.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.doogle.dto.NoticeDTO;
import kr.co.doogle.mapper.NoticeMapper;
import net.webjjang.util.PageObject;


@Controller
public class NoticeController {
	
	@Autowired
	private NoticeMapper noticeMapper;
	
//  공지사항 목록 조회(전체)	
//	pageObject 에서 데이터가 넘어오지 않으면 기본페이지1, 페이지당 데이터의 갯수는 10으로 한다.
	@RequestMapping("/shop/notice")
	public String notice(Model model,PageObject pageObject) {
		pageObject.setTotalRow(noticeMapper.getRow(pageObject));
		List<NoticeDTO> list = noticeMapper.getAll(pageObject);
		model.addAttribute("pageObject",pageObject);
		model.addAttribute("list",list);
		System.out.print(pageObject);
		System.out.print(list);
		return "/front/shop/notice/notice";
	}
//  공지사항 View / 이전글 다음글 
	@RequestMapping("/shop/notice_view")
	public String notice_view(Model model,int no) {
		NoticeDTO dto = noticeMapper.getOne(no);
		model.addAttribute("dto",dto);
		NoticeDTO dto1 = noticeMapper.pre_nex(no);
		model.addAttribute("dto1",dto1);
		return "/front/shop/notice/notice_view";
	}
//  공지사항 작성 -1 	
	@RequestMapping("/shop/notice_insert")
	public String notice_insert(Model model) {
		model.addAttribute("edit","edit");
		model.addAttribute("url","/notice_insert");
		return "/front/shop/notice/notice_insert";
	}
//  공지사항 작성 -2
	@RequestMapping("/shop/notice_insert_ok")
	public String notice_insert_ok(NoticeDTO dto) {
		noticeMapper.insert(dto);
		return "redirect:/shop/notice/";
	}
//	공지사항 수정
	@RequestMapping("/shop/notice_update")
	public String notice_update(Model model,int no) {
		NoticeDTO dto = noticeMapper.getOne(no);
		model.addAttribute("dto",dto);
		model.addAttribute("edit","edit");
		model.addAttribute("url","/notice_update");
		return "/front/shop/notice/notice_update";
		
	}
	@RequestMapping("/shop/notice_update_ok")
	public String notice_update_ok(NoticeDTO dto) {
		noticeMapper.update(dto);
		return "redirect:/shop/notice_view?no="+dto.getNno();
		
	}
	@RequestMapping("/shop/notice_delete")
	public String notice_delete(int no) {
		noticeMapper.delete(no);
		return "redirect:/shop/notice";
		
	}
}
