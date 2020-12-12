<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<% request.setCharacterEncoding("EUC-KR"); %>
<html>
	<head>
		<title>모락모락</title>
		<meta charset="EUC-KR" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<style>
	  *{margin:0;padding:0;}
	  ul,li{list-style:none;}
	  .slide{height:1100px;width:1525px;overflow:hidden;margin-left:-128px;margin-top:-128px;margin-right:128px;margin-bottom:-192px;}
	  .slide ul{height:100%;}
	  .slide li{height:100%;}
	  .slide li:nth-child(1){background:#EDEDED;}
	  .slide li:nth-child(2){background:#EDEDED;}
</style>
	<body class="is-preload">
	<%
		String ID = (String)session.getAttribute("id");
		System.out.println("로그인한 사용자의 이메일 값 : " + ID);
	%>

		<!-- Sidebar -->
			<section id="sidebar">
				<div class="inner">
					<nav>
						<ul>
							<li><a href="#intro">모락모락</a></li>
							<%if(ID == null){ %> <!-- 로그아웃 -->
							<li><a href="#one">제품/병원</a></li>
							<li><a href="#two">커뮤니티</a></li>
							<li><a href="#three">로그인/회원가입</a></li>
            				<%}else{ %> <!-- 로그인 -->
            				<li><a href=notice.jsp>진단하기</a></li>
            				<li><a href="#one">제품/병원</a></li>
							<li><a href="#two">커뮤니티</a></li>
            				<li><a href="#three">마이페이지</a></li>
            				<li><a href="LogoutService">로그아웃</a></li>
				            <%} %>
						</ul>
					</nav>
				</div>
			</section>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Intro -->
					<section id="intro" class="wrapper style1 fullscreen fade-up">
						<div class="inner" style="display: block;">
						 <!-- <h1>모락모락</h1> -->                                          
                     <div class="slide">
                       <ul>                                                
                         <li><img alt="images" src="images/q1.png" height="1100px" width="1525px"></li>
                         <li><img alt="images" src="images/chair1.png" height="1100px"width="1525px"></li>
                       </ul>
                     </div>
                     <%-- <ul class="actions">
                        <%if(ID == null){ %>
                        <li><a href="login.jsp" class="button scrolly">로그인</a></li>
                           <%}else{ %>
                        <li><a href="headCheck.jsp" class="button">탈모진단</a></li>
                        <li><a href="#one" class="button scrolly">제품보기</a></li>
                           <li><a href="#three" class="button scrolly">마이페이지</a></li>
                           <%} %>
                        
                     </ul> --%>
						</div>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style2 spotlights">
						<section>
							<a href="product.jsp" class="image" style="background-color: #DBDBDB;"><img src="images/hairwash.jpg" data-position="center center" /></a>
							<div class="content" style="background-color: #DBDBDB;">
								<div class="inner">
									<h2>제품</h2>
									<p>케어제품을 소개해드립니다</p>
									<ul class="actions">
										<li><a href="product.jsp" class="button">제품확인</a></li>
									</ul>
								</div>
							</div>
						</section>
						<section>
							<a href="API.html" class="image" style="background-color: #EDEDED;"><img src="images/doctor.jpg" alt="" data-position="top center" /></a>
							<div class="content" style="background-color: #EDEDED;">
								<div class="inner">
									<h2>병원</h2>
									<p>내가 원하는 지역의 전문 병원을 찾을 수 있게 도와드립니다</p>
									<ul class="actions">
										<li><a href="API.jsp" class="button">병원찾기</a></li>
									</ul>
								</div>
							</div>
						</section>
						<!-- <section>
							<a href="#" class="image"><img src="images/pic03.jpg" alt="" data-position="25% 25%" /></a>
							<div class="content">
								<div class="inner">
									<h2>Ultricies aliquam</h2>
									<p>Phasellus convallis elit id ullamcorper pulvinar. Duis aliquam turpis mauris, eu ultricies erat malesuada quis. Aliquam dapibus.</p>
									<ul class="actions">
										<li><a href="generic.html" class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
						</section> -->
					</section>

				<!-- Two -->
					 <section id="two" class="wrapper style3 fade-up">
						<div class="inner" style="background-color:#EDEDED;">
							<a style="font-size: 60px; color: #121212;}">
							다양한 정보를 원하는 커뮤니티에서 찾아보세요!
							</a><br>
							<a style="font-size: 30px; color: #121212;}">
							이미지를 누르면 커뮤니티로 이동합니다.
							</a><br>
							<a style="font-size: 34px; color: #EDEDED;}">
							　
							</a>
							<div class="features" style="background-color:#BDBDBD;">
								<section>
									<span onclick="location.href='https://gall.dcinside.com/board/lists/?id=alopecia'" style="cursor: pointer;">
									<img src="images/dc.png" align="left" style="width: 70px; height: 70px;">
									</span>
									<h3>　디시인사이드<br>　탈모갤러리</h3>
									<p>#자유로운_소통  #솔직한_조언</p>
								</section>
								<section>
									<span onclick="location.href='https://daedamo.com/new/'" style="cursor: pointer;">
									<img src="images/damo.png" align="left" style="width: 70px; height: 70px;">
									</span>
									<h3>　대다모<br>　</h3>
									<p>#국내최초  #최대규모  #1020소모임까지</p>
								</section>
								<section>
									<span onclick="location.href='https://cafe.naver.com/30talmo'" style="cursor: pointer;">
									<img src="images/cafe.jpg" align="left" style="width: 70px; height: 70px;">
									</span>
									<h3>　네이버카페<br>　삼탈모</h3>
									<p>#다양한_제품_후기  #공동구매</p>
								</section>
								<section>
									<span onclick="location.href='https://cafe.naver.com/imaban'" style="cursor: pointer;">
									<img src="images/cafe.jpg" align="left" style="width: 70px; height: 70px;">
									</span>
									<h3>　네이버카페<br>　이마반</h3>
									<p>#毛든소식  #소아_청소년_여성  #누구나</p>
								</section>
							</div>
						</div>
					</section>

				<!-- Three -->
					<section id="three" class="wrapper style2 spotlights">
						<section style="background-color: #DBDBDB;">
							<div class="content">
								<div class="inner">
									<%if(ID == null){ %>
										<h2>로그인</h2>
										<p>로그인</p>
										<ul class="actions">
											<li><a href="login.jsp" class="button">로그인</a></li>
										</ul>
            						<%}else{ %>
	            						<h2>관심제품</h2>
										<p>관심제품</p>
										<ul class="actions">
											<li><a href="myproduct.jsp" class="button">관심제품</a></li>
										</ul>
				            		<%} %>
								</div>
							</div>
						</section>
						<section style="background-color: #EDEDED;">
							<div class="content">
								<div class="inner">
									<%if(ID == null){ %>
										<h2>회원가입</h2>
										<p>회원가입</p>
										<ul class="actions">
										<li><a href="Join.jsp" class="button">회원가입</a></li>
            						<%}else{ %>
            							<h2>검사기록</h2>
										<p>검사기록</p>
										<ul class="actions">
											<li><a href="myrecord.jsp" class="button">검사기록</a></li>
										</ul>
				            		<%} %>
									</ul>
								</div>
							</div>
						</section>

			</div>

		<!-- Footer -->
			<!-- <footer id="footer" class="wrapper style1-alt">
				<div class="inner">
					<ul class="menu">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</footer> -->

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script>
            const all = ele => document.querySelectorAll(ele)
            const one = ele => document.querySelector(ele)
            const slide = _ => {
              const wrap = one('.slide')
              const target = wrap.children[0]
              const len = target.children.length
              const liStyle = `
                position:absolute;
                left:0;right:0;top:0;bottom:0;transition:1s;opacity:0
              `
              target.style.cssText = `position:relative;`
              Array.from(target.children)
              .forEach(ele => ele.style.cssText = liStyle)
              target.children[0].style.opacity = 1
              let pos = 0
              setInterval(_ => {
                target.children[pos].style.opacity = 0
                pos = (pos + 1) % len 
                target.children[pos].style.opacity = 1
              }, 4000)
            }
            window.onload = function () {
              slide()
            }
         </script>

	</body>
</html>