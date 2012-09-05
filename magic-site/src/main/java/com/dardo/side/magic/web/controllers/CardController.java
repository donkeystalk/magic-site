package com.dardo.side.magic.web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cbmke.cart.backend.repos.ItemRepository;

@Controller
@RequestMapping("/card")
public class CardController {
	
	@Autowired
	private ItemRepository itemRepository;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String showList(Model model)
	{
		model.addAttribute("items", itemRepository.findAllItems());
		return "list";
	}
	
	@RequestMapping(value="/detail/{id}", method=RequestMethod.GET)
	public String detail(@PathVariable Long id, Model model)
	{
		model.addAttribute("item", itemRepository.findItemById(id));
		return "card";
	}

}
