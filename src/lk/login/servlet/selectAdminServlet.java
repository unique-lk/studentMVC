package lk.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lk.dao.AdminBean;
import lk.dao.AdminDAO;
import lk.dao.ScoresBean;
import lk.dao.ScoresDAO;

public class selectAdminServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
        String stuname=request.getParameter("admin_name");
        
	      ArrayList<AdminBean> alist=null;
          AdminDAO sdl=new AdminDAO();
          try {
			 alist=sdl.doSelectByName(stuname);
			if(alist!=null){
				request.setAttribute("adminlist", alist);
				request.getRequestDispatcher("modifyByAdmin.jsp").forward(request, response);
			}
			else{
				request.getRequestDispatcher("welcome.jsp").forward(request, response);
			}
				
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


	}

}
