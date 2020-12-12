package com.example;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.DAO.DAO_3;


@WebServlet("/SurveyService")
public class SurveyService extends HttpServlet {
   private static final long serialVersionUID = 1L;

   
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      HttpSession session = request.getSession();
      
      //String sur_num = Integer.parseInt(request.getParameter("sur_num"));
      String id = (String)session.getAttribute("id");
      String que1 = request.getParameter("que1");
      String que2 = request.getParameter("que2");
      String que3 = request.getParameter("que3");
      String que4 = request.getParameter("que4");
      String que5 = request.getParameter("que5");
      String que6 = request.getParameter("que6");
      String que7 = request.getParameter("que7");
      String que8 = request.getParameter("que8");
      String que9 = request.getParameter("que9");
      String que10 = request.getParameter("que10");
      
      
      
      DAO_3 dao = new DAO_3();
      int cnt = dao.Survey(id, que1, que2, que3, que4, que5, que6, que7, que8, que9, que10);
      int num = 0;
      String num1 = "";
      
      String s[] = {que1,que2,que3,que4,que5,que6,que7,que8,que9,que10};
      for (int i = 0; i < s.length; i++) {
         
         System.out.println(s[i]);
        if(s[i].equals("Y")) {
            num++;
         }
         
      }
      System.out.println("YES의 갯수 : "+ num);
      
      if(0<=num &&num<=3) {
         num1="0";
         System.out.println(num1);
         
      }else if(4<=num && num<=7) {
         num1="1";
         System.out.println(num1);
         
         
      }else {
         num1="2";
         System.out.println(num1);
         request.setAttribute("num1", num1);
         
      }
      System.out.println("갯수 변환 : " + num1);
      
      
      
      

        
        if(cnt>0) {
           response.sendRedirect("headchoice.jsp"); //<-- 위 과정 끝나고 어느 화면 보여줄지!
           }
       else {
          System.out.println("ㅇㅇ");
       }
        
        session.setAttribute("num1", num1);
      /*
       * ServletContext context =getServletContext(); RequestDispatcher dispatcher =
       * context.getRequestDispatcher("/check.jsp"); //넘길 페이지 주소
       * dispatcher.forward(request, response);
       */
        
        
   }

}