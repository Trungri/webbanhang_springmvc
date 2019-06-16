package com.msita.training.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.HttpServletBean;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import com.msita.training.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String goToFormLogin() {
		return "login";
	}

	@RequestMapping(value="/authenticate",method=RequestMethod.POST)
	public String login(@RequestParam("user") String username,@RequestParam("password") String password, HttpServletRequest request) {
		String page = "";
		boolean rs = loginService.login(username, password);
		if(rs==true) {
			request.getSession().setAttribute("username", username);
			page="home";
		}else {
			page="error";
		}
		return "redirect:/" + page;
	}
	
//	@RequestMapping(value= "/login"  , method = RequestMethod.GET)
//	public ModelAndView login(ModelMap model) {
//		return new ModelAndView("login", "command", new UserLogin());
//	}
	

//	@RequestMapping(value="/loginsuccess", method = RequestMethod.POST)
//	public String checkLogin(@ModelAttribute("SpringWeb")UserLogin user,
//		      ModelMap model) {
//		
//		model.addAttribute("userName", user.getUserName());
//		model.addAttribute("password", user.getPassword());
//		return "result";
//	}
	
	

}
