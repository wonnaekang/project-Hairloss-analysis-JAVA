<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
   }
   #wrapper {
   min-height: 100%;
   position: relative;
   padding-bottom: 19px; /* footer height */
   }
   /* .loss{
      height:300px;
      border: 1px solid white; 
      float: left; 
      width: 33%;
      background-color: black;
      color: white;
      line-height:300px;
      text-align:center; 
      font-size:25px;
   } */
   .loss_shampoo{
      background-image:url(images/woman-hairdresser-salon_AA.jpg);
      height:450px;
      width: 33%;
      float: left; 
      background-size:cover;
      position:relative;
      cursor: pointer;
      
   }
   .loss_tonic{
      background-image:url(images/tonic_AAA.jpg);
      height:450px;
      width: 33%;
      float: left; 
      background-size:cover;
      position:relative;
      cursor: pointer;
      
   }
   .loss_extra{
      background-image:url(images/Product_extra_AA.jpg);
      height:450px;
      width: 33%;
      float: left; 
      background-size:cover;
      position:relative;
      cursor: pointer;
      
   }

   .img-cover{
      position:absolute;
      height:100%;
      width:100%;
      background-color: rgba(0, 0, 0, 0.75);      
      z-inde:1;                                                           
        
   }
    .loss_shampoo .content{
     position: absolute;
     top:50%;
     left:50%; 
     transform: translate(-50%, -50%);                                                                   
     color: white;
     z-index: 2;
     text-align: center;
      font-size:45px;
}
    .loss_tonic .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     color: white;
     z-index: 2;
     text-align: center;
      font-size:45px;
}
    .loss_extra .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     color: white;
     z-index: 2;
     text-align: center;
     font-size:45px;
     
}
      .content{
               text-size:100px;
      
      }
   
      footer{position:absolut;
            bottom:0;
            }
            
   }   
            
</style>
   <body class="is-preload" >
<%
		String ID = (String)session.getAttribute("id");
		System.out.println("로그인한 사용자의 이메일 값 : " + ID);
	%>
      <!-- Header -->
         <header id="header">
            <a href="index.jsp" class="title">모락모락</a>
            <nav>
               <ul>
                  <li><a href="index.jsp">Home</a></li>
							<%if(ID == null){ %> <!-- 로그아웃 -->
							<li><a href="login.jsp">로그인</a></li>
							<li><a href="Join.jsp">회원가입</a></li>
            				<%}else{ %> <!-- 로그인 -->
            				<li><a href="index.jsp#three">마이페이지</a>
            				<li><a href="LogoutService">로그아웃</a></li>
				            <%} %>
               </ul>
            </nav>
         </header>

      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Main -->
               <section id="main" class="wrapper">
               
                  <div class="inner">
                     <h1 align= "center" class="major">제품선택</h1>
                     <div class="loss_shampoo">
                     <div class="content">
                           <a onfocus="blur()" href="Product_Shampoo.jsp" onMouseOver="this.innerHTML='샴푸'" onMouseOut="this.innerHTML='샴푸<br>찾아보기'">샴푸<br>찾아보기</a>
                        </div>
                  <div class="img-cover" onclick="location.href='Product_Shampoo.jsp';"></div>
                        
                     </div>
                     
                     <div class="loss_tonic" >
                     <div class="content">
                           <a onfocus="blur()" href="Product_Tonic_Treatment.jsp" onMouseOver="this.innerHTML='토닉<br>트리트먼트'" onMouseOut="this.innerHTML='토닉<br>트리트먼트<br>찾아보기'">토닉<br>트리트먼트<br>찾아보기</a>
                        </div>
                  <div class="img-cover" onclick="location.href='Product_Tonic_Treatment.jsp';"></div>
                     </div>
                     <div class="loss_extra">
                     <div class="content">
                           <a onfocus="blur()" href="Product_Extra.jsp" onMouseOver="this.innerHTML='기타제품'" onMouseOut="this.innerHTML='기타제품<br>찾아보기'">기타제품<br>찾아보기</a>
                        </div>
                  <div class="img-cover" onclick="location.href='Product_Extra.jsp';"></div>
                     </div> 
                  </div>
               </section>

         </div>

      <!-- Footer -->
         <footer id="footer" class="wrapper alt">
            <div class="inner">
               <ul class="menu">
               </ul>
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