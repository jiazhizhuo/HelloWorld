package web.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import web.domain.Blog;
import web.domain.User;
import web.service.BlogService;
import web.service.UserService;

@org.springframework.stereotype.Controller
public class Controller {
	public Controller() {
		System.out.println("Loading == Class Controller");
	}
	
	
	private static Logger logger = Logger.getLogger("service");
	@Resource
	private UserService userService;
	@Resource
	private BlogService blogService;
	
	@RequestMapping("/register")
	public String toRegister(User user){
		logger.info(user.toString());
		userService.addUser(user);
		return "login";
	}
	
	@RequestMapping("/login")
	public String toLogging(String id, String password,HttpSession session){
		logger.info("id:"+id);
		logger.info("password:"+password);
		User user = userService.getUserById(id);
		if(user == null){
			return "login";
		}
		logger.info(user.toString());
		if(user.getPassword().equals(password)){
			session.setAttribute("user", user);
			return "index";
		}else{
			return "login";
		}
	}
//	@RequestMapping("/login")
//	public ModelAndView toLogging(String id, String password,HttpSession session){
//		logger.info("id:"+id);
//		logger.info("password:"+password);
//		return null;
//	}
	
	@RequestMapping("/cancel")
	public String toCancel(HttpSession session){
		logger.info("toCancel ");
		session.invalidate();
		return "index";
	}
	
	@RequestMapping("/pages/user/saveBlog")
	public ModelAndView saveBlog(String title, StringBuffer blogContent, String briefInfo, Date createTime
			, HttpSession session,HttpServletRequest request,HttpServletResponse response){
		logger.info("saveBlog");
		logger.info("title:"+title);
		logger.info("blogContent:"+blogContent);
		logger.info("briefInfo:"+briefInfo);
		logger.info("createTime:"+createTime.getTime());//
		logger.info("realPath=request.getServletContext().getRealPath(\"/\"):"+request.getServletContext().getRealPath("/"));
		String realPath = request.getServletContext().getRealPath("/");
		User user = (User) session.getAttribute("user");
		logger.info("user:"+user.toString());
		blogService.addBlog(realPath,title,blogContent,briefInfo,user,createTime);
		
		return new ModelAndView("redirect:/blog.jsp"); 
		
	}
	
	@RequestMapping("/getBlogs")
	@ResponseBody
	public  List getBlogs(HttpSession session){
//		logger.info("controller --- getBlogs");
		User user = (User)session.getAttribute("user");
		if(user == null){
			user = new User();
			user.setId("jzz");
		}
		List infoList = blogService.getBlogsInfo(user);
//		logger.info(infoList.toString());
		return infoList;
	}
	
	@RequestMapping("/uploadFile")
//	@RequestMapping(value = "/uploadFile", headers = "content-type=multipart/*", method = RequestMethod.POST)
	public ModelAndView uploadFile(HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException{
		// 1.以字节流的方式进行文件上传
//		new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
		
		
//		MultipartHttpServletRequest multipartRequest = null;
//		if(request instanceof MultipartHttpServletRequest){
//			// 转型为MultipartHttpRequest(重点的所在)
//			multipartRequest = (MultipartHttpServletRequest) request;
//		}else
//		{
//			CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
//			commonsMultipartResolver.setDefaultEncoding("utf-8");
//			multipartRequest = commonsMultipartResolver.resolveMultipart(request);
//		}
//		request = multipartRequest;
		logger.info("uploadFile(), request.getContentType():"+request.getContentType());
	    
	    // 2.使用 springMVC 的解析器进行上传
		// 创建一个通用的多部分解析器
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getServletContext());
		// 判断 request 是否有文件上传，即多部分请求
		if(multipartResolver.isMultipart(request)){
			// 转换成多部分 request
			logger.info("here");
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;
			logger.info("here2");
			// 取得 request 中的所有文件名
			Iterator<String> iter = multiRequest.getFileNames();
			while(iter.hasNext()){
				// 记录上传过程起始时间标记，用来计算上传时间 
				long startTime = System.nanoTime();
				// 取得上传文件
				MultipartFile file = multiRequest.getFile(iter.next());
				if(file != null){
					// 取得当前上传的文件名称
					String fileName = file.getOriginalFilename();
					if(file != null){  
						logger.info("fileName:"+fileName);
						// 重命名上传后的文件名；
						fileName = fileName+"_"+new Date().getTime();
						logger.info("fileNameNew:"+fileName);
						String path = request.getServletContext().getRealPath("/")+"uploadFile/"+fileName;
						File localFile = new File(path);
						logger.info("savePath:"+path);
						if(!localFile.getParentFile().exists()){// 初始化目录
				        	localFile.getParentFile().mkdirs();		        	
				        }
						file.transferTo(localFile);
					}
				}
				long lastedTime = System.nanoTime()-startTime;
				logger.info("lastedTime:"+lastedTime+"ns");
			}
			
		}else{
			logger.error("in uploadFile(): request isn't Multipart");
//			throw new RuntimeException("request isn't Multipart");
		}
		return new ModelAndView("redirect:/fileManager.jsp");
//		return null;
	}
}
