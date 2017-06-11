package lk.login.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lk.dao.ScoresBean;
import lk.dao.ScoresDAO;

public class ModifyScoresServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
               
		 doPost(request,response);
	}

	 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
        try {
        	String sid=request.getParameter("stud_id");
            String sname=request.getParameter("stud_name");
            String ssex=request.getParameter("stud_sex");
            String scr=request.getParameter("stud_cr");
            String snumber=request.getParameter("stud_number");
            String chinese= request.getParameter("stud_chinese");
            String math=request.getParameter("stud_math");
            String english=request.getParameter("stud_english");
            String phy=request.getParameter("stud_phy");
            String chem=request.getParameter("stud_chem");
            String bio=request.getParameter("stud_bio");
   
            ScoresBean sb=new ScoresBean();
            sb.setStud_id(Integer.parseInt(sid));
            sb.setStud_name(sname);
            sb.setStud_sex(ssex);
            sb.setStud_cr(Integer.parseInt(scr));
            sb.setStud_number(Integer.parseInt(snumber));
            sb.setStud_chinese(Integer.parseInt(chinese));
            sb.setStud_math(Integer.parseInt(math));
            sb.setStud_english(Integer.parseInt(english));
            sb.setStud_phy(Integer.parseInt(phy));
            sb.setStud_chem(Integer.parseInt(chem));
            sb.setStud_bio(Integer.parseInt(bio));
       
            ScoresDAO sdo=new ScoresDAO();
        if(sdo.doModify(sb)){
        	request.getRequestDispatcher("dosuccess1.jsp").forward(request, response);
        }	 
	}catch (Exception e){
		e.printStackTrace();
	}
	}
}
