package com.aaa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aaa.dao.MusicDao;
import com.aaa.entity.Music;

@Service
public class MusicService {
	
	@Resource
	MusicDao md;
	
	public Integer add(Music m){	
		return md.add(m);
	}
	public List<Music> queryMusic(){
		return md.queryMusic();
	}
	public Music queryByid(Integer id){
		return md.queryByid(id);
	}
	public List<Music> queryFuzzy(String name){
		return md.queryFuzzy(name);
	}
	public Music queryUrl(Integer id){
		return md.queryUrl(id);
	}
	public Integer addclick(Integer id){
		return md.addclick(id);
	}
	public Integer update(Music m){
		return md.update(m);
	}
	public Integer delete(Integer id){
		return md.delete(id);
	}
}
