<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="lk.dao.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
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
			outline:none;
		}
		input[type="number"]{
			display:inline-block;
			width:153px;
		}
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
  </head>
  
  <body>
  

  <%
    Object oalist=request.getAttribute("adminlist");
    ArrayList<AdminBean> alist=null;
   if(null!=oalist){
     alist=(ArrayList<AdminBean>)oalist;
   %>
   
   
   <%
    Iterator<AdminBean> it=alist.iterator();
      while(it.hasNext()){
       AdminBean ab =null;
        ab=it.next();
   
    %>
   
<form id="form1" name="form1" method="post" action="ModifyAdminServlet">
   <table width="389" border="0" align="center">
   
    <tr>
      <td colspan="2"><div align="center"><span class="STYLE1">修改个人登录信息</span></div></td>
    </tr>
    <tr>
      <td width="162" height="31">用户姓名</td>
      <td width="217"><label>
        <input name="admin_name" type="text" required="required" value="<%=ab.getAdmin_name() %>" ></input>
         <input name="admin_id"  value="<%=ab.getAdmin_ID()%>" hidden/>
         <input name="admin_right"  value="<%=ab.getAdmin_right()%>" hidden/>
      </label></td>
    </tr>
    <tr>
      <td width="162" height="31">用户密码</td>
      <td width="217"><label>
        <input name="admin_password" type="password" required="required" value="<%=ab.getAdmin_password() %>" />
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label>
        <input type="submit" name="Submit" value="确定修改" />
      </label></td>
    </tr>
  </table>
</form>
   
      <%
       }
   
   }
   %>
<p><a class="btn" href="welcome.jsp">返回菜单页</a></p>
 
 
 
 
  </body>
</html>
