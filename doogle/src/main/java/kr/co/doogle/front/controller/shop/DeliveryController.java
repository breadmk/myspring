package kr.co.doogle.front.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DeliveryController {

	@RequestMapping("/shop/deliveryList")
	public String deliveryList(Model model) {
		model.addAttribute("url", "/shop/deliveryList");
		return "/front/shop/delivery/list";
	}
	
	@RequestMapping("/delivery_pop")
	public String delivery_pop() {
		
		return "/front/shop/delivery/delivery_pop";
	}
}
