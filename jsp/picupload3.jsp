<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
   Hyperspace by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
   <head>
      <title>������</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
      <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
   </head>
   <style>
   html {
	height: 100%;
	}
		body {
	margin: 0;
	height: 100%;
	font-family: "G���� �꽺 TTF";
	}
	#wrapper {
	min-height: 100%;
	position: relative;
	padding-bottom: 19px; /* footer height */
	}
   footer{
			background-color:#121212;
			position:absolut;
			bottom:0;
				}
	#image_container {
	  max-width: 512px;
	  height: auto;
	}
   </style>
   <body class="is-preload">

      <!-- Header -->
         <header id="header">
            <a href="index.jsp" class="title"><!-- <img src="images/morkak_white.png" style="height: 80px; width: 80px;"/> -->������</a>
            <nav>
               <ul>
                  <li><a href="index.jsp">Home</a></li>
                  <li><a href="headchoice.jsp">����</a></li>
                  <li><a href="index.jsp#three">����������</a></li>
                  <li><a href="LogoutService">�α׾ƿ�</a></li>
               </ul>
            </nav>
         </header>

      <!-- Wrapper -->
         <div id="wrapper" style="background-color:#EDEDED;">

            <!-- Main -->
               <section id="main" class="wrapper">
                  <div class="inner">
                     <h1 class="major" align="center")>���� ���ε�</h1>
                     <center>
                     	<h1>�������ּ���!</h1>
						<h2>
							1. �ñ��� ������ �ִ��� �ڼ��� ����ּ���!<br>
							2. ����� �ﰡ�� �����Ӹ��� ������ ���͸� �����ּ���!<br>
							3. ���� �νķ���  70% ������ ��� �ٽ� ����ּ���!<br>
							4. ���� ����ó�� �������� �κ��� �߶��ּ���
							<br>
							<a><img src="images/sample3.png"/></a>
                    	</h2>
                     <form action = "http://127.0.0.1:9000/picupload3" method = "POST"
                           enctype = "multipart/form-data">
                           <div id="image_container"></div>
                           <script src="https://code.jquery.com/jquery-2.2.1.js"></script>
                         <script>
                         var num = 0;
                         function setThumbnail(event) { 
                        	 
                        	if(num==0){
                            var reader = new FileReader(); 
                             reader.onload = function(event) { 
                            	 
                            		 var img = document.createElement("img");
		                             img.setAttribute("src", event.target.result); 
		                             img.setAttribute("width", "300");
		                             img.setAttribute("height", "300");
		                             document.querySelector("div#image_container").appendChild(img); 
		                             
                         }; 
                             reader.readAsDataURL(event.target.files[0]); 
                        	 num++;
                        }else{
                                var reader = new FileReader(); 
                                 reader.onload = function(event) { 
                                	 $(document).ready(function() {
										$("div#image_container").empty();
										$("div#image_container").append("<img src="+event.target.result+" width='300' height='300'>");
                                	 });
                                	 
    		                             
                             }; 
                                 reader.readAsDataURL(event.target.files[0]); 
                        
                        	}
                         }
                      </script>
                        
                      <input type = "file" id="image" accept="image/*" onchange="setThumbnail(event);" name = "file"/>
                      <br>
                      <br>
                      <input type = "submit"/>
                      </form>
                      </center>
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