package com.capgemini.flightapplication.dto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class FlightFareDTO 
{
	@Autowired
	private FlightDTO flightObj;
	private int businessClassPrice;
	private int economyClassPrice;
	private int earlierBooking;
	private int intermediateBooking;
	private int currentBooking;
	
	public FlightDTO getFlightObj() {
		return flightObj;
	}
	public void setFlightObj(FlightDTO flightObj) {
		this.flightObj = flightObj;
	}
	public int getBusinessClassPrice() {
		return businessClassPrice;
	}
	public void setBusinessClassPrice(int businessClassPrice) {
		this.businessClassPrice = businessClassPrice;
	}
	public int getEconomyClassPrice() {
		return economyClassPrice;
	}
	public void setEconomyClassPrice(int economyClassPrice) {
		this.economyClassPrice = economyClassPrice;
	}
	public int getEarlierBooking() {
		return earlierBooking;
	}
	public void setEarlierBooking(int earlierBooking) {
		this.earlierBooking = earlierBooking;
	}
	public int getIntermediateBooking() {
		return intermediateBooking;
	}
	public void setIntermediateBooking(int intermediateBooking) {
		this.intermediateBooking = intermediateBooking;
	}
	public int getCurrentBooking() {
		return currentBooking;
	}
	public void setCurrentBooking(int currentBooking) {
		this.currentBooking = currentBooking;
	}
}
