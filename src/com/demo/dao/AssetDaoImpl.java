package com.demo.dao;

import java.sql.ResultSet;  
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


import com.demo.model.Asset;
import com.demo.model.Login;

public class AssetDaoImpl implements AssetDAO {
	
private JdbcTemplate jdbcTemp;
	
	public AssetDaoImpl(DataSource dataSource) {
		jdbcTemp = new JdbcTemplate(dataSource);
		
	}
	
	@Override
	public boolean adminLogin(Login login) {
		String uName= login.getUserid();
		String pWord= login.getPassword();
		
		int counter=jdbcTemp.queryForObject("select count(*) from LogDetail where userid=?", Integer.class,uName);
		if(counter==1) {
			String pass=jdbcTemp.queryForObject("select password from LogDetail where userid=?", String.class,uName);
			if(pWord.equals(pass)) {
				return  true;
			}
		}else {
			
		}
		return false;
	}
	

	@Override
	public List<Asset> AssetList() {
		List<Asset> list = jdbcTemp.query(
				"Select assetid,productname,modelnumber,dateofpurchase,price,status,assignedto,isactive from assettable",
				new RowMapper<Asset>() {

					@Override
					public Asset mapRow(ResultSet rs, int rowNum) throws SQLException {
						Asset ads = new Asset();

						ads.setAssetid(rs.getInt("assetid"));
						ads.setProductname(rs.getString("productname"));
						ads.setModelnumber(rs.getString("modelnumber"));
						ads.setDateofpurchase(rs.getDate("dateofpurchase"));
						ads.setPrice(rs.getInt("price"));
						ads.setStatus(rs.getString("status"));
						ads.setAssignedto(rs.getString("assignedto"));
						ads.setIsactive(rs.getString("isactive"));

						return ads;
					}
				});
		return list;
	}
	
	
	@Override
	public int delete(int assetid) {
		String sql = "delete from assettable where assetid=?";

		try {

			int counter = jdbcTemp.update(sql, new Object[] { assetid });

			return counter;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	
	
	////////////////////////////////////////////////////////////////////////////////////////
	
	@Override
	public List<Asset> findStudentById(int assetid) {

		List<Asset> assetList = jdbcTemp.query("SELECT * FROM assettable where assetid=?",
				new Object[] { assetid }, new RowMapper<Asset>() {

					@Override
					public Asset mapRow(ResultSet rs, int rowNum) throws SQLException {
						Asset adasse = new Asset();
						adasse.setAssetid(rs.getInt("assetid"));
						adasse.setPrice(rs.getInt("price"));
						adasse.setStatus(rs.getString("status"));
						adasse.setAssignedto(rs.getString("assignedto"));
						adasse.setIsactive(rs.getString("isactive"));
						return adasse;
					}

				});

		return assetList;
		
	}

	
	@Override
	public Integer update(Asset adasset) {
		String sql = "update  assettable set price=?, status=?, assignedto=?, isactive=? where assetid=?";

		try {

			int counter = jdbcTemp.update(sql,
					new Object[] { adasset.getPrice(), adasset.getStatus(), adasset.getAssignedto(), adasset.getIsactive(), adasset.getAssetid() });

			return counter;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	@Override
	public Integer create(Asset insertasset) {
		String sql = "INSERT INTO assettable (assetid, productname, modelnumber, dateofpurchase, price, status, assignedto, isactive) values(?,?,?,?,?,?,?,?)";

		try {

			int counter = jdbcTemp.update(sql,
					new Object[] { insertasset.getAssetid(), insertasset.getProductname(), insertasset.getModelnumber(),
							insertasset.getDateofpurchase(), insertasset.getPrice(), insertasset.getStatus(),
							insertasset.getAssignedto(),insertasset.getIsactive() });
			return counter;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	

}
