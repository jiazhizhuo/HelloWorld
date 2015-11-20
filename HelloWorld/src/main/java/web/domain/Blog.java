package web.domain;

import java.util.Date;

import javax.management.RuntimeErrorException;

import org.apache.ibatis.executor.ExecutorException;

public class Blog {
	int id;
	String userId;
	String filePath;
	String title;
	StringBuffer content;
	String briefInfo;
	Date createTime;
	String realPath;
 
	public Blog() {
		super();
	}
	
	public StringBuffer getContent() {
		return content;
	}

	public void setContent(StringBuffer content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getBriefInfo() {
		return briefInfo;
	}

	public void setBriefInfo(String briefInfo) {
		this.briefInfo = briefInfo;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRealPath() {
		return realPath;
	}

	public void setRealPath(String realPath) {
		this.realPath = realPath;
	}

	public String getFilePath() {
//		throw new RuntimeException(this.getClass().getResource("/").getPath());
//		/Users/mac/Documents/apache-tomcat-7.0.64/wtpwebapps/HelloWorld/WEB-INF/classes/
		if(realPath==null){
			throw new RuntimeException("[realPath==null] can't getFilePath()");
		}
		if(filePath!=null){
			return filePath;
		}
		if(createTime == null){
			throw(new ExecutorException("blog'createTime is null,so can't generate filePath"));
		}
		filePath = realPath+"blogsFile/"+this.getUserId()+"_"+this.getCreateTime().getTime()+"_"+this.getTitle()+".html";
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	@Override
	public String toString() {
		return "Blog [id=" + id + ", userId=" + userId + ", filePath=" + filePath + ", title=" + title + ", content="
				+ content + ", briefInfo=" + briefInfo + ", createTime=" + createTime + ", realPath=" + realPath + "]";
	}

}
