package com.inventory.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.inventory.dao.LoginDao;
import com.inventory.entity.Login;


public class LoginService {
	@Autowired
	private LoginDao loginDao;
	
	public String checkLoginEntry(Login login){
		return loginDao.checkLoginEntry(login);
	}
}
