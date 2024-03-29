package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SampleController {
	String message = "Sample Spring MVC Project!";

	@RequestMapping("/hello")
	public ModelAndView showMessage(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in controller");

		ModelAndView mv = new ModelAndView("helloworld");
		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	}

	@RequestMapping("/getObjects")
	public ModelAndView getObjects(ModelAndView modelAndView) {
		List<String> names = Arrays.asList("Hellsent","Creston");
		
		modelAndView.setViewName("getObjs");
		modelAndView.addObject("names",names);
		
		return modelAndView;
	}
	
	@RequestMapping("/")
	public ModelAndView indexPage() {
//		redirecting to index page
		return new ModelAndView("index"); 
	}
}
