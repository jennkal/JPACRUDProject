package com.skilldistillery.jpasailinglog.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpasailinglog.data.CaptainDAO;

import com.skilldistillery.jpasailinglog.entities.CaptainLog;

@Controller
public class CaptainController {

	@Autowired
	private CaptainDAO captainDAO;

	@RequestMapping(path = { "/", "index.do" })
	public String home(Model model) {
		model.addAttribute("logList", captainDAO.findAll());
		return "index";
	}

	@RequestMapping(path = "getLog.do", method = RequestMethod.GET)
	public String getLog(Integer lid, Model model) {

		CaptainLog log = captainDAO.findById(lid);
		System.out.println("THIS IS THE LOG" + log);

		model.addAttribute("log", log);

		return "log/showLog";
	}

	@RequestMapping(path = "updateLog.do", method = RequestMethod.GET)
	public String updateLog(Integer lid, Model model) {
		System.out.println("id passed is: " + lid);
		CaptainLog log = captainDAO.findById(lid);
		System.out.println("id now is " + lid);

		model.addAttribute("log", log);

		return "log/update";
	}

	@RequestMapping(path = "performUpdate.do", method = RequestMethod.GET)
	public String performUpdate(CaptainLog log, Model model) {
		System.out.println(log);
		System.out.println("updating now");
		ModelAndView mv = new ModelAndView();
		
		CaptainLog logUpdated = captainDAO.update(log.getId(), log);
		
		model.addAttribute("log", logUpdated);

		return "log/showLog";
	}
	
	@RequestMapping(path = "performAddLog.do", method = RequestMethod.GET)
	public String addLog(CaptainLog log, Model model) {

		CaptainLog logAdded = captainDAO.create(log);

		model.addAttribute("log", logAdded);

		return "log/showLog";
	}
	
	@RequestMapping(path = "addLog.do", method = RequestMethod.GET)
	public String performUpdate(Model model) {
		
		ModelAndView mv = new ModelAndView();

		return "log/add";
	}
	
	@RequestMapping(path = "deleteLog.do", method = RequestMethod.GET)
	public String deleteLog(Integer lid, Model model) {

		captainDAO.destroy(lid);

		return "index";
	}

	

}
