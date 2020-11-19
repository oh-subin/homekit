package com.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.MemberDAO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 한글 인코딩
		request.setCharacterEncoding("UTF-8");

		// 1. 사용자가 입력한 값 받아오기
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");

		MemberDAO dao = new MemberDAO();																																									
		int cnt = dao.Join(name, email, pw, address, tel);

		if (cnt > 0) { // SQL문 실행이 성공하면
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('회원가입 성공 환영합니다!'); location.href='" + "main.jsp" + "';</script>");
			writer.close();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('회원가입 실패..정보를 다시 입력해주세요.'); location.href='" + "register.jsp" + "';</script>");
			writer.close();
		}

	}

}
