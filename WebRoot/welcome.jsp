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
	<div>��ӭ����Ա<%=ab.getAdmin_name() %>���ʣ�������</div>
   <a href="ShowAllScroesServlet" style='margin-top:20px;'>��ҳ��ʾ���гɼ���Ϣ</a><br/>
   
    <a href="selectname.jsp">������ѯѧ���ɼ���Ϣ</a><br/>
    <a href="selectcr.jsp">�༶��ѯѧ���ɼ���Ϣ</a><br/>
    <a href="addscores.jsp">���ӵ���ѧ���ɼ���Ϣ</a><br/>
    <a href="selectAdminServlet?admin_name=<%=ab.getAdmin_name()%>">�޸ĸ��˵�¼��Ϣ</a><br/>
    <a href="InvalidateServlet">ע����¼</a>  
    <%
       }
   		else{
   		
    %>
    <div>��ӭӢ����ѧѧ��<%=ab.getAdmin_name() %>���ʣ�������</div>
    <a href="selectname.jsp" style='margin-top:20px;'>ѧ���ĳɼ���ѯ</a><br/>
     <a href="SelectScoresByIDServlet?sid=<%=ab.getAdmin_name() %>" style='margin-top:10px;'>������Ϣ���޸�</a><br/>
     <a href="selectAdminServlet?admin_name=<%=ab.getAdmin_name()%>" style='margin-top:10px;'>��¼��Ϣ���޸�</a><br/>
     <a href="InvalidateServlet"  style='margin-top:10px;'>ע����¼</a> 
     
     <%
     }
      %>
  
    
  </body>
</html>
