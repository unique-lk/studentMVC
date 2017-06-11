<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectname.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
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
    <form id="form1" name="form1" method="post" action="SelectScoresByCrServlet">
  <table width="389" border="0" align="center">
    <tr>
      <td colspan="2"><div align="center"><span class="STYLE1">根据班级查询学生信息</span></div></td>
    </tr>
      <p><a class="btn" href="welcome.jsp">返回菜单页</a></p>
    <tr>
      <td width="162" height="31">查询班级</td>
      <td width="217"><label>
        <input name="stud_cr" type="text" value="" />
      </label></td>
    </tr>
       <tr>
      <td width="217"><label>
        <input type="submit" name="Submit" value="查找记录" />
      </label></td>
    </tr>
    </table>
</form>
 
  </body>
</html>
