package kr.co.doogle.front.controller.shop;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.doogle.dto.DeliveryDTO;
import kr.co.doogle.mapper.DeliveryMapper;

@Controller
public class DeliveryController {
	@Autowired
	DeliveryMapper deliveryMapper;
	
	@RequestMapping("/shop/deliveryList")
	public String deliveryList(Model model) {
//		DeliveryMemberDTO dto = deliveryMapper.get_one("mk");
//		int mno = dto.getMno();
//		System.out.println(mno);
//		model.addAttribute("dto",dto);
//		int mno=111; //세션변수 id 값으로 구해야함
		int mno = deliveryMapper.getId("mk");
		List<DeliveryDTO> list = deliveryMapper.getAll(mno);
		ArrayList<String> addr = deliveryMapper.getAddr(mno);
		ArrayList<Integer> addrlist = deliveryMapper.addrRegexp();
//		for(int dno : addrlist) {
//			System.out.println(dno);
//			deliveryMapper.addrUpdate(dno);
//		}
		
		ArrayList<String> teakbea = new ArrayList<String>();
		
//		for(String addrgubun : addr) {
//			if(addrgubun.contains("서울")|addrgubun.contains("인천")|addrgubun.contains("경기")) {
//				System.out.println(addr);
//				deliveryMapper.addrUpdate(addr);
//				addrgubun = "y";
//				teakbea.add(addrgubun);
//			}else {
//				deliveryMapper.addrUpdate2(addr);
//				addrgubun = "n";
//				teakbea.add(addrgubun);
//			}
//		}
		System.out.println(list);
		model.addAttribute("teakbea",teakbea);
		model.addAttribute("list",list);
		model.addAttribute("url", "/shop/deliveryList");
		return "/front/shop/delivery/list";
	}
	
	@RequestMapping("/delivery_pop")
	public String delivery_pop(Model model) {
		int mno = deliveryMapper.getId("mk");
		model.addAttribute("mno",mno);
		return "/front/shop/delivery/delivery_pop";
	}
	
	@RequestMapping("/delivery_ok")
	public void delivery_ok(DeliveryDTO dto, PrintWriter out) {
		deliveryMapper.insert(dto);
		out.print(dto.toString());
	}
	
	@RequestMapping("/deliveryUpdate")
	public String deliveryUpdate(HttpServletRequest request,Model model) {
		String dno = request.getParameter("dno");
		String addr = deliveryMapper.updateGet(dno);
		model.addAttribute("addr",addr);
		return "/front/shop/delivery/deliveryUpdate";
	}
	
	@RequestMapping("/deliveryUpdateOk")
	public void deliveryUpdateOk(DeliveryDTO dto,HttpServletRequest request,PrintWriter out) {
		String dno = request.getParameter("dno");
		deliveryMapper.update(dto, dno);
		out.print("success");
	}
	
	@RequestMapping("/deliveryDelete")
	public void deliveryDelete(HttpServletRequest request,PrintWriter out) {
		String dno = request.getParameter("dno");
		deliveryMapper.delete(dno);
		out.print("success");
	}
	
	@RequestMapping("/delivery_defaultUpdate")
	public void delivery_defaultUpdate(HttpServletRequest request,PrintWriter out) {
		String dno = request.getParameter("dno");
		deliveryMapper.defaultUpdateNo();
		deliveryMapper.defaultUpdate(dno);
		out.print("success");
	}
	
	@RequestMapping("/test2")
	public String test(PrintWriter out,Model model) {
		boolean check = false;
		String addr = "서울 구로구 구로동 a";
		String[] arr = addr.split(" ");
		check = Arrays.asList(arr).contains("서울");
		if (check == false)
			check = Arrays.asList(arr).contains("인천");
		if (check == false)
			check = Arrays.asList(arr).contains("경기");
		out.print(check);
		
		int mno = deliveryMapper.getId("mk");
//		System.out.println(mno);
		ArrayList<String> addr3 = deliveryMapper.getAddr(mno);
		ArrayList<String> newaddr = new ArrayList<String>();
		ArrayList<String> newaddr2 = new ArrayList<String>();
//		System.out.println(addr3);
		
		for(String dd1 : addr3) {
			if(dd1.contains("서울")) {
				dd1 = "y";
			newaddr.add(dd1);
			System.out.println(dd1);
			model.addAttribute("new",newaddr);
			}else {
				newaddr2.add(dd1);
				System.out.println(dd1);
			}
		}
		return "/front/shop/aa";
	}
}
