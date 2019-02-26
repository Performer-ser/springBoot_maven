package com.aaa.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.aaa.entity.MusicType;
@Mapper
public interface MusicTypeDao {
	public Integer add(MusicType mt);
	public List<MusicType> queryType();
	public MusicType queryByid(Integer id);
	public Integer update(MusicType mt);
	public Integer delete(Integer id);
}
