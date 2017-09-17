package com.capgemini.flightapplication.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.capgemini.flightapplication.dto.FlightDTO;
import com.capgemini.flightapplication.dto.FlightFareDTO;

public class FlightFareMapper implements RowMapper<FlightFareDTO>
{
	public FlightFareDTO mapRow(ResultSet rs,int rowNum)throws SQLException
	{
		FlightFareDTO flightfare = new FlightFareDTO();
		FlightDTO flight=new FlightDTO();
		flightfare.setFlightObj(flight);
		flightfare.getFlightObj().setFlightNumber(rs.getString("flightNumber"));
		flightfare.setBusinessClassPrice(rs.getInt("businessClassPrice"));
		flightfare.setEconomyClassPrice(rs.getInt("economyClassPrice"));
		flightfare.setEarlierBooking(rs.getInt("earlierBooking"));
		flightfare.setIntermediateBooking(rs.getInt("intermediateBooking"));
		flightfare.setCurrentBooking(rs.getInt("currentBooking"));
		return flightfare;
	}
}
