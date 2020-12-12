<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
      <title>������</title>
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
		System.out.println("�α����� ������� �̸��� �� : " + ID);
	%>
      <!-- Header -->
         <header id="header">
            <a href="index.jsp" class="title">������</a>
            <nav>
               <ul>
                  <li><a href="index.jsp">Home</a></li>
							<%if(ID == null){ %> <!-- �α׾ƿ� -->
							<li><a href="login.jsp">�α���</a></li>
							<li><a href="Join.jsp">ȸ������</a></li>
            				<%}else{ %> <!-- �α��� -->
            				<li><a href="index.jsp#three">����������</a>
            				<li><a href="LogoutService">�α׾ƿ�</a></li>
				            <%} %>
               </ul>
            </nav>
         </header>

      <!-- Wrapper -->
         <div id="wrapper">

            <!-- Main -->
               <section id="main" class="wrapper">
               
                  <div class="inner">
                     <h1 align= "center" class="major">��ǰ����</h1>
                     <div class="loss_shampoo">
                     <div class="content">
                           <a onfocus="blur()" href="Product_Shampoo.jsp" onMouseOver="this.innerHTML='��Ǫ'" onMouseOut="this.innerHTML='��Ǫ<br>ã�ƺ���'">��Ǫ<br>ã�ƺ���</a>
                        </div>
                  <div class="img-cover" onclick="location.href='Product_Shampoo.jsp';"></div>
                        
                     </div>
                     
                     <div class="loss_tonic" >
                     <div class="content">
                           <a onfocus="blur()" href="Product_Tonic_Treatment.jsp" onMouseOver="this.innerHTML='���<br>Ʈ��Ʈ��Ʈ'" onMouseOut="this.innerHTML='���<br>Ʈ��Ʈ��Ʈ<br>ã�ƺ���'">���<br>Ʈ��Ʈ��Ʈ<br>ã�ƺ���</a>
                        </div>
                  <div class="img-cover" onclick="location.href='Product_Tonic_Treatment.jsp';"></div>
                     </div>
                     <div class="loss_extra">
                     <div class="content">
                           <a onfocus="blur()" href="Product_Extra.jsp" onMouseOver="this.innerHTML='��Ÿ��ǰ'" onMouseOut="this.innerHTML='��Ÿ��ǰ<br>ã�ƺ���'">��Ÿ��ǰ<br>ã�ƺ���</a>
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