package com.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutService")
public class LogoutService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Session에 있는 email값을 삭제하고 index.jsp로 이동하시오.
		HttpSession session = request.getSession();
				
		session.removeAttribute("email");
				
		response.sendRedirect("main.jsp");
		
	}

}
