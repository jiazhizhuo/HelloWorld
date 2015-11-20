package web.service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.apache.ibatis.executor.ExecutorException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.datasource.DataSourceUtils;
import org.springframework.stereotype.Service;

import com.mchange.v2.c3p0.DataSources;

import web.domain.Blog;
import web.domain.User;
/** 
 */
@Service("blogService")
public class BlogService {
	
	protected static Logger logger = Logger.getLogger("blogService");
	private JdbcTemplate jdbcTemplate;
	
	@Resource(name="dataSource")
	public void setDataSource(DataSource dataSource){
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	// 保存
	public void addBlog(Blog blog){
		BlogService.logger.info("Adding new [blog]");
		String sql = "insert into blogs(user_id,file_path,title,brief_info,create_time) values(?,?,?,?,?)";
		jdbcTemplate.update(sql,new Object[]{blog.getUserId(), blog.getFilePath(), blog.getTitle(),blog.getBriefInfo(),blog.getCreateTime()});
		// 存储文件
        try {
			File file = new File(blog.getFilePath());
BlogService.logger.info(file.getAbsolutePath());
			if(file.exists()==false){
		        if(!file.getParentFile().exists()){// 初始化目录
		            file.getParentFile().mkdirs();		        	
		        }
				file.createNewFile();
			}else{
				throw(new ExecutorException("file existed error"));
			}
			FileWriter fileWritter = new FileWriter(file);
	        BufferedWriter bufferWritter = new BufferedWriter(fileWritter);
	        bufferWritter.write(blog.getContent().toString());
	        bufferWritter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 保存
	public void addBlog(String realPath,String title, StringBuffer blogContent, String briefInfo, User user, Date createTime) {
		BlogService.logger.info("Adding new [b。。l。。o。。g]");
		// TODO Auto-generated method stub
		Blog blog = new Blog();
		blog.setRealPath(realPath);
		blog.setTitle(title);
		blog.setUserId(user.getId());
		blog.setContent(blogContent);
		blog.setBriefInfo(briefInfo);
		blog.setCreateTime(createTime);
		addBlog(blog);
		
		
	}
	
	public List getBlogsInfo(User user){
		BlogService.logger.info("Adding new [blog]");
		String sql = " select title, brief_info, create_time from blogs where user_id=? ";
		List list = jdbcTemplate.queryForList(sql,new Object[]{user.getId()});
		
		return list;
	}
}
