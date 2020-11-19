package com.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.cartDAO;

@WebServlet("/CartInsert")
public class CartInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 한글 인코딩
		request.setCharacterEncoding("UTF-8");

		// 1. 입력한 값 가져오기

		// Session영역에 값 저장
		HttpSession session = request.getSession();
		// 세션에서 이메일 정보 가져오기
		String email = (String) session.getAttribute("email");

		// 상품 이름 정보 가져오기
		String cart_name = request.getParameter("pro_name");

		// 상품 가격 정보 가져오기
		int cart_price = Integer.parseInt(request.getParameter("pro_price"));

		// 상품 수량 정보 가져오기
		int cart_cnt = 1;

		// 상품 이미지 정보 가져오기
		String cart_img = request.getParameter("pro_img");
		
		
		System.out.println(email);
		System.out.println(cart_name);
		System.out.println(cart_cnt);
		System.out.println(cart_price);
		System.out.println(cart_img);

		cartDAO dao = new cartDAO();
		int cnt = dao.cart_insert(email, cart_name, cart_cnt, cart_price, cart_img);

		// 2. DB에서 입력한 값 찾기
		if (cnt > 0) {
			System.out.println("장바구니에 상품 넣기 성공");
			response.sendRedirect("basket.jsp");
		} else {
			System.out.println("상품 넣기 실패");
			response.sendRedirect("404.jsp");
		}
	}

}
