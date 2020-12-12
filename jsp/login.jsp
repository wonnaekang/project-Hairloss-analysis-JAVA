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
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a href="index.jsp" class="title">모락모락</a>
				<nav>
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="Join.jsp">회원가입</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
				<section id="main" class="wrapper" style="background-color:#EDEDED">
						<div class="inner">
						<h1 class="major" align="center">로그인</h1>
						<form class="user" action="LoginService" method="post">
						<div align="center">
						<input id="member_id" name="id" style="width:300px; height:50px; text-align:center; color:#FFFFFF;" fw-filter="isFill" fw-label="아이디" fw-msg="" class="inputTypeText" placeholder="아이디" value="" type="text" >
						<br>
						<input id="member_passwd" name="pw" style="width:300px; height:50px; text-align:center; color:#FFFFFF;" fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드" fw-msg="" autocomplete="off" value="" type="password" placeholder="비밀번호">
						<br>
						<div align="center"><input type="submit" value="로그인" class="button"/><div>
						</div>
						</form>
						</div>
				</section>

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