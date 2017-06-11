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
	</style>
  </head>
  
  <body>
     <%
   AdminBean ab=null;
   HttpSession session2=request.getSession();
   if(session.getAttribute("loginuser")!=null){
       ab=(AdminBean)session2.getAttribute("loginuser");
   }
   %>
  <% 
  
  ScoresBean sb=(ScoresBean)request.getAttribute("sb"); 
   
   %>
  
 <form id="form1" name="form1" method="post" action="ModifyScoresServlet">
   <table width="389" border="0" align="center">
   
    <tr>
      <td colspan="2"><div align="center"><span class="STYLE1">修改学生信息</span></div></td>
    </tr>
    <tr>
      <td width="162" height="31">学生姓名</td>
      <td width="217"><label>
        <input name="stud_name" type="text" required="required" value="<%=sb.getStud_name() %>" ></input>
        <input name="stud_id"  value="<%=sb.getStud_id()%>" hidden/>
      </label></td>
    </tr>
    <tr>
      <td width="162" height="31">性别</td>
      <td width="217"><label>
        <input name="stud_sex" type="text" required="required" value="<%=sb.getStud_sex() %>" />
      </label></td>
    </tr>
     <%
   		
   		if(ab.getAdmin_right()==1){
   			
	%>
    <tr>
      <td width="162" height="31">班级</td>
      <td width="217"><label>
        <input name="stud_cr" type="text" required="required" value="<%=sb.getStud_cr() %>" />
      </label></td>
    </tr>
    <tr>
      <td width="162" height="31">学号</td>
      <td width="217"><label>
        <input name="stud_number" type="number" min="0" max="32767" required="required" value="<%=sb.getStud_number() %>" />
      </label></td>
    </tr>
    <tr>
      <td width="162" height="31">语文成绩</td>
      <td width="217"><label>
        <input name="stud_chinese" type="number" required="required" min="0" max="150" value="<%=sb.getStud_chinese() %>" />
      </label></td>
    </tr>
    <tr>
      <td height="30">数学成绩</td>
      <td><label>
        <input name="stud_math" type="number" min="0" required="required" max="150"  value="<%=sb.getStud_math() %>"/>
      </label></td>
    </tr>
    <tr>
      <td height="29">英语成绩</td>
      <td><label>
        <input name="stud_english" type="number" required="required" min="0" max="150"   value="<%=sb.getStud_english() %>"/>
      </label></td>
    </tr>
    <tr>
      <td height="35">物理成绩</td>
      <td><label>
        <input name="stud_phy" type="number" required="required" min="0" max="110"  value="<%=sb.getStud_phy() %>"/>
      </label></td>
    </tr>
    <tr>
      <td height="35">化学成绩</td>
      <td><label>
        <input name="stud_chem" type="number" required="required" min="0" max="100"  value="<%=sb.getStud_chem() %>"/>
      </label></td>
    </tr>
    <tr>
      <td height="35">生物成绩</td>
      <td><label>
        <input name="stud_bio" type="number" required="required" min="0" max="90"  value="<%=sb.getStud_bio() %>"/>
      </label></td>
    </tr>
    <% }
    	else{
    	
    %>
 
        <input name="stud_cr"  required="required"  value="<%=sb.getStud_cr() %>" hidden/>
        <input name="stud_number"  min="0" max="32767" required="required" value="<%=sb.getStud_number() %>" hidden/>
        <input name="stud_chinese"  required="required" min="0" max="150" value="<%=sb.getStud_chinese() %>" hidden/>
        <input name="stud_math"  min="0" required="required" max="150"  value="<%=sb.getStud_math() %>"/ hidden>
        <input name="stud_english"  required="required" min="0" max="150"   value="<%=sb.getStud_english() %>" hidden/>
        <input name="stud_phy"  required="required" min="0" max="110"  value="<%=sb.getStud_phy() %>" hidden/>
        <input name="stud_chem"  required="required" min="0" max="100"  value="<%=sb.getStud_chem() %>" hidden/>
        <input name="stud_bio"  required="required" min="0" max="90"  value="<%=sb.getStud_bio() %>" hidden/>
    
    <%} %>
    <tr>
      <td>&nbsp;</td>
      <td><label>
        <input type="submit" name="Submit" value="修改记录" />
      </label></td>
    </tr>
  </table>
</form>
 
 
 
 
 
  </body>
</html>
