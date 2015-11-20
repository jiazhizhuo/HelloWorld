package testweb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import web.domain.User;
import web.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(loader = SpringApplicationContextLoader.class)
//@ContextConfiguration(locations="classpath:springmvc-servlet.xml")
//@ContextConfiguration(locations="classpath:applicationContext.xml")
@ContextConfiguration(locations={"classpath:applicationContext.xml","classpath:springmvc-servlet.xml"})
public class UserServiceTest {
	private static Logger logger = Logger.getLogger("service");
	
	private	ApplicationContext ac = null;

	@Resource()
	private UserService userService=null;
	
//	@Before
//	public void before(){
//		ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml","classpath:springmvc-servlet.xml");
//		userService = (UserService)ac.getBean("userService");
//	}
	
//	@Test
	public void test1(){
		logger.info("test1");
		User user = userService.getUserByName("name");
		System.out.println(user.toString());
		logger.info("value:"+user.toString());
	}
//	@Test
	public void test2(){
		System.out.println("test2");
		logger.info("test2");
		try {
			System.out.println(Class.forName("com.mysql.jdbc.Driver"));
			userService.addUser("my id","my name", "my password");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		System.out.println("test2 end");
	}
	@Test
	public void testGetUserByName(){
		User u = userService.getUserByName("my name");
		logger.info(u.toString());
	}
	
//	@Test
	public void test3(){
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blog", "root", "1234");
			Statement st =con.createStatement();
			st.executeUpdate("insert into user(name,password) values('name','password')");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
//	@Test
	public void test4(){
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blog", "root", "1234");
			Statement st =con.createStatement();
			st.executeQuery("select * from user");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void test5(){
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/blog", "root", "1234");
			PreparedStatement pt =con.prepareStatement("sql ");
			pt.setString(1, "");
			pt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
