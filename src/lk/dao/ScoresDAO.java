package lk.dao;

import java.sql.*;


import java.util.ArrayList;
import java.util.List;


import lk.dao.DBcon;

public class ScoresDAO  {
	DBcon db=null;

	public ScoresDAO(){
       this.db=new DBcon();
	}
	
	
	
    //插入记录操作
	public boolean doInsert(ScoresBean sb) throws Exception {
        boolean flag=false;
        Statement stmt=null;
        String sql="insert into scores(stud_name,stud_sex,stud_cr,stud_number,stud_chinese,stud_math,stud_english,stud_phy,stud_chem,stud_bio) values('" +sb.getStud_name() +
        "','" +sb.getStud_sex()+"'," + sb.getStud_cr() +"," + sb.getStud_number() +"," + sb.getStud_chinese() +"," + sb.getStud_math() +"," + sb.getStud_english() +"," + sb.getStud_phy() +
        "," + sb.getStud_chem() +"," +sb.getStud_bio() +")";
        
   
        
        try{
         stmt= db.getConn().createStatement();
         int n=stmt.executeUpdate(sql);
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
	
	

	//查询所有
	public ArrayList<ScoresBean> doSelectALLScores() throws Exception {
		ArrayList<ScoresBean> scoreslist=null;
		 Statement stmt =null;
		 ResultSet rs=null;
		 String sql="select * from scores";
		 ScoresBean sb=null;
		 
		 
		 try{
		 stmt=db.getConn().createStatement();
		 rs=stmt.executeQuery(sql);
		 scoreslist=new ArrayList<ScoresBean>();
		 while(rs.next()){
			 sb=new ScoresBean();
			 sb.setStud_id(rs.getInt("stud_id"));
			 sb.setStud_sex(rs.getString("stud_sex"));
			 sb.setStud_number(rs.getInt("stud_number"));
			 sb.setStud_cr(rs.getInt("stud_cr"));
			 sb.setStud_name(rs.getString("stud_name"));
			 sb.setStud_chinese(rs.getInt("stud_chinese"));
			 sb.setStud_math(rs.getInt("stud_math"));
		     sb.setStud_english(rs.getInt("stud_english"));
		     sb.setStud_phy(rs.getInt("stud_phy"));
		     sb.setStud_chem(rs.getInt("stud_chem"));
		     sb.setStud_bio(rs.getInt("stud_bio"));
		     scoreslist.add(sb);
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
		
		return scoreslist;
	}

	//按照ID查询 
	public ScoresBean doSelectByID(int id) throws Exception {
		ScoresBean sb=null;
		
		 Statement stmt =null;
		 ResultSet rs=null;
		 String sql="select * from scores where stud_id=" + id;
             
		// System.out.println(sql);
		 try{
		 stmt=db.getConn().createStatement();
		 rs=stmt.executeQuery(sql);
		 while(rs.next()){
			 sb=new ScoresBean();
			 sb.setStud_id(rs.getInt("stud_id"));
			 sb.setStud_name(rs.getString("stud_name"));
			 sb.setStud_sex(rs.getString("stud_sex"));
			 sb.setStud_number(rs.getInt("stud_number"));
			 sb.setStud_cr(rs.getInt("stud_cr"));
			 sb.setStud_chinese(rs.getInt("stud_chinese"));
			 sb.setStud_math(rs.getInt("stud_math"));
		     sb.setStud_english(rs.getInt("stud_english"));
		     sb.setStud_phy(rs.getInt("stud_phy"));
		     sb.setStud_chem(rs.getInt("stud_chem"));
		     sb.setStud_bio(rs.getInt("stud_bio"));
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
		  System.out.println(sb.getStud_name());
		return sb;
	}
	
	
	
	//按照姓名查询 
	public ArrayList<ScoresBean>  doSelectByName(String name) throws Exception {
		ArrayList<ScoresBean> scoreslist=null;
		 Statement stmt =null;
		 ResultSet rs=null;
		 String sql="select * from scores where stud_name='" + name+"'";
		 ScoresBean sb=null;
		 System.err.println(sql);
		 try{
		 stmt=db.getConn().createStatement();
		 rs=stmt.executeQuery(sql);
		 scoreslist=new ArrayList<ScoresBean>();
		 while(rs.next()){
			 sb=new ScoresBean();
			 sb.setStud_id(rs.getInt("stud_id"));
			 sb.setStud_name(rs.getString("stud_name"));
			 sb.setStud_sex(rs.getString("stud_sex"));
			 sb.setStud_number(rs.getInt("stud_number"));
			 sb.setStud_cr(rs.getInt("stud_cr"));
			 sb.setStud_chinese(rs.getInt("stud_chinese"));
			 sb.setStud_math(rs.getInt("stud_math"));
		     sb.setStud_english(rs.getInt("stud_english"));
		     sb.setStud_phy(rs.getInt("stud_phy"));
		     sb.setStud_chem(rs.getInt("stud_chem"));
		     sb.setStud_bio(rs.getInt("stud_bio"));
		     scoreslist.add(sb);
		     System.out.println(sb);
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
		
		return scoreslist;
	}
	
	
	
	
	
	
	
	//按照班级查询 
	public ArrayList<ScoresBean>  doSelectByCr(String cr) throws Exception {
		ArrayList<ScoresBean> scoreslist=null;
		 Statement stmt =null;
		 ResultSet rs=null;
		 String sql="select * from scores where stud_cr=" + cr;
		 ScoresBean sb=null;
		 System.err.println(sql);
		 try{
		 stmt=db.getConn().createStatement();
		 rs=stmt.executeQuery(sql);
		 scoreslist=new ArrayList<ScoresBean>();
		 while(rs.next()){
			 sb=new ScoresBean();
			 int id=rs.getInt("stud_id");
			 sb.setStud_id(id);
			 sb.setStud_name(rs.getString("stud_name"));
			 sb.setStud_sex(rs.getString("stud_sex"));
			 sb.setStud_number(rs.getInt("stud_number"));
			 sb.setStud_cr(rs.getInt("stud_cr"));
			 sb.setStud_chinese(rs.getInt("stud_chinese"));
			 sb.setStud_math(rs.getInt("stud_math"));
		     sb.setStud_english(rs.getInt("stud_english"));
		     sb.setStud_phy(rs.getInt("stud_phy"));
		     sb.setStud_chem(rs.getInt("stud_chem"));
		     sb.setStud_bio(rs.getInt("stud_bio"));
		     sb.setStud_sum(sum(id));
		     scoreslist.add(sb);
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
		
		return scoreslist;
	}
	
	
	
	
	
	
	//修改学生信息表
	
	public boolean doModify(ScoresBean sb) throws Exception{
		
		boolean flag=false;
		String sql="";
		PreparedStatement stmt = null;
		sql="update scores set stud_name=?,stud_sex=?,stud_cr=?,stud_number=?,stud_chinese=?,stud_math=?,stud_english=?,stud_phy=?,stud_chem=?,stud_bio=? where stud_id=?";

	        try{
	         stmt=db.getConn().prepareStatement(sql);
	         stmt.setString(1, sb.getStud_name());
	         stmt.setString(2, sb.getStud_sex());
	         stmt.setInt(3, sb.getStud_cr());
	         stmt.setInt(4, sb.getStud_number());
	         stmt.setInt(5, sb.getStud_chinese());
	         stmt.setInt(6, sb.getStud_math());
	         stmt.setInt(7, sb.getStud_english());
	         stmt.setInt(8, sb.getStud_phy());
	         stmt.setInt(9, sb.getStud_chem());
	         stmt.setInt(10, sb.getStud_bio());
	         stmt.setInt(11, sb.getStud_id());
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
	
	
	
	
	//修改系统用户信息表
	
	public boolean doModifyByAdmin(ScoresBean sb) throws Exception{
		
		boolean flag=false;
		String sql="";
		PreparedStatement stmt = null;
		sql="update scores set stud_name=?,stud_sex=?,stud_cr=?,stud_number=?,stud_chinese=?,stud_math=?,stud_english=?,stud_phy=?,stud_chem=?,stud_bio=? where stud_id=?";

	        try{
	         stmt=db.getConn().prepareStatement(sql);
	         stmt.setString(1, sb.getStud_name());
	         stmt.setString(2, sb.getStud_sex());
	         stmt.setInt(3, sb.getStud_cr());
	         stmt.setInt(4, sb.getStud_number());
	         stmt.setInt(5, sb.getStud_chinese());
	         stmt.setInt(6, sb.getStud_math());
	         stmt.setInt(7, sb.getStud_english());
	         stmt.setInt(8, sb.getStud_phy());
	         stmt.setInt(9, sb.getStud_chem());
	         stmt.setInt(10, sb.getStud_bio());
	         stmt.setInt(11, sb.getStud_id());
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
	
	
	//删除
	public boolean delete(int id) throws Exception {
		boolean flag=false;
		ScoresBean sb=null;
		
		 Statement stmt =null;
		 boolean rs;
		 String sql="delete * from scores where stud_id=" + id;
             
		// System.out.println(sql);
		 stmt=db.getConn().createStatement();
		 rs=stmt.execute(sql);
		 flag=rs;

		return flag;
	 }



	public ArrayList<ScoresBean> orderScoreBySubjet(String subject, String classId) throws Exception {
		 ArrayList<ScoresBean> scoreslist=null;
		 Statement stmt =null;
		 ResultSet rs=null;
		 String sql="select * from scores where stud_cr="+classId+" order by "+subject+" desc";
		 ScoresBean sb=null;
		 System.err.println(sql);
		 try{
		 stmt=db.getConn().createStatement();
		 rs=stmt.executeQuery(sql);
		 scoreslist=new ArrayList<ScoresBean>();
		 while(rs.next()){
			 sb=new ScoresBean();
			 int id=rs.getInt("stud_id");
			 sb.setStud_id(id);
			 sb.setStud_name(rs.getString("stud_name"));
			 sb.setStud_sex(rs.getString("stud_sex"));
			 sb.setStud_number(rs.getInt("stud_number"));
			 sb.setStud_cr(rs.getInt("stud_cr"));
			 sb.setStud_chinese(rs.getInt("stud_chinese"));
			 sb.setStud_math(rs.getInt("stud_math"));
		     sb.setStud_english(rs.getInt("stud_english"));
		     sb.setStud_phy(rs.getInt("stud_phy"));
		     sb.setStud_chem(rs.getInt("stud_chem"));
		     sb.setStud_bio(rs.getInt("stud_bio"));
		     sb.setStud_sum(sum(id));
		     scoreslist.add(sb);
		     System.out.println(sb);
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
		
		return scoreslist;
	}



	private int sum(int id) {
		 Statement stmt =null;
		 ResultSet rs=null;
		 int sum=0;
		 String sql="select stud_chinese+stud_math+stud_english+stud_phy+stud_chem+stud_bio from scores where stud_id="+id;
		 try {
			 stmt=db.getConn().createStatement();
			rs=stmt.executeQuery(sql);
			
			 while(rs.next()){
				 sum=rs.getInt(1);
			 }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sum;
	}



	public ArrayList<ScoresBean> orderBySum(String classId) throws Exception {
		ArrayList<ScoresBean> scoreslist=null;
		scoreslist=doSelectByCr(classId);
		scoreslist=sort(scoreslist);
		return scoreslist;
		
	}
	
	private ArrayList<ScoresBean> sort(ArrayList<ScoresBean> scoreslist){
		
		for(int i=0;i<scoreslist.size()-1;i++){
			for(int j=0;j<scoreslist.size()-1-i;j++){
				if(scoreslist.get(j).getStud_sum()<scoreslist.get(j+1).getStud_sum()){
					ScoresBean bean1=new ScoresBean();
					bean1=scoreslist.get(j);
					ScoresBean bean2=new ScoresBean();
					bean2=scoreslist.get(j+1);
					scoreslist.remove(j);
					scoreslist.add(j,bean2);
					scoreslist.remove(j+1);
					scoreslist.add(j+1,bean1);
				}
			}
		}
	     System.out.println(scoreslist);
		return scoreslist;
	}
}
