package org.zerock.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.board.vo.DataVO;

import lombok.extern.log4j.Log4j;

//자동 생성 @Controller, @Service, @Repository @Component, @RestController, @~Advice
// ** servlet-context.xml 에 component-scan 으로 설정된 패키지 아래의 클래스만 찾아서 생성해준다.
@Controller
@RequestMapping("/sample")
@Log4j
public class SampleController {
	
	//모든 방식 허용
	@RequestMapping("")
	public String basic() {
		log.info("basic.........................");
		return "sample";
	}
	
	//get 방식만 허용
	//@RequestMapping(value="/basicOnlyGet", method = RequestMethod.GET)
	@GetMapping("/basicOnlyGet")
	public String basicGet2() {
		log.info("basicOnlyGet.........................");
		return "sample/basicOnlyGet";
		//jsp 파일은 /WEB-INF/views/sample/basicOnlyGet
	}
	@GetMapping("/modelAndView")
	public ModelAndView modelAndView() {
		ModelAndView mav = new ModelAndView();
		//찾아야할 jsp정보를 세팅한다. =>request에 담긴다.
		mav.setViewName("modelAndView"); // jsp 리턴 문자열
		mav.addObject("name","이영환");
		return mav;
	}
	
	@GetMapping("/getObject")
	@ResponseBody
	public DataVO getObject() {
		DataVO vo = new DataVO();
		vo.setName("뀨");
		vo.setAge(50);
		log.info(vo);
		return vo;
	}
	
	//---- 넘어 오는 파라메터 데이터 수집하기
	// 요구하는 데이터가 String인 경우 데이터가 넘어오지 않아도 문제가 없다.
	// http://localhost:89/sample/name?name=kang
	@GetMapping("/name")
	public void getName(String name) {
		log.info(name);
	}
	
	@GetMapping("/age")
	public void getAge(int age) { //name=별칭
		log.info(age);
	}
	
	// 요구하는 데이터가 int인 경우 데이터가 넘어오지 않으면 문제가 생기므로 기본값을 셋팅 할 수 있다.
	// 값이 넘어오지 않으면 1로 셋팅한다.
	//@RequestParam : 기본값 셋팅과 자바의 변수명과 파라미터 이름이 틀린경우 사용해야만 한다.
	@GetMapping("/list")
	public void getList(@RequestParam(defaultValue = "1",name="p") int page) { //name=별칭
		log.info(page);
	}
	
	//똑같은 파라미터로 여러개의 데이터 받기 -> 파라미터를 배열로 만들면 여러개를 받는다.
	// http://localhost/sample/nos?nos=1&nos=10&nos=30
	@GetMapping("/nos")
	public void getNos(int nos[]) { //name=별칭
		log.info(Arrays.toString(nos));
	}
	// 형식이 다른 여러개의 데이터들은 클래스를 만든다.
	@GetMapping("/data")
	public void getData(DataVO vo) {
		log.info(vo);
	}
	
	// 파일 업로드 처리 메소드 -------------------------
	// 파일을 올릴 수 있는 입력 창으로 이동하는 메서드
	@RequestMapping("/uploadForm")
	public String uploadForm() {
		
		return "uploadForm";
	}
	// 전송되는 파일을 처리하는 메소드 - 파일 여러개를 첨부할 수 있는 처리.
	@PostMapping("/upload_ok")
	public String upload_ok(ArrayList<MultipartFile> files,Model model) {
		
		String path = "d:\\upload\\"; //저장할 위치
		
		ArrayList<FileInfo> list = new ArrayList<FileInfo>();
		// 여러개의 파일을 files라는 이름으로 받는다. for each 람다식을 이용한 처리
		// 임시로 올렸다가 저장하라는 명령이 없어서 사라진다. -> 저장처리를 해야한다.
		files.forEach(file ->{	//람다식.
			log.info("-----------------------------------");
			String fileName = file.getOriginalFilename();
			long size = file.getSize();
			FileInfo fi = new FileInfo();
			fi.setFileName(fileName);
			fi.setSize(size);
			list.add(fi);
			log.info("파일명"+fileName);
			log.info("파일크기"+size);
			// 파일 저장하는 처리
			try {
				// 저장하는 처리
				file.transferTo(new File(path,fileName));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		});
		//첨부된 파일의 정보를 jsp 로 보내기 위해서 model에 담는다.
		model.addAttribute("list",list);
		return "upload_ok";
	}
}








