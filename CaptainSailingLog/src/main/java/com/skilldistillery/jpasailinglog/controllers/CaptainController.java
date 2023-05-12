package com.skilldistillery.jpasailinglog.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpasailinglog.data.CaptainDAO;

@Controller
public class CaptainController {

	@Autowired
	private CaptainDAO captainDAO;
	
	@RequestMapping(path= {"/", "home.do"})
	public String home(Model model) {
		model.addAttribute("tripList", captainDAO.findAll());
		return "home";
	}
}
