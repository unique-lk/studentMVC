package lk.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lk.dao.ScoresBean;
import lk.dao.ScoresDAO;

public class ShowAllScroesServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		      ArrayList<ScoresBean> alist=null;
              ScoresDAO sdl=new ScoresDAO();
              try {
				 alist=sdl.doSelectALLScores();
				if(alist!=null){
					request.setAttribute("scoreslist", alist);
					request.getRequestDispatcher("showallsocres.jsp").forward(request, response);
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

		 doGet(request,response);
	}

}
