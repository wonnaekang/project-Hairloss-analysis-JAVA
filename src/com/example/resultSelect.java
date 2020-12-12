package com.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.DAO_3;
import com.DTO.resultDTO;
import com.google.gson.Gson;


@WebServlet("/resultSelect")
public class resultSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//request.setCharacterEncoding("EUC-KR");
		//HttpSession session = request.getSession();
		
		//String id = (String)session.getAttribute("mem_id");
		String mem_id = request.getParameter("mem_id");
		
		//String res = request.getParameter("res");
		
		//System.out.println(res_date);
		
		
		
		
		
		DAO_3 dao = new DAO_3(); //DAO ����ϱ� ���� ��ü ����
		ArrayList<resultDTO> resList = null; //DTO�� ���� ����ִ� ��̸���Ʈ ����
		if(mem_id != null){ //���� ������ ������� ������� �ʴٸ� ---�α��� �� ���¶��
			resList=dao.resultSelect(mem_id); //�α����� id�� ������ productSelect�Լ��� ��Ƽ� proList�� ����
			response.setContentType("text/json;charset=utf-8");
			PrintWriter out=response.getWriter();
			Gson g=new Gson(); // { {   },{    }  }
			String json=g.toJson(resList);
			out.println(json);
		}		
	}

}
