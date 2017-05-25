package edu.mum.rest.service;

import java.util.List;

import org.springframework.stereotype.Component;

import edu.mum.domain.Ride;

@Component
public interface RideRestService {

 	public List<Ride> findAll();

	public Ride findOne(Long index);

	public Ride save(Ride product);

	public List<Ride> search(String rideOriginCity, String rideDestinationCity);

}
