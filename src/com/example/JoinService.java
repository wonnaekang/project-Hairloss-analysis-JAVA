package com.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DAO_3;


@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("서버호출 성공!");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");

		System.out.println(id);
		System.out.println(pw);
		System.out.println(email);
		
		DAO_3 dao = new DAO_3();
		int cnt = dao.join(id, pw, email);

	    if(cnt>0) {
	        response.sendRedirect("index.jsp"); //<-- html이름 바꾸면 됨.?
        }
	        
	}

}
