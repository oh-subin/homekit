package com.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.RecommendationDAO;
import com.DTO.RecommendationDTO;
import com.google.gson.Gson;


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
		
		RecommendationDAO dao = new RecommendationDAO();
        ArrayList<RecommendationDTO> imgList = dao.showIMG(rec2_space, rec2_size, rec2_familyShape);
        
        Gson gson = new Gson();
        String jsonArr = gson.toJson(imgList);
        
       // System.out.println(jsonArr);
        
        response.setContentType("text/plain; charset=utf-8");
        response.getWriter().print(jsonArr);
        
		
		//RequestDispatcher dispatcher = request.getRequestDispatcher("recommendation2.jsp");
		//dispatcher.forward(request, response);
		
		
	}

}
