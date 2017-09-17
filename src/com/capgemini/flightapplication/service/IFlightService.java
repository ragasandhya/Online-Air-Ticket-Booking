package com.capgemini.flightapplication.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.capgemini.flightapplication.dto.FlightFareDTO;


@Component
public interface IFlightService
{
	public int adminLogin(String username,String password);
	public int addFlightFare(FlightFareDTO flightfare);
	public int updateFare(int newbussinessprice,int neweconomyprice, String flightnumber);
	public List<FlightFareDTO> viewAllFlightFare();
	public int updateFlightStatus(String status, String flightnumber);
}
