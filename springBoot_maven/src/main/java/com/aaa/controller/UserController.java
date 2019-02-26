package com.aaa.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.entity.User_info;
import com.aaa.service.UserService;

@Controller
public class UserController {

	@Resource
	UserService us;
	
	@RequestMapping("adduser")
	public String addUser(User_info u){
		int rs = us.addUser(u);
		if (0 != rs) {
			return "main";
		}else{
			return "404";
		}	
	}
	@RequestMapping("login")
	public String login(User_info u,HttpSession session){
		User_info user = us.login(u);
		session.setAttribute("list", user);
		if (null != user) {
			return "main";
		}else{
			return "main";
		}	
	}
	@RequestMapping("queryBypage")
	@ResponseBody
	public Map<String,Object> queryBypage(Integer page,Integer limit){
		List<User_info> list = us.queryBypage((page-1)*limit, limit);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("data", list);
		map.put("count", 6);
		map.put("msg","");
		map.put("code", 0);
		return map;
	}
	
}
