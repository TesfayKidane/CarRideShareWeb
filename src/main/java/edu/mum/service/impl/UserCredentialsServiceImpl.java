package edu.mum.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.domain.UserCredentials;
import edu.mum.rest.service.UserCredentialsRestService;

@Service
@Transactional 
public class UserCredentialsServiceImpl implements edu.mum.service.UserCredentialsService {
	
 	@Autowired
	private UserCredentialsRestService userCredentialsRestService;

 	
     public void save( UserCredentials userCredentials) {  		
  		userCredentialsRestService.save(userCredentials);
 	}
  	
 	public UserCredentials findOne(String userName) {
 		return userCredentialsRestService.findOne(userName);
	}
	
	public List<UserCredentials> findAll() {
		return (List<UserCredentials>)userCredentialsRestService.findAll();
	}

 
}
