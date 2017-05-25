package edu.mum.rest.service.impl;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import edu.mum.domain.Ride;
import edu.mum.rest.RemoteApi;
import edu.mum.rest.service.RideRestService;

@Component
public class RideRestServiceImpl  implements RideRestService {

	@Autowired
	RemoteApi remoteApi;
	
	public List<Ride> findAll() {
		
		RestTemplate restTemplate = remoteApi.getRestTemplate();
		return Arrays.asList(restTemplate.exchange("http://localhost:8080/CarRideShareApi/rides/", HttpMethod.GET, remoteApi.getHttpEntity(), Ride[].class).getBody());
 	}

	public Ride findOne(Long index) {
		RestTemplate restTemplate = remoteApi.getRestTemplate();
 		return (restTemplate.exchange("http://localhost:8080/CarRideShareApi/rides/"+ index, HttpMethod.GET, remoteApi.getHttpEntity(), Ride.class).getBody());
	}

	public Ride save(Ride ride) {
		RestTemplate restTemplate = remoteApi.getRestTemplate();
		HttpEntity<Ride> httpEntity = new HttpEntity<Ride>(ride, remoteApi.getHttpHeaders());
		restTemplate.postForObject("http://localhost:8080/CarRideShareApi/rides/add/", httpEntity, Ride.class);
 		return null;
	}

	@Override
	public List<Ride> search(String rideOriginCity, String rideDestinationCity) {
		RestTemplate restTemplate = remoteApi.getRestTemplate();
		return Arrays.asList(restTemplate.exchange("http://localhost:8080/CarRideShareApi/rides/search/"+rideOriginCity+"/"+rideDestinationCity, HttpMethod.GET, remoteApi.getHttpEntity(), Ride[].class).getBody());
	}

}
