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
		width:200px;
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
		.container{
		width:520px;
		margin:30px auto;
	
		}
		.container .paihang{
			margin:10px 30px;
			float:left;
		}
	</style>
 
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

  
  <body>
  <h2><br>  
  	</h2><h2>学生信息  
  </h2>
  <p><a class="btn" href="welcome.jsp">返回菜单页</a></p>
  <%
  	int classId=0;
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
       <td>总分</td>
     <%
     if(ab!=null)
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
   		 classId=sb.getStud_cr();
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
       <td><%=sb.getStud_sum() %></td>
    <%
    if(ab!=null)
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
<div class="container">
<a class="btn paihang" href="orderServlet?subject=stud_chinese&classId=<%=classId%>">按照语文成绩排行</a>
<a class="btn paihang" href="orderServlet?subject=stud_math&classId=<%=classId%>">按照数学成绩排行</a>
<a class="btn paihang" href="orderServlet?subject=stud_english&classId=<%=classId%>">按照英语成绩排行</a>
<a class="btn paihang" href="orderServlet?subject=stud_phy&classId=<%=classId%>">按照物理成绩排行</a>
<a class="btn paihang" href="orderServlet?subject=stud_chem&classId=<%=classId%>">按照化学成绩排行</a>
<a class="btn paihang" href="orderServlet?subject=stud_bio&classId=<%=classId%>">按照生物成绩排行</a>
<a class="btn paihang" href="OrderBySum?classId=<%=classId%>">按照学生总分排行</a>
</div>
  </body>
</html>
