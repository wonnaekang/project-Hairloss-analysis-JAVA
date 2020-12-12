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
		
		//1. ����ڰ� �Է��� �� �޾ƿ���
				//����ڰ� �Է��� id�� pw�� �ܼ�â�� ����Ͻÿ�.
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				
				System.out.println(id);
				System.out.println(pw);
						
				DAO_3 dao = new DAO_3();
				boolean check = dao.Login(id, pw);
			        if(check) {
			        	HttpSession session = request.getSession();
			        	//session������ ����ϰڴٴ� ��ü����
			        	session.setAttribute("id", id);
			        	//session������ id���� ����
			        	System.out.println(id);
			        	response.sendRedirect("index.jsp");//<-- ���߿� �ٲٸ� ��.
			        	
			        }else {
			        	System.out.println("join.html");
			        }
			        
	}

}
