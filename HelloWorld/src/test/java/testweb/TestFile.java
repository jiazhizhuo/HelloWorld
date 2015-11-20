package testweb;

import static org.junit.Assert.*;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;

//import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.apache.commons.io.FileUtils;
import org.apache.ibatis.executor.ExecutorException;
import org.junit.Test;

public class TestFile {

	@Test
	public void test() {
		fail("Not yet implemented");
	}

	@Test 
	public void testWriteFile(){
        try {
			File file = new File("testDir/"+new Date()+".html");
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
	        bufferWritter.write("<h1>h1h1h1h1h11h1h1</h1>");
	        bufferWritter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
//	@Test
	public void testDeleteFile() throws IOException{
		File fileDir = new File("/Users/mac/Documents/VOP资料/应急系统相关文件/脚本4/test/");
		File[] files = fileDir.listFiles();
		
		for(File file : files){
			if(file.getName().equals(".DS_Store"))
				continue;
			System.out.println(file.getName());
			FileUtils.forceDelete(file);// 可以删除目录 和 文件
//			FileUtils.deleteDirectory(file);// 只可以删除目录
		}
	}

}
