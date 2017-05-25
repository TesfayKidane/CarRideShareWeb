package edu.mum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import edu.mum.domain.User;
import edu.mum.service.UserService;

public class StringToUserConverter implements Converter<String, User>{

	@Autowired
	UserService userService;
	
	@Override
	public User convert(String id) {
        return userService.findOne(Long.parseLong(id));
    }
}
