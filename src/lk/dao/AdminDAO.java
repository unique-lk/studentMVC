package lk.dao;

import java.sql.*;


import java.util.ArrayList;
import java.util.List;


import lk.dao.DBcon;

public class AdminDAO  {
	DBcon db=null;

	public AdminDAO(){
       this.db=new DBcon();
	}
	
	
	
	//按照姓名查询 
	public ArrayList<AdminBean>  doSelectByName(String name) throws Exception {
		ArrayList<AdminBean> adminlist=null;
		 Statement stmt =null;
		 ResultSet rs=null;
		 String sql="select * from admin where admin_name='" + name+"'";
		 AdminBean ab=null;
		 System.err.println(sql);
		 try{
		 stmt=db.getConn().createStatement();
		 rs=stmt.executeQuery(sql);
		 adminlist=new ArrayList<AdminBean>();
		 while(rs.next()){
			 ab=new AdminBean();
			 ab.setAdmin_ID(rs.getInt("admin_ID"));
			 ab.setAdmin_name(rs.getString("admin_name"));
			 ab.setAdmin_password(rs.getString("admin_password"));
			 ab.setAdmin_right(rs.getInt("admin_right"));
		     adminlist.add(ab);
		 }
		 }catch(Exception e){
			 throw e;
		 }
		 finally{
			if(rs!=null) {
				rs.close();
			}
			 if(stmt!=null){
				 stmt.close();
			 }
		 }
		
		return adminlist;
	}

	
	
	
	//修改学生信息表
	
	public boolean doModify(AdminBean ab) throws Exception{
		
		boolean flag=false;
		String sql="";
		PreparedStatement stmt = null;
		sql="update admin set admin_name=?,admin_password=?,admin_right=? where admin_ID=?";

	        try{
	         stmt=db.getConn().prepareStatement(sql);
	         stmt.setString(1, ab.getAdmin_name());
	         stmt.setString(2, ab.getAdmin_password());
	         stmt.setInt(3, ab.getAdmin_right());
	         stmt.setInt(4, ab.getAdmin_ID());
	         int n=stmt.executeUpdate();
	         if(n>0){
	            flag=true;
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
