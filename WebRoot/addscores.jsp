<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		input{
			display:inline-block;
			width:153px;
		}
	
	</style>
  </head>
  
  <body>
 <form id="form1" name="form1" method="post" action="AddScroesServlet">
  <table width="389" border="0" align="center">
    <tr>
      <td colspan="2"><div align="center"><span class="STYLE1">增加学生成绩信息</span></div></td>
    </tr>
    <tr>
      <td width="162" height="31">学生姓名</td>
      <td width="217"><label>
        <input name="stud_name" type="text" required="required" value="" autocomplete="off"/>
      </label></td>
    </tr>
    <tr>
      <td width="162" height="31">性别</td>
      <td width="217"><label>
        <input name="stud_sex" type="text" required="required" value="" autocomplete="off"/>
      </label></td>
    </tr>
    <tr>
      <td width="162" height="31">班级</td>
      <td width="217"><label>
        <input name="stud_cr" type="text" required="required" value="" autocomplete="off"/>
      </label></td>
    </tr>
    <tr>
      <td width="162" height="31">学号</td>
      <td width="217"><label>
        <input name="stud_number" type="number" min="0" max="32767" required="required" value="" autocomplete="off"/>
      </label></td>
    </tr>
    <tr>
      <td width="162" height="31">语文成绩</td>
      <td width="217"><label>
        <input name="stud_chinese" type="number" min="0" max="150" required="required" value="" autocomplete="off" />
      </label></td>
    </tr>
    <tr>
      <td height="30">数学成绩</td>
      <td><label>
        <input name="stud_math" type="number"  min="0" max="150" required="required" value="" autocomplete="off"/>
      </label></td>
    </tr>
    <tr>
      <td height="29">英语成绩</td>
      <td><label>
        <input name="stud_english" type="number"  min="0" max="150" required="required"  autocomplete="off" value=""/>
      </label></td>
    </tr>
    <tr>
      <td height="35">物理成绩</td>
      <td><label>
        <input name="stud_phy" type="number"  min="0" max="110" required="required" autocomplete="off" value=""/>
      </label></td>
    </tr>
    <tr>
      <td height="35">化学成绩</td>
      <td><label>
        <input name="stud_chem" type="number"  min="0" max="100" required="required" autocomplete="off"  value=""/>
      </label></td>
    </tr>
    <tr>
      <td height="35">生物成绩</td>
      <td><label>
        <input name="stud_bio" type="number"  min="0" max="90" required="required" autocomplete="off" value=""/>
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label>
        <input type="submit" name="Submit" required="required" value="增加记录" />
      </label></td>
    </tr>
  </table>
</form>

  <p><a class="btn" href="welcome.jsp">返回菜单页</a></p>
  <%
  	if(request.getAttribute("error")!=null){
  
   %>
 
 <h3 style="color:red;text-align:center;"><%=request.getAttribute("error") %></h3>
 <% }%>
 
 
 
  </body>
</html>
