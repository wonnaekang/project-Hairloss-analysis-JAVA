<%@page import="java.awt.Color"%>
<%@page import="com.DTO.productDTO"%>
<%@page import="com.DTO.DTO_3"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.DAO_3"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
   <head>
      <title>모락모락</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
      <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
   </head>
   <style type="text/css" >
      html {
   height: 100%;
   }
      body {
   margin: 0;
   height: 100%;
	font-family: "G마켓 산스 TTF";
   }
   #wrapper {
   min-height: 100%;
   position: relative;
   padding-bottom: 19px; /* footer height */
   }
      footer{position:absolut;
            bottom:0;
            }
</style>
   <body class="is-preload">
<%//스크립틀릿
      String id =(String)session.getAttribute("id");
        //session의 email값 가져오기
      System.out.println("로그인한 사용자의 이메일 값 : "+id);
   %>
    <%-- <%
   //세션에 저장된 MemberDTO 정보 가져오기
   DTO_3 member = (DTO_3)session.getAttribute("member");
   productDTO inter_pro = (productDTO)session.getAttribute("inter_pro");
%>  --%>
      <!-- Header -->
         <header id="header">
            <a href="index.jsp" class="title">모락모락</a>
            <nav>
               <ul>
                  <li><a href="index.jsp">Home</a></li>
                  <li><a href="index.jsp#one">제품/병원</a></li>
                  <li><a href="index.jsp#three">마이페이지</a></li>
                  <li><a href="LogoutService">로그아웃</a></li>
               </ul>
            </nav>
         </header>

      <!-- Wrapper -->
         <div id="wrapper" style="background-color:#EDEDED; ">

            <!-- Main -->
               <section id="main" class="wrapper">
                  <div align="center" class="inner">
                     <h1 class="major">관심제품</h1>
                      <div class="card-header py-3">
            <!--   <h6 class="m-0 font-weight-bold text-primary">Project_Member Table</h6> -->
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr >
                      <th align="center">등록 날짜</th>
                      <th>제품 이름</th>
                      <th>보러가기</th>
                    </tr>
                  </thead>
                  <!-- <tfoot>
                    <tr>
                        <th>등록 날짜</th>
                      <th>제품 이름</th>
                      <th>보러가기</th>
                    </tr>
                  </tfoot> -->
                                <%
                  DAO_3 dao = new DAO_3(); //MessageDAO 사용하기 위해 객체 생성
                  ArrayList<productDTO> proList = null; //MessageDTO를 담은 비어있는 어레이리스트 생성
                  if(id != null){ //세션 생성한 멤버값이 비어있지 않다면 ---로그인 된 상태라면
                     proList=dao.productSelect(id); //로그인한 id의 정보를 selectAll함수에 담아서 msgList에 저장
                  }
               %>
                  <tbody>
                  <%if(id == null){ %> <!-- 로그인이 안된 상태라면  -->
                              <%}else{ //로그인이 되었다면
                                 if(!proList.isEmpty()){ //msgList가 비어있지 않을 때 
                                    for(int i=0;i<proList.size();i++){ //msgList(받은 메시지)의 크기만큼 반복
                                       productDTO interpro = proList.get(i); //DTO를 호출하여 msg에 담은 후,  msgList의 i번째 요소를 msg에 대입
                                       out.println("<tr>");
                                         out.println("<td>"+interpro.getInter_date()+"</td>");
                                         out.println("<td>"+interpro.getPro_name()+"</td>");
                                         out.println("<td><a href="+interpro.getPro_url()+">클릭</a></td>");
                                                             //QueryStirng : URL을 통해서 서버로 값을 전송
                                         out.println("</tr>");
                                    }//end for
                                 }else{//proList가 비어있을 때
                                    out.println("<tr>");
                                    out.print("<td colspan =3 style='text-align:center;'>"+"등록된 관심제품이 없습니다."+"</td>");
                                    out.println("</tr>");
                                 }
                                 }%>
                              
                  <%--  <%
                     //*사용자가 입력한 정보 없이 전체테이블의 정보를 검색하면 되기 때문에 Servlet이 필요없음.
                     try {
                        productDTO dto = new productDTO();
                    ArrayList<productDTO> product = (ArrayList<productDTO>)request.getAttribute("id");
                  
                  for(int i =0;i<product.size();i++){
                    out.println("<tr>");
                    out.println("<td>"+product.get(i).getInter_date()+"</td>");
                    out.println("<td>"+product.get(i).getPro_name()+"</td>");
                    out.println("<td><a href="+product.get(i).getPro_url()+">클릭</a></td>");
                                        //QueryStirng : URL을 통해서 서버로 값을 전송
                    out.println("<tr>");
                  }
               //-------------------------------실행 후 처리
            } catch (Exception e) {
               e.printStackTrace();
            }
                     
                  
                  %> 
                     --%>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
                  </div>
               </section>

         </div>

      <!-- Footer -->
         <footer id="footer" class="wrapper alt">
            <div class="inner">
            </div>
         </footer>

      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.scrollex.min.js"></script>
         <script src="assets/js/jquery.scrolly.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>

   </body>
</html>