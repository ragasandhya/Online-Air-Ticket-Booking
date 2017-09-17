package com.capgemini.flightapplication.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.capgemini.flightapplication.dto.AdminDTO;
import com.capgemini.flightapplication.dto.FlightFareDTO;
import com.capgemini.flightapplication.service.IFlightService;

@Controller
public class FlightTransactionController 
{
	@Autowired
	IFlightService serviceObj;
	
	
	@RequestMapping(value="customerLogin.obj")
	String getCustomerLoginPage()
	{
		return "customerLogin";
	}
	
	@RequestMapping(value="registration.obj")
	String getAdminLoginPage()
	{
		return "registration";
	}
	
	@RequestMapping(value="adminLogin.obj")
	String getRegistrationPage()
	{
		return "adminLogin";
	}
	
	@RequestMapping(value="signUp.obj")
	String getSingUpPage()
	{
		return "signUp";
	}
	@RequestMapping(value="Add adminLogin.obj", method=RequestMethod.POST)
	ModelAndView getAdminHomePage(@ModelAttribute("login")AdminDTO admin)	
	{
		String adminUserName=admin.getAdminUserName();
		String adminPassword=admin.getAdminPassword();
		System.out.println(adminUserName);
		System.out.println(adminPassword);
		
		int count=serviceObj.adminLogin(adminUserName,adminPassword);
		
		if(count==1)
		{
		ModelAndView model=new ModelAndView();		  
		model.setViewName("adminHome");
		return model;
		}
		else
		{
			ModelAndView model=new ModelAndView();		
			model.getModelMap().addAttribute("erromsg", "Username and Password is incorrect");
			model.setViewName("adminLogin");
			return model;
		}
						
	}
	
	@RequestMapping(value = "flightfare")
	public String getFlightFarePage()
	{
		return "addfare";
	}
	
	@RequestMapping(value = "add",method = RequestMethod.POST)
	ModelAndView getWelcomePage(@ModelAttribute("fare")FlightFareDTO flightfare,BindingResult result)
	{
		int fare=serviceObj.addFlightFare(flightfare);
		ModelAndView model = new ModelAndView();
		model.setViewName("success");
		return model;
	}
	

	@RequestMapping(value = "update fare")
	public String getFlightFareUpdatePage()
	{
		return "updateFlightFare";
	}
	
	@RequestMapping(value = "update",method = RequestMethod.POST)
	ModelAndView getFlightFareUpdatePage(@RequestParam("businessClassPrice") int businessprice,@RequestParam("economyClassPrice")int economyprice,@RequestParam("flightObj.flightNumber")String flightnumber)
	{
		int a = serviceObj.updateFare(businessprice, economyprice, flightnumber);
		ModelAndView model = new ModelAndView();
		model.setViewName("successupdate");
		return model;
	}
	
	
	@RequestMapping(value = "view fare")
	public String getViewPage()
	{
		return "viewFlightFare";
	}
	@RequestMapping(value = "viewall",method = RequestMethod.POST)
	ModelAndView getViewAllPage()
	{
		List<FlightFareDTO>flightfarelist = new ArrayList<FlightFareDTO>();
		flightfarelist = serviceObj.viewAllFlightFare();

		ModelAndView model = new ModelAndView();
		model.getModelMap().addAttribute("flightfarelist",flightfarelist);
		model.setViewName("ViewallFlightFare");
		return model;
	}
	
	@RequestMapping(value = "update status")
	public String getFlightStatusUpdatePage()
	{
		return "flightStatus";
	}
	
	@RequestMapping(value = "Add update.obj",method = RequestMethod.POST)
	ModelAndView getFlightStatusUpdatePage(@RequestParam("status") String status ,@RequestParam("flightNumber")String flightnumber)
	{
		
		int a = serviceObj.updateFlightStatus(status, flightnumber);
		ModelAndView model = new ModelAndView();
		model.getModelMap().addAttribute("status","Flight Status updated");
		model.setViewName("flightStatus");
		return model;
	}
	
	@RequestMapping(value = "adminhome.obj")
	public String getadminHomePage()
	{
		return "adminHome";
	}

}
