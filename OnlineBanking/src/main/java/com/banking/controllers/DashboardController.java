package com.banking.controllers;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashboardController {

	@RequestMapping(value = "/dashboard", method = RequestMethod.POST)
	public ModelAndView dashboard(@RequestParam String userName) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.addObject("userName", userName);
		mv.setViewName("customerDashboard");
		return mv;
	}

	@RequestMapping(value = "/dashboard1", method = RequestMethod.GET)
	public ModelAndView showDashboard() throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerDashboard");
		return mv;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView showLogout() throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("logout");
		return mv;
	}

	@RequestMapping(value = "/customeruserdetails", method = RequestMethod.GET)
	public ModelAndView showCustomerUserDetails() throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerUserDetails");
		return mv;
	}

	@RequestMapping(value = "/currentaccount", method = RequestMethod.GET)
	public ModelAndView showCurrentAccount() throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("accountsCurrentPage");
		return mv;
	}

	@RequestMapping(value = "/savingsaccount", method = RequestMethod.GET)
	public ModelAndView showSavingsAccount() throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("accountsSavingsPage");
		return mv;
	}

	@RequestMapping(value = "/transfermoney", method = RequestMethod.GET)
	public ModelAndView showTrasferMoney() throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("transferFunds");
		return mv;
	}

	@RequestMapping(value = "/changepassword", method = RequestMethod.GET)
	public ModelAndView showChangePassword() throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("changePassword");
		return mv;
	}

	@RequestMapping(value = "/changepasswordconfirmation", method = RequestMethod.POST)
	public ModelAndView showChangePasswordConfirmation() throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("changePasswordConfirmation");
		return mv;
	}
}
