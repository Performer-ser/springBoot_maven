package com.aaa.dao;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.aaa.entity.Music;
@Mapper
public interface MusicDao {
	public Integer add(Music m);//上传歌曲
	public List<Music> queryMusic();
	public Music queryByid(Integer id);//查询所有歌曲
	public List<Music> queryFuzzy(String name);
	public Music queryUrl(Integer id);//查询歌曲地址
	public Integer addclick(Integer id);//播放次数
	public Integer update(Music m);//上传歌曲
	public Integer delete(Integer id);//上传歌曲
}
