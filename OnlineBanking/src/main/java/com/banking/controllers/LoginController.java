package com.banking.controllers;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login() throws IOException {
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home() throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("LoginPage");
		return mv;
	}
	
	@RequestMapping(value = "/forgotPassword", method = RequestMethod.POST)
	public String showForgotPassword() {
		return "ForgotPassword";
		
	}
	
	@RequestMapping(value = "/forgotPasswordConfirmation", method = RequestMethod.POST)
	public String showForgotPasswordConfirmation() {
		return "forgotPasswordConfirmation";
		
	}
	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String ShowRegistration() {
		return "registration";
		
	}
	
	@RequestMapping(value = "/registrationConfirmation", method = RequestMethod.POST)
	public String showregistrationConfirmation() {
		return "registrationConfirmation";
		
	}
}
