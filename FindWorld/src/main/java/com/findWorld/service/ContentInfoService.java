package com.findWorld.service;

import java.util.List;

import com.findWorld.bean.ContentInfo;

public interface ContentInfoService {

	/**
	 * 初始化查询Home页Blog内容展示
	 * */
	public List<ContentInfo> initHomeAllContent();
	
	/**
	 * 根据ID查询用户
	 * 
	 * @param userId
	 * @author liyt
	 * @return
	 */
	ContentInfo selectContentById(Integer contentId);

}
