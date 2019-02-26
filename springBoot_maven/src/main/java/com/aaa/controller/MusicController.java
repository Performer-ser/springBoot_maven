package com.aaa.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.aaa.entity.Music;
import com.aaa.service.MusicService;

@Controller
public class MusicController {
	
	@Resource
	MusicService ms;
	
	@RequestMapping("add")
	public String addmusic(Music m,MultipartFile music,HttpServletRequest request){
		String originalFilename = music.getOriginalFilename();
		int rs = 0;
		if (null!=originalFilename) {
			String realPath = request.getServletContext().getRealPath("music");
			String fileName = realPath + "/" +originalFilename;
			String url = fileName;
			File newFile=new File(fileName);
			try {
				music.transferTo(newFile);
				m.setUrl(url);
				rs = ms.add(m);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		if (0 != rs) {
			return "admin-music";
		}else{
			return "404";
		}
		
	}
	@RequestMapping("queryMusic")
	@ResponseBody
	public List<Music> queryMusic(){
		List<Music> list = ms.queryMusic();	
		return list;
	}
	@RequestMapping("queryByid")
	@ResponseBody
	public Music queryByid(Integer id){
		Music music = ms.queryByid(id);	
		return music;
	}
	@RequestMapping("queryFuzzy")
	public String queryFuzzy(String name,HttpSession session){
		List<Music> list = ms.queryFuzzy(name);
		session.setAttribute("musiclist",list);
		return "main";
		
	}
	@RequestMapping("play")
	@ResponseBody
	public String queryUrl(Integer id,Model model){
		Music m = ms.queryUrl(id);
		String url = m.getUrl().substring(m.getUrl().lastIndexOf("\\")+1);
		@SuppressWarnings("unused")
		int rs = ms.addclick(id);
		List<Music> music = ms.queryMusic();
		model.addAttribute("list",music);	
		return url;
	}
	@RequestMapping("update")
	@ResponseBody
	public Integer update(Music m){
		Integer rs = ms.update(m);
		return rs;
	}
	@RequestMapping("delete")
	@ResponseBody
	public Integer delete(Integer id){
		Integer rs = ms.delete(id);
		return rs;
	}
}
