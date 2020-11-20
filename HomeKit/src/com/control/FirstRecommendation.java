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
		
//		--- 플라스크에서 값 받아오기(1차추천)
		String results = request.getParameter("results");
//		
//		
		System.out.println("results");
//		
//		  String select_space1= results.substring(0, 6);
//		  String select_size1= results.substring(7, 13);
//		  String select_familyShape1= results.substring(14, 19);
//		 
//		  
//		  if(results != null){
//			  System.out.println(results);
//		  }
		
//      --- 2차추천용 		
		String rec_space = request.getParameter("select_space");
		String rec_size = request.getParameter("select_size");
		String rec_familyShape = request.getParameter("select_familyShape");
		
//		System.out.println(rec_space);
//		System.out.println(rec_size);
//		System.out.println(rec_familyShape);
		
		request.setAttribute("rec_space", rec_space);
		request.setAttribute("rec_size", rec_size);
		request.setAttribute("rec_familyShape", rec_familyShape);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
