package lk.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lk.dao.AdminBean;
import lk.dao.AdminDAO;
import lk.dao.ScoresBean;
import lk.dao.ScoresDAO;

public class ModifyAdminServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
        try {
        	String sid=request.getParameter("admin_id");
            String sname=request.getParameter("admin_name");
            String pass=request.getParameter("admin_password");
            String sr=request.getParameter("admin_right"); 
            AdminBean ab=new AdminBean();
            ab.setAdmin_ID(Integer.parseInt(sid));
            ab.setAdmin_name(sname);
            ab.setAdmin_password(pass);
            ab.setAdmin_right(Integer.parseInt(sr));
            AdminDAO sdo=new AdminDAO();
        if(sdo.doModify(ab)){
        	request.getRequestDispatcher("dosuccess1.jsp").forward(request, response);
        }	
        }catch (Exception e){
    		e.printStackTrace();
    	}
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

}
