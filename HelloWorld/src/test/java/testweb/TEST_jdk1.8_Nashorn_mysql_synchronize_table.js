/////////////////////////////////同步表数据 Begin： From MySQL TO MySQL//////////////////////////////////////////////////////////////////////////////
/*
mysql_synchronize_table.js
作者：贾智卓
*/

// // jdk 1.6/1.7 - Rhino
// importPackage(javax.sql);
// importPackage(java.sql);
// importPackage(java.util);
// importPackage(java.lang);
// importPackage(com.tydic.esb.utils);

// importPackage(java.io);
// importPackage(com.tydic.esb.container);
// importPackage(com.tydic.esb.js);
// importPackage(org.apache.commons.io);
// importPackage(java.util.regex);
// importPackage(java.text);
// importPackage(java.util.concurrent);


//jdk 1.8 - Nashorn
Packages.javax.sql;
Packages.java.sql;
Packages.java.util;
Packages.java.lang;
Packages.java.io;
Packages.org.apache.commons.io;
Packages.java.util.regex;
Packages.java.text;
Packages.java.util.concurrent;
Packages.java.lang.System

//Packages.com.tydic.esb.utils;
//Packages.com.tydic.esb.container;
//Packages.com.tydic.esb.js;
function mysql_synchronize_table(a,b,c){
	 Java.type("java.lang.System").out.println("mysql_synchronize_table Begin");
	 ESB={"log":{}};
	 ESB.log={"info":{},"error":{}};
	 var info =Java.type("java.lang.System").out.println;
	 var error=Java.type("java.lang.System").out.println;
	 
	 var System = Java.type("java.lang.System");
	 var info =System.out;
	 var error=Java.type("java.lang.System").out.println;
	 System.out.println("a");
	 
	 (function(){
		 System.out.println("aa");
	 })();
	 function a(){
		 System.out.println("bb");
	 };
	 a();
}

//// mysql_synchronize_table(getVopScMysqlDs(),getVopInfoDs(),['d_code_map','service_inst_range','prov_inst_tpl','service_inst_tpl','inst_tpl_instance','inst_tpl_instance_rel','mvno_service_right','mvno_api_right_prov','mvno_api_right','mvno_tenseg_right']);
//
///*
//输入：
//效果：
//副作用：
//注意：因此方法可能引起sql注入，故，此为内部方法，不可外部使用。
//*/
//function mysql_synchronize_table(sourceDataSource,targetDataSource,tablesNameArray){
//	// Java.type("java.lang.System").out.println("mysql_synchronize_table Begin");
//	// ESB={"log":{}};
//	// ESB.log={"info":{},"error":{}};
//	// ESB.log.info=Java.type("java.lang.System").out.println;
//	// ESB.log.error=Java.type("java.lang.System").out.println;
//
//
//	var maxThreadCount = 30;//自定义线程池最大线程数
//	var threadSet = new HashSet();
//	var esbThreadPoolExecutor = null;
//
//	ESB.log.info('mysql_synchronize_table============Begin');
//	try{
//		esbThreadPoolExecutor = ESB.newJsExecutor(maxThreadCount,maxThreadCount,new ArrayBlockingQueue(100000),new ThreadPoolExecutor.CallerRunsPolicy());
//		var sourceConn = sourceDataSource.getConnection();
//
//		var select_all_columns = ' select table_name,column_name,data_type from information_schema.columns where table_schema=database() and table_name in ('+getTableNameStr(tablesNameArray)+') ';
//		var stmt = sourceConn.createStatement();
//		var rs = stmt.executeQuery(select_all_columns);
//		var infoObj = {};// 数据结构 infoObj == {table_name:{column_name:data_type, ...},table_name2:{column_name:data_type}}
//		while(rs.next()){
//			if(rs.getString(1) in infoObj){// table_name 已载入 infoObj
//			}else{// table_name 未入 infoObj 初始化此对象
//				infoObj[rs.getString(1)]={};
//			}
//			infoObj[rs.getString(1)][rs.getString(2)] = rs.getString(3);
//		}
//		stmt.close();
//
//		/* 使用 Statement() 插入［原因：更方便的拼接sql，而且 PreparedStatement占位符只能为‘？’只能使用‘数字’注入 这样必须保证所有 字段、属性 顺序一致 更难以维护。
//		因此 为防止sql注入 限定此为内部方法，不涉及外部使用，
//		*/
//		for(tableName in infoObj){// 遍历所有表
//			// TODO 多线程将引发问题，未查出原因，疑似内存混乱
//			// threadSet.add(esbThreadPoolExecutor.submit(synchronizeTableProcess,[tableName,infoObj[tableName],sourceDataSource,targetDataSource]));
//			synchronizeTableProcess(tableName,infoObj[tableName],sourceDataSource,targetDataSource);
//		}
//		waitAllThreadComp(threadSet);
//	}catch(e){
//		ESB.log.error('ERROR in mysql_synchronize_table.js :' + e);
//	}finally{
//		try{
//			if(sourceConn!=null && !sourceConn.isClosed()){
//				sourceConn.close();
//			}
//		}catch(e){
//			ESB.log.error('sourceConn 关闭失败：'+e)
//		}
//	}
//	ESB.log.info('mysql_synchronize_table============End')
//	return;
//
//	// 同步某表
//	function synchronizeTableProcess(tableName,table,sourceDataSource,targetDataSource){
//		try{
//			var sourceConn = sourceDataSource.getConnection();
//			var targetConn = targetDataSource.getConnection();
//
//
//			targetConn.setAutoCommit(false);
//			var selStmt = sourceConn.createStatement();//  Statement()
//			var updStmt = targetConn.createStatement();//  Statement()
//			ESB.log.info('Thread synchronize '+tableName+' Begin');
//
//			var count = 0;
//			// var table = infoObj[tableName];
//
//			var selectStr = getSelectSql(tableName, table);// 查询sql
//			var deleteStr = getDeleteSql(tableName);// 删除sql
//
//			// 1. targetConn setAutoCommit(false)
//			// 2. targetConn execute deleteStr
//			// 3. sourceConn execute selectStr -> rs1
//			// 4. move in cycles: use rs1'data to updStmt -> execute update
//
//			updStmt.executeUpdate(deleteStr);// 清空表数据。
//
//			var selRs = selStmt.executeQuery(selectStr);
//			var insertStr = null;
//			while(selRs.next()){
//				count++;
//				insertStr = getInsertSql(selRs, tableName, table);
//				updStmt.executeUpdate(insertStr);// 重新插入数据。
//			}
//			targetConn.commit();
//			ESB.log.info(tableName+' record count: '+count);
//			ESB.log.info('Thread synchronize '+tableName+' End');
//			updStmt.close();
//			selStmt.close();
//		}catch(e){
//			ESB.log.error('selectStr='+selectStr);			
//			ESB.log.error('insertStr='+insertStr);
//			ESB.log.error('Thread synchronize table ['+tableName+'] happen to error :' + e);
//			targetConn.rollback();
//		}finally{
//			try{
//				if(sourceConn!=null && !sourceConn.isClosed()){
//					sourceConn.close();
//				}
//			}catch(e){
//				ESB.log.error('sourceConn 关闭失败：'+e)
//			}
//			try{
//				if(targetConn!=null && !targetConn.isClosed()){
//					targetConn.close();
//				}
//			}catch(e){
//				ESB.log.error('targetConn 关闭失败：'+e)
//			}
//		}
//	}
//
//	//参数：{table_name:{column_name:data_type, ...},table_name2:{column_name:data_type}}
//	function visitTableObj(tables){
//		for(tableName in tables){
//			var table = tables[tableName];
//			ESB.log.info('tableName:'+tableName);
//			for(columnName in table){
//				ESB.log.info('columnName:'+columnName);
//				ESB.log.info('dateType:'+table[columnName]);
//			}
//		}
//	}
//	/*
//	参数：resultSet，dateType，columnName
//	效果：获取 resultSet 当前所指记录 的 columnName 字段 的值。
//	*/
//	function getValueFromRs(resultSet, columnName, dateType){
//		// ESB.log.info(System.getProperty("java.version"));// java jdk 7以上 才支持switch 字符串。 此为 1.6
//		var valueObj = resultSet.getObject(columnName);
//		if(valueObj==null){
//			return null;
//		}else if(dateType=='varchar'||dateType=='char'||dateType=='longtext'||dateType=='datetime'){// 时间以字符串形式插入
//			return '"'+valueObj+'"';// sql 语句中字符串需要加引号
//		}else if(dateType=='int'||dateType=='tinyint'||dateType=='decimal'){// js为弱类型...所以只需返回对象正确就行 不用告诉编译器是什么类型
//			return valueObj;
//		}else{// 对未适配的类型返回异常，防止考虑不到的意外发生。
//			throw('function getValueFromRs() 未适配类型：'+dateType);
//		}
//	}
//	/*
//	参数： nameArray = ['table_name1', 'table_name2', 'table_name3']
//	返回： '"table_name1","table_name2","table_name3"'
//	测试参数： ['table_name1', 'table_name2', 'table_name3']
//	*/
//	function getTableNameStr(nameArray){
//		var str = '';
//		for(i in nameArray){
//			str = str + ', "' + nameArray[i] + '"' ;
//		}
//		return str.replace(', ','');
//	}
//	/*
//	参数：tableName='table_name'; table={column_name:data_type, column_name2:data_type2, ...}
//	返回：'selectSqlStr'
//	测试参数：('table1',{'column1':'date_type1','column2':'date_type2','column3':'date_type3'})
//	*/
//	function getSelectSql(tableName, table){
//		var selectStr1 = ' select ';
//		var selectStr2 = ' from ' + tableName;
//		for(columnName in table){
//			selectStr1 = selectStr1 + ', ' + columnName;// 多出的 ‘ ,’在字符串的最前方，  js无法从右到左替换。
//		}
//		selectStr1 = selectStr1.replace(', ','');
//		return selectStr1+selectStr2;
//	}
//	/*
//	参数：tableName='table1'
//	返回：'deleteSqlStr'
//	测试参数：('table1')
//	*/
//	function getDeleteSql(tableName){
//		var deleteStr = ' delete from '+ tableName;
//		return deleteStr;
//	}
//	/*
//	参数：ResultSet; 'table_name'; {column_name:data_type, column_name2:data_type2, ...}
//	返回：'insert into table1(col1, col2 col2) values('a', 123, 'sss')'
//	*/
//	function getInsertSql(resultSet, tableName, table){
//		var insertStr1 = ' insert into '+tableName+' ( ';// 组装insert sql
//		var insertStr2 = ' ) values ( ';
//		var insertStr3 = ' ) ';
//		var insertStr = null;
//		// 每一条记录的更新都是新的insertStr，［不过 PreparedStatement()的每次 set参数 应该也挺耗资源
//		for(columnName in table){// 设置每个字段的值。
//			insertStr1 = insertStr1 + ', ' + columnName;
//			insertStr2 = insertStr2 + ', ' + getValueFromRs(resultSet, columnName, table[columnName]);
//		}
//		insertStr1 = insertStr1.replace(', ','');
//		insertStr2 = insertStr2.replace(', ','');
//		insertStr =  insertStr1 + insertStr2 + insertStr3;
//		return insertStr;
//	}
//}
//
///////////////////////////////////同步表数据 End： From MySQL TO MySQL//////////////////////////////////////////////////////////////////////////////
//
//
