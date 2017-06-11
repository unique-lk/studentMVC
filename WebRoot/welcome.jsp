<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="lk.dao.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>welcome.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
	*{	
		padding:0px;
		margin:0px;
		magin:0 auto;
		text-align:center;
	}
	@font-face{
	font-family:myFont;
	src:url('fonts/shufa.ttf');}
	div{
		height:80px;
		line-height:80px;
		color:#444;	
		background-color:#2bab79;
		font-family:myFont;
		font-size:28px;}
	a{
		display:inline-block;
		border-radius:4px;
		margin-bottom:30px;
		width:200px;
		height:30px;
		line-height:30px;
		text-decoration:none;
		border:1px solid red;
		text-align:center;
		background-color:#2d3741;
		color:#c1d1d5;
		}
	
		a:hover{
		color:white;
		background-color:#2bab79;}
	</style>
  </head>
  
    <%
   AdminBean ab=null;
   HttpSession session2=request.getSession();
   if(session.getAttribute("loginuser")!=null){
       ab=(AdminBean)session2.getAttribute("loginuser");
   }
    %>
	
  
 
   <%
   		
   		if(ab.getAdmin_right()==1){
   			
	%>
	<div>欢迎管理员<%=ab.getAdmin_name() %>访问！！！！</div>
   <a href="ShowAllScroesServlet" style='margin-top:20px;'>单页显示所有成绩信息</a><br/>
   
    <a href="selectname.jsp">姓名查询学生成绩信息</a><br/>
    <a href="selectcr.jsp">班级查询学生成绩信息</a><br/>
    <a href="addscores.jsp">增加单个学生成绩信息</a><br/>
    <a href="selectAdminServlet?admin_name=<%=ab.getAdmin_name()%>">修改个人登录信息</a><br/>
    <a href="InvalidateServlet">注销登录</a>  
    <%
       }
   		else{
   		
    %>
    <div>欢迎英才中学学生<%=ab.getAdmin_name() %>访问！！！！</div>
    <a href="selectname.jsp" style='margin-top:20px;'>学生的成绩查询</a><br/>
     <a href="SelectScoresByIDServlet?sid=<%=ab.getAdmin_name() %>" style='margin-top:10px;'>个人信息的修改</a><br/>
     <a href="selectAdminServlet?admin_name=<%=ab.getAdmin_name()%>" style='margin-top:10px;'>登录信息的修改</a><br/>
     <a href="InvalidateServlet"  style='margin-top:10px;'>注销登录</a> 
     
     <%
     }
      %>
  
    
  </body>
</html>
