package edu.mum.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import edu.mum.domain.Ride;
import edu.mum.domain.Search;
import edu.mum.domain.User;
import edu.mum.service.RideService;
import edu.mum.service.UserService;

@Controller
@RequestMapping("/rides")
public class RideController {
	
	@Autowired
	private RideService rideService;
	
	@Autowired
	private UserService userService;
 
 	@RequestMapping({"","/all"})
	public String list(Model model) {
		model.addAttribute("rides", rideService.findAll());
		return "rides";
	}
	
 	@RequestMapping("/ride")
	public String getrideById(Model model, @RequestParam("id") Long id) {

		Ride ride = rideService.findOne(id);
		model.addAttribute("ride", ride);
		return "ride";
	}

	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getAddNewrideForm(@ModelAttribute("newride") Ride newride) {
	   return "addRide";
	}
	   
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String processAddNewrideForm(@ModelAttribute("newride") @Valid Ride rideToBeAdded, BindingResult result) {
		if(result.hasErrors()) {
			return "addRide";
		}
		try {	
 			rideService.save(rideToBeAdded);
		} catch (Exception up) {
	      System.out.println("Transaction Failed!!!");
	      up.printStackTrace();
 
		}
		
	   	return "redirect:/rides";
	}
 	@RequestMapping(value="/search", method = RequestMethod.POST)
 	public String processSearch(Ride search, Model model){
 		List<Ride> rides =  rideService.search(search.getRideOriginCity(), search.getRideDestinationCity());
 		model.addAttribute("rides", rides);
 		return "rides";
 	}
	
   
}
