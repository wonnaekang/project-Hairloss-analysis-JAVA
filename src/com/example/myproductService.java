package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.DAO_3;
import com.DTO.DTO_3;
import com.DTO.productDTO;

/**
 * Servlet implementation class myproductService
 */
@WebServlet("/myproduct")
public class myproductService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		HttpSession session = request.getSession(); 
		
		//등록날짜, 제품이름, 제품url가졍기
		String mem_id = (String)session.getAttribute("id");
		String inter_date = request.getParameter("inter_date");
		String pro_name = request.getParameter("pro_name");
		String pro_url = request.getParameter("pro_url");
		
		productDTO inter_pro = new productDTO(inter_date, pro_name, pro_url);
		
		//DB에 저장하기
		DAO_3 dao = new DAO_3();
		dao.productSelect(mem_id);
		
	}

}
