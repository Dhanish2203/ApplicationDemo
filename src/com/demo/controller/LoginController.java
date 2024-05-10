package com.demo.controller;

import java.io.IOException; 
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.dao.AssetDAO;
import com.demo.model.Asset;
import com.demo.model.Login;

@Controller
public class LoginController {
	
	@Autowired
	private AssetDAO logDao;
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}

	@RequestMapping("/")
	public String showForm(Model theModel) {
		theModel.addAttribute("login",new Login());
		return "Admin";
		}
	@RequestMapping("/request")
	public String showForms(Model theModel) {
		theModel.addAttribute("login",new Login());
		return "login";
		}
	

	@RequestMapping(value="/verify", method=RequestMethod.POST)
	public String verification(@Valid @ModelAttribute("login")Login log,BindingResult theBindingResult, @RequestParam("userid") String userid, @RequestParam("password") String password) {
		log.setUserid(userid);
		log.setPassword(password);
		boolean check=logDao.adminLogin(log);
		if(check) {
			return "WelcomeAdmin";
		}else {
			return "login";
		}
	}
	
	
	@RequestMapping("/requested")
	public String showFor(Model theModel) {
		theModel.addAttribute("login",new Login());
		return "WelcomeITDepartment";
		}

	@RequestMapping("homepage")
	public String home(Model theModel) {
		theModel.addAttribute("userForm",new Asset());
		return "Admin";
		
	}
	
}
