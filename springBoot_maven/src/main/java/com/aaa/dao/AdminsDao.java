package com.aaa.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.aaa.entity.Admins;
@Mapper
public interface AdminsDao {
	public List<Admins> queryAdmins();
	public Admins queryByid(Integer id);
	public Integer addUser(Admins a);
	public Integer delete(Integer id);
	public Integer update(Admins a);
	public Admins login(Admins a);
}
