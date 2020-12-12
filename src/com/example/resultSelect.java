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
		
		
		
		
		
		DAO_3 dao = new DAO_3(); //DAO 사용하기 위해 객체 생성
		ArrayList<resultDTO> resList = null; //DTO를 담은 비어있는 어레이리스트 생성
		if(mem_id != null){ //세션 생성한 멤버값이 비어있지 않다면 ---로그인 된 상태라면
			resList=dao.resultSelect(mem_id); //로그인한 id의 정보를 productSelect함수에 담아서 proList에 저장
			response.setContentType("text/json;charset=utf-8");
			PrintWriter out=response.getWriter();
			Gson g=new Gson(); // { {   },{    }  }
			String json=g.toJson(resList);
			out.println(json);
		}		
	}

}
