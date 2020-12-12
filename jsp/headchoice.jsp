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
	.loss_wjdtnfl{
		background-image:url(images/loss_wjdtnfl.jpg);
		height:450px;
		width: 33%;
		float: left; 
		background-size:cover;
		position:relative;
		cursor: pointer;
		
	}
	.loss_circle{
		background-image:url(images/loss_circle.jpg);
		height:450px;
		width: 33%;
		float: left; 
		background-size:cover;
		position:relative;
		cursor: pointer;
		
	}
	.loss_m{
		background-image:url(images/loss_m.jpg);
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
	 .loss_wjdtnfl .content{
     position: absolute;
     top:50%;
     left:50%; 
     transform: translate(-50%, -50%);                                                                   
     color: white;
     z-index: 2;
     text-align: center;
      font-size:45px;
}
	 .loss_circle .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     color: white;
     z-index: 2;
     text-align: center;
      font-size:45px;
}
	 .loss_m .content{
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

		a:href { text-decoration:none } 		
	
		footer{position:absolut;
				bottom:0;
				}
				
   }   
</style>
	<body class="is-preload" >

		<!-- Header -->
			<header id="header">
				<a href="index.jsp" class="title">모락모락</a>
				<nav>
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="headCheck.jsp">이전</a></li>
						<li><a href="index.jsp#three">마이페이지</a></li>
		                <li><a href="LogoutService">로그아웃</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main" class="wrapper">
					
						<div class="inner">
							<h1 align= "center" class="major">유형선택</h1>
							<div class="loss_wjdtnfl" >
							<div class="content">
									<a href="picupload3.jsp" onfocus="thisblur()" href="" onMouseOver="this.innerHTML='정수리탈모'" onMouseOut="this.innerHTML='정수리를<br>중심으로 '">정수리를 <br>중심으로 </a>
								</div>
						<div class="img-cover" onclick="location.href='picupload3.jsp';"></div>
								
							</div>
							
							<div class="loss_circle" >
							<div class="content">
									<a href="picupload2.jsp" onfocus='this.blur()' href="" onMouseOver="this.innerHTML='원형탈모'" onMouseOut="this.innerHTML='부분적으로<br>동그랗게 '">부분적으로 <br> 동그랗게 </a>
								</div>
						<div class="img-cover" onclick="location.href='picupload2.jsp';"></div>
							</div>
							<div class="loss_m">
							<div class="content">
									<a href="picupload.jsp" onfocus='this.blur()' href="" onMouseOver="this.innerHTML='M자탈모'" onMouseOut="this.innerHTML='헤어라인이<br>M모양으로 '">헤어라인이 <br>M모양으로 </a>
								</div>
						<div class="img-cover" onclick="location.href='picupload.jsp';"></div>
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