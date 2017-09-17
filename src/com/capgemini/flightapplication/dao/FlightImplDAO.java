package com.capgemini.flightapplication.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.capgemini.flightapplication.dto.FlightDTO;
import com.capgemini.flightapplication.dto.FlightFareDTO;
import com.capgemini.flightapplication.exception.FlightTransactionException;

@Component
public class FlightImplDAO implements IFlightDAO
{
	
	private JdbcTemplate jdbctemplate;

	private DataSource dbsource;

	@Autowired
	public void setDbsource(DataSource dbsource)
	{
		this.dbsource=dbsource;
		this.jdbctemplate=new JdbcTemplate(dbsource);
	}


	public int adminLogin(String username, String password)

	{
		int result=jdbctemplate.queryForInt(IQueryMapper.admin_login,username,password);
		return result;
	}
	
	public int addFlightFare(FlightFareDTO flightfare)
	{	
		int result = jdbctemplate.update("insert into flightfare values (?,?,?,?,?,?)",flightfare.getFlightObj().getFlightNumber(),flightfare.getBusinessClassPrice(),flightfare.getEconomyClassPrice(),flightfare.getEarlierBooking(),flightfare.getIntermediateBooking(),flightfare.getCurrentBooking());
		return result;
	}
	public int updateFare(int newbussinessprice,int neweconomyprice, String flightnumber)
	{
		int result = jdbctemplate.update("update flightfare set  BUSINESSCLASSPRICE = ? , ECONOMYCLASSPRICE = ? where FLIGHTNUMBER = ?",newbussinessprice,neweconomyprice,flightnumber);
		return result;
	}
	public List<FlightFareDTO> viewAllFlightFare()
	{
		List<FlightFareDTO> farelist = jdbctemplate.query("select * from flightfare",new FlightFareMapper());
		return farelist;
	}
	public int updateFlightStatus(String status, String flightnumber)
	{
		int result = jdbctemplate.update("update flight set STATUS = ? where FLIGHTNUMBER = ?",status,flightnumber);
		return result;
	}
	
}
