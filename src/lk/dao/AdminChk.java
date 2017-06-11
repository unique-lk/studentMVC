package lk.dao;

import java.sql.*;

public class AdminChk {

	public boolean admincheck(AdminBean ab)throws Exception{
		boolean flag=false;
		DBcon dbc=null;
		Statement stmt=null;
		ResultSet rs=null;
		String sql="";
		
		
		
		sql="select top 1 * from admin where admin_name='" +ab.getAdmin_name()+ "'";
         try{
		dbc=new DBcon();    
         stmt=dbc.getConn().createStatement();
         rs=stmt.executeQuery(sql);
         if(rs.next()){
        	 if(rs.getString("admin_password").equals(ab.getAdmin_password())){
        		 ab.setAdmin_right(rs.getInt("admin_right"));
        		 flag=true;
        	 }
         }
         }catch(Exception e){
        	 throw e;
         }
         finally{
        	 if(stmt!=null){
        	 stmt.close();
        	 }
         }

		return flag;
	}
	
	
	
}
