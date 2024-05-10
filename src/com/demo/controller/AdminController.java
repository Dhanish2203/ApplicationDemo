package com.demo.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.demo.dao.AssetDAO;
import com.demo.model.Asset;


@Controller
public class AdminController {
	
	@Autowired
	private AssetDAO empDaos;
	
	@RequestMapping(value="/Assetmanage")
	public ModelAndView liststaff(ModelAndView model) throws IOException{
		List<Asset> listAsset = empDaos.AssetList();
		model.addObject("listAsset",listAsset);
		model.setViewName("AdminTable");
		return model;
	}
	
	

}
