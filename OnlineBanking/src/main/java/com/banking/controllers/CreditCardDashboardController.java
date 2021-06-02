package com.banking.controllers;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CreditCardDashboardController {

	@RequestMapping(value = "/creditcarddashboard", method = RequestMethod.GET)
	public ModelAndView showCreditHome() throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("creditHomePage");
		return mv;
	}
	@RequestMapping(value = "/creditcardpayment", method = RequestMethod.GET)
	public ModelAndView showCreditcardPayment() throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("creditPaymentPage");
		return mv;
	}
	@RequestMapping(value = "/transferConfirmation", method = RequestMethod.POST)
	public ModelAndView showTransferConfirmation() throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("transferConfirmation");
		return mv;
	}
}
