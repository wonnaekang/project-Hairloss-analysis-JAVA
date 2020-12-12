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
      <title>모락모락</title>
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
	font-family: "G마켓 산스 TTF";
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
            <a href="index.jsp" class="title"><!-- <img src="images/morkak_white.png" style="height: 80px; width: 80px;"/> -->모락모락</a>
            <nav>
               <ul>
                  <li><a href="index.jsp">Home</a></li>
                  <li><a href="index.jsp">이전</a></li>
                  <li><a href="index.jsp#three">마이페이지</a></li>
                  <li><a href="LogoutService">로그아웃</a></li>
               </ul>
            </nav>
         </header>

      <!-- Wrapper -->
         <div id="wrapper" style="background-color:#EDEDED;">

            <!-- Main -->
               <section id="main" class="wrapper">
                  <div class="inner">
                     <h1 class="major" align="center")>모락모락 사용 설명서</h1>
                     <center>
						<h2> <!-- 여기수정 -->
							1. 설문조사 > 탈모 유형 선택 > 사진 업로드 순으로 진행됩니다.</h2>
							<h2>2. 사진 파일명에 영문or숫자로 구성해주세요.</h2>
							<h2>3. <a style="color:#2FED28;">양호</a>, <a style="color:#FF7012;">주의</a>, <a style="color:red;">경계</a> 순으로 등급이 부여됩니다.</h2>
							<h2>4. 결과창에서 SAVE 버튼을 누르면 결과가 저장됩니다.</h2>
							<h2>5. 자가진단을 위한 프로그램입니다. 자세한 진단은 병원에 가주세요!
                    	</h2>
						<br>
						<br>                
				<a href="headCheck.jsp"><input href="headCheck.jsp" type="button" value="시작하기"></a> 
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