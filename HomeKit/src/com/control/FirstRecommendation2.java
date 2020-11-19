package com.control;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FirstRecommendation2")
public class FirstRecommendation2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String rec2_space = request.getParameter("space");
		String rec2_size = request.getParameter("size");
		String rec2_familyShape = request.getParameter("familyShape");
		
		System.out.println(rec2_space);
		System.out.println(rec2_size);
		System.out.println(rec2_familyShape);
		
		request.setAttribute("rec_space", rec2_space);
		request.setAttribute("rec_size", rec2_size);
		request.setAttribute("rec_familyShape", rec2_familyShape);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("recommendation2.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
