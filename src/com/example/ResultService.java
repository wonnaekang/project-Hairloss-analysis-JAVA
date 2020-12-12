package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.DAO_3;


@WebServlet("/ResultService")
public class ResultService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("id");
		String res = request.getParameter("res");
		String res_date = (String)session.getAttribute("res_date");
		
		System.out.println(id);
		System.out.println(res);
		
		
		DAO_3 dao = new DAO_3();
		int cnt = dao.Result(id, res);
		
		 if(cnt>0) {
		        response.sendRedirect("myrecord.jsp"); //<-- 위 과정 끝나고 어느 화면 보여줄지!
		        }
		    else {
		    	System.out.println("ㅇㅇ");
		    }
		
		 session.setAttribute("res", res);
	}

}
