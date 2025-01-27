package com.demo.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.demo.dao.AssetDAO;
import com.demo.dao.AssetDaoImpl;


@Configuration
@EnableWebMvc
@ComponentScan(basePackages= {"com.demo"})
public class WebMvcConfig {
	
	
	@Bean
	public InternalResourceViewResolver viewResolver() {
	InternalResourceViewResolver vr = new InternalResourceViewResolver();
	vr.setPrefix("/WEB-INF/view/");
	vr.setSuffix(".jsp");
	return vr;
	}
	
	@Bean
	public DriverManagerDataSource getDataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		ds.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
		ds.setUsername("hr");
		ds.setPassword("pass");
		return ds;
		
	}
	
	@Bean
	public AssetDAO getAssetDAO() {
		return new AssetDaoImpl(getDataSource());
	}

}