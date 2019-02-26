package com.aaa.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.entity.Admins;
import com.aaa.service.AdminsService;

@Controller
@RequestMapping("admin")
public class AdminsController {
	
	@Resource
	AdminsService as;
	@RequestMapping("add")
	public String addUser(Admins a){
		Integer rs = as.addUser(a);
		if (0 != rs) {
			return "admin-user";
		}else{
			return "404";
		}
	}
	@RequestMapping("login")
	public String login(Admins a){
		Admins admin = as.login(a);
		if (null != admin) {
			return "admin-music";
		}else{
			return "404";
		}	
	}
	@RequestMapping("queryAdmins")
	@ResponseBody
	public List<Admins> queryAdmins(){
		List<Admins> list = as.queryAdmins();
		return list;
	};
	@RequestMapping("queryByid")
	@ResponseBody
	public Admins queryByid(Integer id){
		Admins admins = as.queryByid(id);
		return admins;
	};
	@RequestMapping("update")
	@ResponseBody
	public Integer update(Admins a){
		Integer rs = as.update(a);
		return rs;	
	}
	@RequestMapping("delete")
	@ResponseBody
	public Integer delete(Integer id){
		Integer rs = as.delete(id);		
		return rs;		
	}
}
