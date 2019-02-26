package com.aaa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aaa.dao.MusicTypeDao;
import com.aaa.entity.MusicType;

@Service
public class MusicTypeService {
	
	@Resource
	MusicTypeDao md;
	public Integer add(MusicType mt){
		return md.add(mt);
	}
	public List<MusicType> queryType(){
		return md.queryType();
	}
	public MusicType queryByid(Integer id){
		return md.queryByid(id);
	}
	public Integer update(MusicType mt){
		return md.update(mt);
	}
	public Integer delete(Integer id){
		return md.delete(id);
	}
}
