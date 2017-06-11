<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="lk.dao.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showallsocres.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
		table{
		margin:0 auto;
		}	
		h2{
		text-align:center;}
		
			.btn{
		display:inline-block;
		border-radius:4px;
		margin-bottom:10px;
		width:100px;
		height:30px;
		line-height:30px;
		text-decoration:none;
		
		text-align:center;
		background-color:#2d3741;
		color:#c1d1d5;
		}
	
		.btn:hover{
		color:white;
		background-color:#2bab79;
		border:0px;}
		p{
		width:400px;
		height:30px;
		margin:10px auto;
		text-align:right;
		
		}
	</style>
 
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

  
  <body>
  <h2> 
  	学生信息 
  </h2>
  <p><a class="btn" href="welcome.jsp">返回菜单页</a></p>
  <%
  
   AdminBean ab=null;
   HttpSession session2=request.getSession();
   if(session.getAttribute("loginuser")!=null){
       ab=(AdminBean)session2.getAttribute("loginuser");
   }
    Object oalist=request.getAttribute("scoreslist");
    ArrayList<ScoresBean> alist=null;
   if(null!=oalist){
     alist=(ArrayList<ScoresBean>)oalist;
   %>
   
   <table border="1">
 <tr  bgcolor="yellow">
       <td>SID </td>
        <td>姓名</td>
        <td>性别</td>
        <td>学号</td>
        <td>班级</td>
       <td>语文</td>
       <td>数学</td>
       <td>英语</td>
       <td>物理</td>
       <td>化学</td>
       <td>生物</td>
     <%
   		if(ab.getAdmin_right()==1){
   			
	%>
       <td>操作</td>
       <%} %>
    </tr>
   
   <%
    Iterator<ScoresBean> it=alist.iterator();
      while(it.hasNext()){
       ScoresBean sb =null;
        sb=it.next();
   
    %>
   
    <tr >
       <td><%=sb.getStud_id() %></td>
        <td><%=sb.getStud_name() %></td>
        <td><%=sb.getStud_sex() %></td>
        <td><%=sb.getStud_number() %></td>
        <td><%=sb.getStud_cr() %></td>
       <td><%=sb.getStud_chinese() %></td>
       <td><%=sb.getStud_math() %></td>
       <td><%=sb.getStud_english() %></td>
       <td><%=sb.getStud_phy() %></td>
       <td><%=sb.getStud_chem() %></td>
       <td><%=sb.getStud_bio() %></td>
    <%
   		if(ab.getAdmin_right()==1){
   			
	%>
       <td><a href="SelectScoresByIDServlet?sid=<%=sb.getStud_id() %>" >修改 </a>| <a href="DeleteScroesServlet?sid=<%=sb.getStud_id() %>">删除</a></td>
   <%} %>
    </tr>
   
      <%
       }
   
   }
   %>
   
   </table>
	


	
  </body>
</html>
