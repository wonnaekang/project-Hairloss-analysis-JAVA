package com.example;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.DAO_3;


@WebServlet("/InterestService")
public class InterestService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		 request.setCharacterEncoding("EUC-KR"); 
		
		HttpSession session = request.getSession();
		
		//String sur_num = Integer.parseInt(request.getParameter("sur_num"));
		String pro_name = request.getParameter("pro_name");
		String pro_url = request.getParameter("pro_url");
		String mem_id = (String)session.getAttribute("id");
		


		System.out.println(pro_name);
		System.out.println(pro_url);
		System.out.println(mem_id);
		
		DAO_3 dao = new DAO_3();
		int cnt = dao.Interest(pro_name, pro_url, mem_id);

		/*
		 * if(cnt>0) { response.sendRedirect("Product_Shampoo.jsp"); //<-- 위 과정 끝나고 어느
		 * 화면 보여줄지! }
		 * 
		 * 
		 * }
		 */

}
}

