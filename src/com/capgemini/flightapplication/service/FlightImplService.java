package com.capgemini.flightapplication.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.capgemini.flightapplication.dao.IFlightDAO;
import com.capgemini.flightapplication.dto.FlightFareDTO;
import com.capgemini.flightapplication.exception.FlightTransactionException;

@Component
public class FlightImplService implements IFlightService
{
	@Autowired
	IFlightDAO flightdao;

	
	public int adminLogin(String username, String password)
	{
		int count=flightdao.adminLogin(username, password);		
		return count;
	}
	public int addFlightFare(FlightFareDTO flightfare)
	{
		int result = flightdao.addFlightFare(flightfare);
		return result;
	}
	
	public int updateFare(int newbussinessprice,int neweconomyprice, String flightnumber)
	{
		int result = flightdao.updateFare(newbussinessprice, neweconomyprice, flightnumber);
		return result;
	}
	public List<FlightFareDTO> viewAllFlightFare()
	{
		List<FlightFareDTO> farelist = flightdao.viewAllFlightFare();
		return farelist;
	}
	public int updateFlightStatus(String status, String flightnumber)
	{
		int result = flightdao.updateFlightStatus(status, flightnumber);
		return result;
	}

}
