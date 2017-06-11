package lk.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lk.dao.ScoresBean;
import lk.dao.ScoresDAO;

public class DeleteScroesServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost( request,response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
        String studid=request.getParameter("sid");
        System.out.println(studid);
  
        if(studid!=null){
        	int sid=Integer.parseInt(studid);
        	ScoresDAO sdo=new ScoresDAO();
        	
        	try {
        		//System.out.println(sdo.delete(sid));
				if(!sdo.delete(sid)){
					//System.out.println(sdo.delete(sid));
					  request.getRequestDispatcher("dosuccess.jsp").forward(request, response);  
				  }
				else{
					 request.getRequestDispatcher("showallsocres.jsp").forward(request, response); 
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

        }
		
	}

}
