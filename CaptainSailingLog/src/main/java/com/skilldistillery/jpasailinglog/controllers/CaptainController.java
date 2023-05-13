package com.skilldistillery.jpasailinglog.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.jpasailinglog.data.CaptainDAO;
import com.skilldistillery.jpasailinglog.entities.CaptainLog;

@Controller
public class CaptainController {

	@Autowired
	private CaptainDAO captainDAO;
	
	@RequestMapping(path= {"/", "index.do"})
	public String home(Model model) {
		model.addAttribute("logList", captainDAO.findAll());
		return "index";
	}
	
	@RequestMapping(path="getLog.do", method=RequestMethod.GET)
	public String getLog(Integer lid, Model model) {
		
		CaptainLog log = captainDAO.findById(lid);
		
		model.addAttribute("log", log);
		
		return "log/showLog";
	}
}
