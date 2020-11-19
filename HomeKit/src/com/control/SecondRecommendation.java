package com.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.DAO.RecommendationDAO;

@WebServlet("/SecondRecommendation")
public class SecondRecommendation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
	    String email = (String)session.getAttribute("email");

		int rating1 = Integer.parseInt(request.getParameter("rating1"));
		int rating2 = Integer.parseInt(request.getParameter("rating2"));
		int rating3 = Integer.parseInt(request.getParameter("rating3"));
		int rating4 = Integer.parseInt(request.getParameter("rating4"));
		
		System.out.println(rating1);
		System.out.println(rating2);
		System.out.println(rating3);
		System.out.println(rating4);

		System.out.println(email);
		
		String style1 = request.getParameter("style1");
		String style2 = request.getParameter("style2");
		String style3 = request.getParameter("style3");
		String style4 = request.getParameter("style4");
		
		System.out.println(style1);
		System.out.println(style2);
		System.out.println(style3);
		System.out.println(style4);

		RecommendationDAO dao = new RecommendationDAO();
		int cnt = dao.rating_insert(email, rating1, rating2, rating3, rating4);

		if (cnt > 0) { // SQL문 실행이 성공하면
			response.sendRedirect("result.jsp");
		} else {
			System.out.println("실패하였습니다.");
		}
		
		


	}

}
