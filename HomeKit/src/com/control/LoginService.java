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

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. 입력한 값 가져오기
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		System.out.println(email);
		System.out.println(pw);
				
		MemberDAO dao = new MemberDAO();
		boolean check = dao.Login(email, pw);
			
		// 2. DB에서 입력한 값 찾기
			         
        if(check) { // SQL문 실행이 성공하면  / rs.next() : rs안의 데이터를 하나하나 검색해서 값이 있으면 true/false

			HttpSession session = request.getSession();
			// session영역을 사용하기 위한 객체 생성
			
			session.setAttribute("email", email);
			// session영역에 email이름표로 로그인에 성공한 사람의 email값 저장
			
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter(); 
			writer.println("<script>alert('로그인 성공! 선호하는 인테리어 취향을 선택해주세요.'); location.href='"+"main.jsp"+"';</script>"); 
			writer.close();
			
		}else { // 실패시 
			response.setContentType("text/html; charset=UTF-8"); 
			PrintWriter writer = response.getWriter(); 
			writer.println("<script>alert('로그인 실패.. 아이디와 비밀번호를 확인해주세요.'); location.href='"+"login.jsp"+"';</script>"); 
			writer.close();
		}
		
	}

}
