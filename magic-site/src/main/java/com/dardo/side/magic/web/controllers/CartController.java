package com.dardo.side.magic.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@RequestMapping(method=RequestMethod.GET)
	public String showCart()
	{
		return "cart";
	}

}
