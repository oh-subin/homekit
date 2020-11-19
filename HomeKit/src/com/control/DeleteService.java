package com.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MemberDAO;

@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. 사용자가 어떤 이메일을 삭제하고 싶은지
		String email = request.getParameter("email");
				
		// 2. DAO 연결해서 테이블에 있는 이메일값 삭제
		MemberDAO dao = new MemberDAO();
		int cnt = dao.delete(email); 
		
		HttpSession session = request.getSession();
		session.removeAttribute("email");
			
		//3. index.jsp로 이동
		if(cnt>0) {
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter(); 
			writer.println("<script>alert('탈퇴성공'); location.href='"+"main.jsp"+"';</script>");
			writer.close();
		}else {
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter(); 
			writer.println("<script>alert('탈퇴 실패..정보를 다시 입력해주세요.'); location.href='"+"delete.jsp"+"';</script>"); 
			writer.close();
		}
		
		
	}

}
