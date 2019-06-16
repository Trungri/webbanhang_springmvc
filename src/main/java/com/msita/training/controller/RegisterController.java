package com.msita.training.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.msita.training.service.LoginService;

@Controller
@RequestMapping("/register")
public class RegisterController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String signUp(ModelMap model) {
		return "register";
	}
	
	@ResponseBody
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String register(@RequestParam("user") String username,@RequestParam("fullname") String fullname,@RequestParam("passwordNew") String password) {
		//String page = "login";
		loginService.insert(username, password, fullname);
		//return "redirect:/" + page;
		return "added successful";
	}
}
