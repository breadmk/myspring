package org.zerock.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.image.service.ImageService;
import org.zerock.image.vo.ImageVO;
import org.zerock.util.FileUtil;

import lombok.extern.log4j.Log4j;
import net.webjjang.util.PageObject;

@Controller
@Log4j
@RequestMapping("/image")
//@AllArgsConstructor
public class ImageController {
	
	private final String MODULE  = "image";
	@Autowired
	@Qualifier("imageServiceImpl")
	private ImageService service;
	
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
	public String view(Model model,int no) {
		
		model.addAttribute("vo",service.view(no));
		return MODULE + "/view";
	}
	
	@GetMapping("/write.do")
	public String writeForm() {
		return MODULE + "/write";
	}
	
	@PostMapping("/write.do")
	public String write(ImageVO vo, MultipartFile imageFile,
			RedirectAttributes rttr,HttpServletRequest request) throws IllegalStateException, IOException {
		String path = "/upload/img/";
		String realPath=request.getServletContext().getRealPath(path);
		log.info(realPath);
		String fileName = imageFile.getOriginalFilename();
		// 저장하려는 파일 시스템의 실제 위치와 파일명찾기
		String saveFileName = FileUtil.checkDupulicate(realPath+fileName);
		log.info(saveFileName);
		
		// 실제적으로 실제위치와 파일명으로 저장해야 한다. request안에 data로 담겨있는 파일 내용을
		// 실적적인 파일로 저장
		imageFile.transferTo(new File(saveFileName));
		
		// 서버에 올라간 파일명만 가져오기 - path 없음.
		String uploadFileName = saveFileName.substring(saveFileName.lastIndexOf("\\")+1);
		// DB에 정보 저장하기
		vo.setFileName(path+uploadFileName);
		service.write(vo);
		
		//글쓰기 정상처리 표시
		rttr.addFlashAttribute("processResult","write success");
		return "redirect:list.do";
	}
	
	@GetMapping("update.do")
	public String updateForm(int no,Model model) {
		//데이터를 가져오기 위해 view() 호출 :inc=0
		model.addAttribute("vo",service.view(no));
		return MODULE + "/update";
	}
	
	@PostMapping("update.do")
	public String update(ImageVO vo,RedirectAttributes rttr) {
		service.update(vo);
		rttr.addFlashAttribute("processResult","update success");
		return "redirect:view.do?no="+vo.getNo()+"&inc=0";
	}
	
	@PostMapping("/delete.do")
	public String delete(ImageVO vo,RedirectAttributes rttr) {
		service.delete(vo);
		rttr.addFlashAttribute("processResult","delete success");
		return "redirect:list.do";
	}
}
