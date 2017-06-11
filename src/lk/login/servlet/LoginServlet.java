package lk.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lk.dao.AdminBean;
import lk.dao.AdminChk;

public class LoginServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		    String uname=request.getParameter("admin_name");
		    String upwd=request.getParameter("admin_password");
		    if(uname!=null && upwd!=null){		    	
		    	
		    	AdminBean ab=new AdminBean();
		    	ab.setAdmin_name(uname);
		    	ab.setAdmin_password(upwd);
		    	AdminChk adc=new AdminChk();
		    	try {
					if(adc.admincheck(ab)){
						request.setAttribute("loginuser", ab);
						HttpSession session=request.getSession();
						session.setAttribute("loginuser", ab);
						request.getRequestDispatcher("welcome.jsp").forward(request, response);
					}
					else{
						request.setAttribute("error","用户名或密码输入错误，请重新输入信息！");
						request.getRequestDispatcher("login.jsp").forward(request, response);
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					request.setAttribute("error","出现异常，请重新输入信息！");
					e.printStackTrace();
				}
		    	
		    }
	}

}
