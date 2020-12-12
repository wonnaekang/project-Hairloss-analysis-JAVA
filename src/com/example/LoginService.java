package com.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.DAO_3;


@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1. 사용자가 입력한 값 받아오기
				//사용자가 입력한 id과 pw를 콘솔창에 출력하시오.
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				
				System.out.println(id);
				System.out.println(pw);
						
				DAO_3 dao = new DAO_3();
				boolean check = dao.Login(id, pw);
			        if(check) {
			        	HttpSession session = request.getSession();
			        	//session영역을 사용하겠다는 객체생성
			        	session.setAttribute("id", id);
			        	//session영역에 id값을 저장
			        	System.out.println(id);
			        	response.sendRedirect("index.jsp");//<-- 나중에 바꾸면 됨.
			        	
			        }else {
			        	System.out.println("join.html");
			        }
			        
	}

}
