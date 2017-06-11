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

public class ScoresOrderServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String subject=request.getParameter("subject");
		String classId=request.getParameter("classId");
		System.out.println("id:::"+classId);
		ScoresDAO dao=new ScoresDAO();
		ArrayList<ScoresBean> alist=null;
		try {
			alist=dao.orderScoreBySubjet(subject,classId);
			request.setAttribute("scoreslist", alist);
			request.getRequestDispatcher("showcrsocres.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request, response);
	}

}
