package com.demo.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.dao.AssetDAO;
import com.demo.model.Asset;


@Controller
public class CreateController {
	
	@Autowired
	private AssetDAO createDao;

	@RequestMapping(value ="/createTest", method = RequestMethod.POST)
	public ModelAndView createasset(@ModelAttribute("userForm") Asset adc,@RequestParam("assetid") int assetid,
			@RequestParam("productname") String productname, @RequestParam("modelnumber") String modelnumber,
			@RequestParam("dateofpurchase") Date dateofpurchase, @RequestParam("price") int price,
			@RequestParam("status") String status, @RequestParam("assignedto") String assignedto,
			@RequestParam("isactive") String isactive, ModelAndView mv) {

		adc.setAssetid(assetid);
		adc.setProductname(productname);
		adc.setModelnumber(modelnumber);
		adc.setDateofpurchase(dateofpurchase);
		adc.setPrice(price);
		adc.setStatus(status);
		adc.setAssignedto(assignedto);
		adc.setIsactive(isactive);

		int counter = createDao.create(adc);
        System.out.println(counter);
		if (counter > 0) {
			mv.addObject("msg", "Asset Added successful...");
		} else {
			mv.addObject("msg", "Error- check the console log.");
		}

		mv.setViewName("Add");

		return mv;
	}
	
	@RequestMapping("/registerss")
	public String showAddDoctorForm(Model model) {
		model.addAttribute("userForm",new Asset());
		return "Add";
	}

}
