package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.EmployeeAllDetails;
import com.model.EmployeeDetails;
import com.model.LoginForm;
import com.service.EmpService;

@Controller
public class EmpMVCController
{
	@Autowired
	EmpService empService; 
	
	@RequestMapping(value="/signUpEmp")
	public ModelAndView saveEmployee()
	{
		 EmployeeDetails details = new EmployeeDetails();
		 return new ModelAndView("signUp", "signUpForm", details);
	}
	
	@RequestMapping(value="/saveEmpDetails")
	public String saveEmpDetails(Model model,@ModelAttribute("signUpForm") EmployeeDetails details)
	{
		try {
			empService.saveEmploeeDetails(details);
			model.addAttribute("result", details);
			return "showRegDetails";
			
		} catch (Exception e) 
		{
			model.addAttribute("error", e.getMessage());
			return "errorPage";
		}
		
		
		
	}
	
	@RequestMapping(value="/showLogin")
	public ModelAndView showLoginPage()
	{
		LoginForm form = new LoginForm();
		return new ModelAndView("loginPage", "loginForm", form);
	}
	
	@RequestMapping(value="/showHomePage")
	public String showHomePage(Model model,@ModelAttribute("loginForm") LoginForm form)
	{
		boolean is_admin = false;
		boolean is_manager = false;
		boolean is_user = false;
		String[] roles = null;
		try
		{
			roles = empService.loginService(form.getUsername(), form.getPassword());
		} 
		catch (Exception e)
		{
			model.addAttribute("errormessage", "Invalid Credentilas");
			return "forward:/showLogin";
		}
		for (String role : roles)
		{
			if (role.equals("ROLE_ADMIN"))
				is_admin = true;
			else if (role.equals("ROLE_MANAGER"))
				is_manager = true;
			else if (role.equals("ROLE_USER"))
				is_user = true;
		}
		if(is_admin)
		{
			EmployeeAllDetails[] details = empService.listAllEmployees(form.getUsername(), form.getPassword());
			model.addAttribute("result", details);
			return "showAdminPage";
		}
		else if(is_manager)
		{
			EmployeeDetails emp = empService.empService(form.getUsername(), form.getPassword());
			EmployeeAllDetails[] details = empService.listManagerReporties(form.getUsername(), form.getPassword());
			model.addAttribute("manager", emp);
			model.addAttribute("result", details);
			return "showManagerPage";
		}
		else if(is_user)
		{
			try
			{
				EmployeeDetails details = empService.empService(form.getUsername(), form.getPassword());
				model.addAttribute("result", details);
				return "showEmpDetails";
			} 
			catch (Exception e)
			{
				model.addAttribute("error", e);
				return "errorPage";
			}
		}
		else
			return "errorPage";
	}
}
