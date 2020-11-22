package com.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Test")
public class Test extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("技记俊 历厘等 蔼");
		System.out.println(request.getSession().getAttribute("select_space"));
		System.out.println(request.getSession().getAttribute("select_size"));
		System.out.println(request.getSession().getAttribute("select_familyShape"));
	}

}
