package edu.mum.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.domain.Ride;
import edu.mum.rest.service.RideRestService;
import edu.mum.service.RideService;

@Service
@Transactional 
public class RideServiceImpl implements RideService {
	
	
	@Autowired
	private RideRestService rideRestService;

    public void save( Ride ride) {  		
		rideRestService.save(ride);
	}
	
	
 	public List<Ride> findAll() {
		return (List<Ride>)rideRestService.findAll();
	}

 	public Ride findOne(Long id) {
		return rideRestService.findOne(id);
	}


	@Override
	public List<Ride> search(String rideOriginCity, String rideDestinationCity) {
		return rideRestService.search(rideOriginCity, rideDestinationCity);
	}


}
