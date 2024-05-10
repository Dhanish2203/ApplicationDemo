package com.demo.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.demo.dao.AssetDAO;


@Controller
public class DeleteController {
	
	@Autowired
	private AssetDAO empDaod;

	@RequestMapping(value = "/delete/{assetid}")
	public ModelAndView deleteStudentById(ModelAndView mv, @PathVariable("assetid") int assetid)
			throws IOException {

		int counter = empDaod.delete(assetid);

		if (counter > 0) {
			mv.addObject("msg", "Student records deleted against doctor id: " + assetid);
		} else {
			mv.addObject("msg", "Error- check the console log.");
		}

		mv.setViewName("delete");

		return mv;
	}

}
