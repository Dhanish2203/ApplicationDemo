package com.demo.controller;

import java.io.IOException; 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.dao.AssetDAO;
import com.demo.model.Asset;



@Controller
public class UpdateController {
	
	@Autowired
	private AssetDAO addDao;

	@RequestMapping(value = "/update/{assetid}")
	public ModelAndView findStudentById(ModelAndView model, @PathVariable("assetid") int assetid)
			throws IOException {

		List<Asset> listdo = addDao.findStudentById(assetid);
		model.addObject("listdo", listdo);
		model.setViewName("Edit");

		return model;
	}

	@RequestMapping(value = "/updateTest", method = RequestMethod.POST)
	public ModelAndView updateStudent(@RequestParam("assetid") int assetid, @RequestParam("price") int price, @RequestParam("status") String status,
			@RequestParam("assignedto") String assignedto, @RequestParam("isactive") String isactive, ModelAndView mv) {

		Asset doo = new Asset();
		doo.setAssetid(assetid);
		doo.setPrice(price);
		doo.setStatus(status);
		doo.setAssignedto(assignedto);
		doo.setIsactive(isactive);

		int counter = addDao.update(doo);

		if (counter > 0) {
			mv.addObject("msg", "Asset records updated against Asset id: " + doo.getAssetid());
		} else {
			mv.addObject("msg", "Error- check the console log.");
		}

		mv.setViewName("Edit");

		return mv;
	}

}
