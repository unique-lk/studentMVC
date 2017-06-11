package lk.dao;

import java.sql.*;

public class DBcon {
private Connection conn=null;

public Connection getConn() throws Exception{
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	conn=DriverManager.getConnection("jdbc:odbc:xscj","","");
	}catch(Exception e){
		throw e;
	}
	return conn;
}
	
public void connClose()throws Exception{
try{
	if(conn!=null){
	conn.close();
	}
	
}catch(Exception e){
	throw e;
}


}	



}
