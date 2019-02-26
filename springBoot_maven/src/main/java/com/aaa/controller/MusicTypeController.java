package com.aaa.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.entity.MusicType;
import com.aaa.service.MusicTypeService;

@Controller
@RequestMapping("type")
public class MusicTypeController {
	
	@Resource
	MusicTypeService ms;
	@RequestMapping("add")
	public String add(MusicType mt){
		Integer rs = ms.add(mt);
		if (0 != rs) {
			return "admin-type";
		}else{
			return "404";
		}	
	}
	@RequestMapping("queryType")
	@ResponseBody
	public List<MusicType> queryType(){
		List<MusicType> list = ms.queryType();
		return list;
	}
	@RequestMapping("queryByid")
	@ResponseBody
	public MusicType queryByid(Integer id){
		MusicType type = ms.queryByid(id);
		return type;
	};
	@RequestMapping("update")
	@ResponseBody
	public Integer update(MusicType mt){
		Integer rs = ms.update(mt);
		return rs;
	}
	@RequestMapping("delete")
	@ResponseBody
	public Integer delete(Integer id){
		Integer rs = ms.delete(id);
		return rs;
	}
	
}
