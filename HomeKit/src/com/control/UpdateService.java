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


@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		
		HttpSession session = request.getSession();
		
		String email = (String)session.getAttribute("email");
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(name,  address, pw, tel, email);
	        
	        if(cnt > 0) { // SQL문 실행이 성공하면
	        	response.setContentType("text/html; charset=UTF-8"); 
				PrintWriter writer = response.getWriter(); 
				writer.println("<script>alert('정보수정 성공'); location.href='"+"main.jsp"+"';</script>"); 
				writer.close();
	     }else {
	    	 response.setContentType("text/html; charset=UTF-8"); 
				PrintWriter writer = response.getWriter(); 
				writer.println("<script>alert('정보수정 실패...'); location.href='"+"update.jsp"+"';</script>"); 
				writer.close();
	     }
	
	}

}
