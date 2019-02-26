package com.aaa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aaa.dao.UserDao;
import com.aaa.entity.User_info;

@Service
public class UserService {
	
	@Resource
	UserDao ud;
	
	public Integer addUser(User_info u){
		return ud.addUser(u);
	}
	public User_info login(User_info u){
		return ud.login(u);
	}
	public List<User_info> queryBypage(Integer pagenum,Integer pagesize){
		return ud.queryBypage(pagenum, pagesize);
	}
}
