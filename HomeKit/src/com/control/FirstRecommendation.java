package com.control;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FirstRecommendation")
public class FirstRecommendation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String rec_space = request.getParameter("select_space");
		String rec_size = request.getParameter("select_size");
		String rec_familyShape = request.getParameter("select_familyShape");
		
//		System.out.println(rec_space);
//		System.out.println(rec_size);
//		System.out.println(rec_familyShape);
		
		request.setAttribute("rec_space", rec_space);
		request.setAttribute("rec_size", rec_size);
		request.setAttribute("rec_familyShape", rec_familyShape);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("professional_mode.jsp");
		dispatcher.forward(request, response);
		
		
		
		
		
		
	}

}
