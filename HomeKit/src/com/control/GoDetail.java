package com.control;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.productDAO;
import com.DTO.productDTO;

@WebServlet("/GoDetail")
public class GoDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		//상품 이름,이미지 가져오기
		String pro_name = request.getParameter("pro_name");		
		System.out.println(pro_name);

		
		productDAO dao = new productDAO();
		productDTO product = dao.moreInfo(pro_name);

		// 성공하면 상품 상세 페이지로 이동
		response.sendRedirect("DetailProduct.jsp");

	}


}
