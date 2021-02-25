package kr.co.doogle.front.controller.shop;

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
		model.addAttribute("url", "/shop/deliveryList");
		return "/front/shop/delivery/list";
	}
	
	@RequestMapping("/delivery_pop")
	public String delivery_pop() {
		
		return "/front/shop/delivery/delivery_pop";
	}
	
	@RequestMapping("/delivery_ok")
	public String delivery_ok(DeliveryDTO dto) {
		deliveryMapper.insert(dto);
		return "/front/shop/delivery/list";
	}
}
