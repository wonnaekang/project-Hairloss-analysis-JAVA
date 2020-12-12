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
		<title>������</title>
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
		System.out.println("�α����� ������� �̸��� �� : " + ID);
	%>

		<!-- Sidebar -->
			<section id="sidebar">
				<div class="inner">
					<nav>
						<ul>
							<li><a href="#intro">������</a></li>
							<%if(ID == null){ %> <!-- �α׾ƿ� -->
							<li><a href="#one">��ǰ/����</a></li>
							<li><a href="#two">Ŀ�´�Ƽ</a></li>
							<li><a href="#three">�α���/ȸ������</a></li>
            				<%}else{ %> <!-- �α��� -->
            				<li><a href=notice.jsp>�����ϱ�</a></li>
            				<li><a href="#one">��ǰ/����</a></li>
							<li><a href="#two">Ŀ�´�Ƽ</a></li>
            				<li><a href="#three">����������</a></li>
            				<li><a href="LogoutService">�α׾ƿ�</a></li>
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
						 <!-- <h1>������</h1> -->                                          
                     <div class="slide">
                       <ul>                                                
                         <li><img alt="images" src="images/q1.png" height="1100px" width="1525px"></li>
                         <li><img alt="images" src="images/chair1.png" height="1100px"width="1525px"></li>
                       </ul>
                     </div>
                     <%-- <ul class="actions">
                        <%if(ID == null){ %>
                        <li><a href="login.jsp" class="button scrolly">�α���</a></li>
                           <%}else{ %>
                        <li><a href="headCheck.jsp" class="button">Ż������</a></li>
                        <li><a href="#one" class="button scrolly">��ǰ����</a></li>
                           <li><a href="#three" class="button scrolly">����������</a></li>
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
									<h2>��ǰ</h2>
									<p>�ɾ���ǰ�� �Ұ��ص帳�ϴ�</p>
									<ul class="actions">
										<li><a href="product.jsp" class="button">��ǰȮ��</a></li>
									</ul>
								</div>
							</div>
						</section>
						<section>
							<a href="API.html" class="image" style="background-color: #EDEDED;"><img src="images/doctor.jpg" alt="" data-position="top center" /></a>
							<div class="content" style="background-color: #EDEDED;">
								<div class="inner">
									<h2>����</h2>
									<p>���� ���ϴ� ������ ���� ������ ã�� �� �ְ� ���͵帳�ϴ�</p>
									<ul class="actions">
										<li><a href="API.jsp" class="button">����ã��</a></li>
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
							�پ��� ������ ���ϴ� Ŀ�´�Ƽ���� ã�ƺ�����!
							</a><br>
							<a style="font-size: 30px; color: #121212;}">
							�̹����� ������ Ŀ�´�Ƽ�� �̵��մϴ�.
							</a><br>
							<a style="font-size: 34px; color: #EDEDED;}">
							��
							</a>
							<div class="features" style="background-color:#BDBDBD;">
								<section>
									<span onclick="location.href='https://gall.dcinside.com/board/lists/?id=alopecia'" style="cursor: pointer;">
									<img src="images/dc.png" align="left" style="width: 70px; height: 70px;">
									</span>
									<h3>������λ��̵�<br>��Ż�𰶷���</h3>
									<p>#�����ο�_����  #������_����</p>
								</section>
								<section>
									<span onclick="location.href='https://daedamo.com/new/'" style="cursor: pointer;">
									<img src="images/damo.png" align="left" style="width: 70px; height: 70px;">
									</span>
									<h3>����ٸ�<br>��</h3>
									<p>#��������  #�ִ�Ը�  #1020�Ҹ��ӱ���</p>
								</section>
								<section>
									<span onclick="location.href='https://cafe.naver.com/30talmo'" style="cursor: pointer;">
									<img src="images/cafe.jpg" align="left" style="width: 70px; height: 70px;">
									</span>
									<h3>�����̹�ī��<br>����Ż��</h3>
									<p>#�پ���_��ǰ_�ı�  #��������</p>
								</section>
								<section>
									<span onclick="location.href='https://cafe.naver.com/imaban'" style="cursor: pointer;">
									<img src="images/cafe.jpg" align="left" style="width: 70px; height: 70px;">
									</span>
									<h3>�����̹�ī��<br>���̸���</h3>
									<p>#پ��ҽ�  #�Ҿ�_û�ҳ�_����  #������</p>
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
										<h2>�α���</h2>
										<p>�α���</p>
										<ul class="actions">
											<li><a href="login.jsp" class="button">�α���</a></li>
										</ul>
            						<%}else{ %>
	            						<h2>������ǰ</h2>
										<p>������ǰ</p>
										<ul class="actions">
											<li><a href="myproduct.jsp" class="button">������ǰ</a></li>
										</ul>
				            		<%} %>
								</div>
							</div>
						</section>
						<section style="background-color: #EDEDED;">
							<div class="content">
								<div class="inner">
									<%if(ID == null){ %>
										<h2>ȸ������</h2>
										<p>ȸ������</p>
										<ul class="actions">
										<li><a href="Join.jsp" class="button">ȸ������</a></li>
            						<%}else{ %>
            							<h2>�˻���</h2>
										<p>�˻���</p>
										<ul class="actions">
											<li><a href="myrecord.jsp" class="button">�˻���</a></li>
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