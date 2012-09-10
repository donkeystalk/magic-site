package com.dardo.side.magic.web.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cbmke.cart.backend.entities.Item;
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
	public String detail(@PathVariable Long id, Model model, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		Item item = itemRepository.findItemById(id);
		List<Item> items = (List<Item>) session.getAttribute("cart");
		if(item.getNumVotes() == 0 || item.getNumVotes() == null)
		{
			session.setAttribute("rating", 0);
		}
		else
		{
			/** There are 5 stars on the rating screen each with 14px in width 5*14 = 70
			 * Multiply this by the percentage from the (score / num votes) / 5 (i.e. 1 vote of 5 stars = 5 / 1 = 5 / 5 = 1.0 * 70 = 70px, 
			 * or show all 5 stars.
			 */
			float rating = ((((float)item.getScore() / (float)item.getNumVotes()) / 5)) * 70;
			session.setAttribute("rating", rating);
		}
		if(items == null)
		{
			items = new ArrayList<Item>();
			session.setAttribute("cart", items);
		}
		items.add(item);
		model.addAttribute("item", item);
		return "card";
	}
}
