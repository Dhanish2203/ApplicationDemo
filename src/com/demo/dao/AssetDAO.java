package com.demo.dao;

import java.util.List; 

import com.demo.model.Asset;
import com.demo.model.Login;

public interface AssetDAO {
	public boolean adminLogin(Login login);
	public List<Asset> AssetList();
	public int delete(int assetid);
	public List<Asset> findStudentById(int assetid);
	public Integer update(Asset adasset);
	public Integer create(Asset insertasset);

}
