package edu.mum.service;

import java.util.List;

import edu.mum.domain.Ride;
 
public interface RideService {

	public void save(Ride Item);
 	public List<Ride> findAll();	 
 	public Ride findOne(Long id);
	public List<Ride> search(String rideOriginCity, String rideDestinationCity);

}
