<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <link rel="stylesheet" href="css/login.css" media="screen" type="text/css" />
  </head>
  
  <body>
  
     <form action="LoginServlet" name="form1" method="post">
     	<h2>管理员登录</h2>
        <div class="border-radius"></div>
        <input type="text" name="admin_name" placeholder="用户名" required="required"/>
        <input type="password" name="admin_password" placeholder="密码" required="required"/>
        <input type="submit" name="submit" value="登录" class="btn" />
    </form>
 <%
  	if(request.getAttribute("error")!=null){
  
   %>
 
 <h3 style="color:red;text-align:center;position:absolute;bottom:33%;left:50%;margin-left:-175px;"><%=request.getAttribute("error") %></h3>
 <% }%>
  </body>
</html>
