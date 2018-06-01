package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.support.BasicAuthorizationInterceptor;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.dao.EmployeeDAO;
import com.model.EmployeeDetails;

@Service
public class EmpService 
{
	@Autowired
	EmployeeDAO dao;
	@Value("${service.login.url}")
	String loginServiceURL;
	@Value("${service.getemp.url}")
	String getEmpURL;
	@Value("${service.listEmp.url}")
	String listEmpURL;
	
	public void saveEmploeeDetails(EmployeeDetails empDetalis)
	{
		dao.saveEmploeeDetails(empDetalis);
	}
	
	public String[] loginService(String username,String password)
	{
		ResponseEntity<String[]> entity = null;
		
		try 
		{
			RestTemplate rt = new RestTemplate();
			rt.getInterceptors().add(new BasicAuthorizationInterceptor(username, password));
			entity = rt.getForEntity(loginServiceURL, String[].class);
			return 	entity.getBody();
			
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
			throw new RuntimeException("Exception in Service Login Call");
		}

	}
	
	public EmployeeDetails empService(String id,String username,String password)
	{
		String url = null;
		ResponseEntity<EmployeeDetails> entity = null;
		
		try 
		{
			url = getEmpURL+"/"+id;
			System.out.println("----------- url"+url);
			RestTemplate rt = new RestTemplate();
			rt.getInterceptors().add(new BasicAuthorizationInterceptor(username, password));
			entity = rt.getForEntity(url, EmployeeDetails.class);
			if(entity.getStatusCode().value() == 404)
				throw new RuntimeException("Employee Not Found");
			else
				return 	entity.getBody();
		}
		catch (Exception e)
		{
			e.printStackTrace();
			throw new RuntimeException("Exception in Service Call");
		}

	}
}
