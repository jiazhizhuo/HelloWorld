package web.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Service;

import web.domain.User;
/** 
 * Service for processing Persons.  
 * <p> 
 * 关于Spring JDBC 和 JdbcTemplate 
 * see http://static.springsource.org/spring/docs/3.0.x/spring-framework-reference/html/jdbc.html 
 * <p> 
 * 关于transactions, see http://static.springsource.org/spring/docs/3.0.x/spring-framework-reference/html/transaction.html 
 */
@Service("userService")
public class UserService {
	
	protected static Logger logger = Logger.getLogger("userService");
	private JdbcTemplate jdbcTemplate;
	
	@Resource(name="dataSource")
	public void setDataSource(DataSource dataSource){
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	// 添加用户
	public void addUser(String id, String name, String password){
		UserService.logger.info("Adding new [User]");
		String sql = "insert into user(id, name, password) values(?,?,?)";
		jdbcTemplate.update(sql,new Object[]{id,name,password});
	}
	public void addUser(User user){
		this.addUser(user.getId(), user.getName(), user.getPassword());
	}

	// 查询用户
	public User getUserByName(String name) {
		String sql = "select id,name,password from user where name=?";
		User user = jdbcTemplate.query(sql, new Object[]{name}, new ResultSetExtractor<User>(){
			@Override
			public User extractData(ResultSet rs) throws SQLException, DataAccessException {
				User u = null;
				if(rs.next()){
					u = new User();
					u.setId(rs.getString("id"));
					u.setName(rs.getString("name"));
					u.setPassword(rs.getString("password"));
				}
				return u;
			}
		});
		// TODO Auto-generated method stub
		return user;
	}
	// 查询用户
	public User getUserById(String id) {
		String sql = "select id,name,password from user where id=?";
		User user = jdbcTemplate.query(sql, new Object[]{id}, new ResultSetExtractor<User>(){
			@Override
			public User extractData(ResultSet rs) throws SQLException, DataAccessException {
				User u = null;
				if(rs.next()){
					u = new User();
					u.setId(rs.getString("id"));
					u.setName(rs.getString("name"));
					u.setPassword(rs.getString("password"));
				}
				return u;
			}
		});
		// TODO Auto-generated method stub
		return user;
	}
}
