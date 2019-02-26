package com.aaa.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.aaa.entity.User_info;
@Mapper
public interface UserDao {
	public Integer addUser(User_info u);
	public User_info login(User_info u);
	public List<User_info> queryBypage(Integer pagenum,Integer pagesize);
}
