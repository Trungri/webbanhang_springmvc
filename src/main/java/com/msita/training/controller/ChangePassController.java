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
@RequestMapping("/changePass")
public class ChangePassController {
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String changePass(ModelMap model) {
		return "changePassword";
	}
	
	@ResponseBody
	@RequestMapping(value="/change",method=RequestMethod.POST)
	public String register(@RequestParam("user") String username,@RequestParam("passwordOld") String passOld,@RequestParam("passwordNew") String passNew) {
		//String page = "login";
		loginService.change(username, passOld, passNew);
		return "Change password success";
	}
}
