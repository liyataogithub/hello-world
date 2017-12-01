package com.findWorld.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.findWorld.bean.ContentInfo;
import com.findWorld.bean.User;
import com.findWorld.service.ContentInfoService;

@Controller
public class ContentInfoController {
	static Logger logger = Logger.getLogger(ContentInfoController.class);
	@Autowired
	private ContentInfoService contentInfoService;
	/**
	 * 初始化加载Home页文章内容
	 * @param request
	 * @param response
	 *@author LYT
	 */
	@RequestMapping(value = "initHomeAllContent.do", method = RequestMethod.POST)
	@ResponseBody
	public void loadAllMenus(HttpServletRequest request,HttpServletResponse response) {
		HttpSession session = request.getSession();
		//加载用户头像，用户名相关信息
		//User userInfo = (User) session.getAttribute("user");
		//后续根据用户关注的文章类型，或者 作者 ，优化加载推荐文章。
		
		//加载前20条文章(根据发布时间排序)
		List<ContentInfo> contentList = contentInfoService.initHomeAllContent();
		response.setContentType("application/json;charset=UTF-8");
		PrintWriter pw = null;
		JSONObject json = new JSONObject();
		json.put("contentList",contentList );
		response.setCharacterEncoding("utf-8");
		try {
			pw = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
			logger.error(e);
		}
		pw.print(json); 
	}
	
	/**
	 * 跳转到Blog内容页
	 * @param request
	 * @param response
	 *2016年11月29日
	 *@author LYT
	 */
	 	@RequestMapping("/toBolgInfo.do")    
	    public ModelAndView getIndex(HttpServletRequest request,HttpServletResponse response){
	 		//根据ID查询Blog内容
	 		String contentId = request.getParameter("id");
	 		ContentInfo info = contentInfoService.selectContentById(Integer.parseInt(contentId));
	 		//返回查询的数据
	        ModelAndView mav = new ModelAndView("blogInfo");
	        mav.addObject("blogInfo", info);
	        return mav;    
	    }
}
