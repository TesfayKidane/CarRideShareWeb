package edu.mum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
  
@Controller
public class HomeController {


	@RequestMapping({"/","/index"})
	public String indexPage(Model model){
		return "index";
	}
 
	@RequestMapping({"/welcome"})
	public String welcome(Model model) {
		
		model.addAttribute("greeting", "Welcome to Car Ride Sharing!!");
		model.addAttribute("tagline", "Sharing is Caring!!");
		
		return "welcome";
	}
 
}
