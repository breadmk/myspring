package kr.co.kurly.controller;

import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.kurly.dao.MemberDao;
import kr.co.kurly.dao.ProductDao;
import kr.co.kurly.dto.DeaDto;
import kr.co.kurly.dto.JungDto;
import kr.co.kurly.dto.ProductDto;

@Controller
public class ProductController {
	
	@Autowired
	public SqlSession sqlSession;
	
	@RequestMapping("/product/pwrite")
	public String pwrite(Model model) {
		
		//dae테이블에서 대분류에 대한 내용을 읽어와서 뿌려준다.
		ProductDao pdao = sqlSession.getMapper(ProductDao.class);
		List<DeaDto> list = pdao.get_dea();
		List<JungDto> jlist = pdao.get_jung("01");
		model.addAttribute("list",list);
		model.addAttribute("jlist",jlist);
		return "/product/pwrite";
	}
	
	@RequestMapping("/product/pwrite_ok")
	public String pwrite_ok() {
		ProductDao pdao = sqlSession.getMapper(ProductDao.class);
		return "redirect:/main/index";
	}
	
	@RequestMapping("/product/get_jung")
	public void get_jung(PrintWriter out,HttpServletRequest request) {
		ProductDao pdao = sqlSession.getMapper(ProductDao.class);
		String deacode = request.getParameter("deacode");
		List<JungDto> jlist = pdao.get_jung(deacode);
		String code = "";
		String title = "";
		for(int i=0; i<jlist.size(); i++) 
		{
			code=code+jlist.get(i).getCode()+",";
			title=title+URLEncoder.encode(jlist.get(i).getTitle())+",";
		}
		out.print(code+"~");
		out.print(title);
	}
}
