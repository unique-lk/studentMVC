package lk.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lk.dao.ScoresBean;
import lk.dao.ScoresDAO;

public class DeleteScoresByIDServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
            String studid=request.getParameter("sid");
      
            if(studid!=null){
            	int sid=Integer.parseInt(studid);
            	ScoresDAO sdo=new ScoresDAO();
            	try {
					ScoresBean sb=sdo.doSelectByID(sid);
				  
					request.setAttribute("selectscores", sb);
					request.getRequestDispatcher("delete.jsp").forward(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            	
            	
            }
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
