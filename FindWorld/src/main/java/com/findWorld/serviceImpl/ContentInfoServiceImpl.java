package com.findWorld.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.findWorld.bean.ContentInfo;
import com.findWorld.dao.ContentInfoDao;
import com.findWorld.service.ContentInfoService;

@Service
public class ContentInfoServiceImpl implements ContentInfoService{

	@Autowired
	private ContentInfoDao contentInfoDao;
	/**
	 * 初始化查询Home页Blog内容展示
	 * */
	public List<ContentInfo> initHomeAllContent() {
		return contentInfoDao.initHomeAllContent();
	}
	
	/**
	 * 根据ID查询用户
	 * 
	 * @param userId
	 * @author liyt
	 * @return
	 */
	public ContentInfo selectContentById(Integer contentId) {
	    return contentInfoDao.selectContentById(contentId);
	}

}
