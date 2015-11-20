package testweb;

import static org.junit.Assert.*;

import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.script.Invocable;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

import org.junit.Test;

public class TestJS {

//	@Test
	public void test() {
		fail("Not yet implemented");
	}
	
//	@Test
	public void testjs() throws ScriptException, NoSuchMethodException{
		ScriptEngineManager mgr = new ScriptEngineManager();    
		ScriptEngine engine = mgr.getEngineByExtension("js"); 
		engine.eval("function test(x){return x+' this is test js in java'}");
		Invocable inv = (Invocable) engine;
		System.out.println(inv.invokeFunction("test","laaaa"));
	}
	@Test
	public void testJs1() throws ScriptException, NoSuchMethodException, FileNotFoundException, ClassNotFoundException, SQLException{
		ScriptEngineManager mgr = new ScriptEngineManager();    
		ScriptEngine engine = mgr.getEngineByExtension("js"); 
		// 
		engine.eval(new java.io.FileReader("/Users/mac/Documents/MyWorkspace/HelloWorld/src/test/java/testweb/TEST_jdk1.8_Nashorn_mysql_synchronize_table.js"));
		Invocable inv = (Invocable) engine;
		String[] strArray = {"d_code_map","service_inst_range","prov_inst_tpl","service_inst_tpl","inst_tpl_instance","inst_tpl_instance_rel","mvno_service_right","mvno_api_right_prov","mvno_api_right","mvno_tenseg_right"}; 
		// 加载驱动程序 TODO ??
		Connection source = null;
		Connection target = null;
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			// 连续数据库
			source = DriverManager.getConnection("jdbc:mysql://192.168.10.168:3306/ESBCFGDB2", "dbesbcfg", "dbesbcfg");
			// 连续数据库
			target = DriverManager.getConnection("jdbc:mysql://192.168.10.168:3306/ESBCFGDB", "dbesbcfg", "dbesbcfg");
			inv.invokeFunction("mysql_synchronize_table",source,target,strArray);
			System.out.println("end");
		}catch(Exception e){
			System.out.println(e);
		}finally{
			source.close();
			target.close();
			
		}

	}

}
