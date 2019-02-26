package com.aaa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aaa.dao.AdminsDao;
import com.aaa.entity.Admins;

@Service
public class AdminsService {
	
	@Resource
	AdminsDao ad;
	public List<Admins> queryAdmins(){
		return ad.queryAdmins();
	};
	public Admins queryByid(Integer id){
		return ad.queryByid(id);
	}
	public Integer addUser(Admins a){
		return ad.addUser(a);
	}
	public Admins login(Admins a){
		return ad.login(a);
	};
	public Integer delete(Integer id){
		return ad.delete(id);
	};
	public Integer update(Admins a){
		return ad.update(a);
	};
}
