package com.msita.training.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.msita.training.service.LoginService;

@Controller
@RequestMapping("/dangKy")
public class DangKyController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String dangKyForm() {
		return "dangKi";
	}

	@RequestMapping(value="/userDK",method=RequestMethod.POST)
	public String login(@RequestParam("user") String username,@RequestParam("pass") String password,@RequestParam("fullname") String fullname ) {
		
		loginService.insert(username, password, fullname);
		return "redirect:/login";
	}
}
