<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
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
						<li><a href="login.jsp">로그인</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
				<section id="main" class="wrapper" style="background-color:#EDEDED">
						<div class="inner">
						<h1 class="major" align="center">회원가입</h1>
						<form class="user" action="JoinService" method="post">
						<div align="center">
						<table align="center" style="width:600px;">
							<tr>
								<th style="text-align: center;">아이디</th>
								<td>
								<input type="text" id="id" name="id" style="width:350px; text-align: center; color:#FFFFFF;">
							</tr>
							<tr>
								<th style="text-align: center;">비밀번호</th>
								<td>
								<input type="password" id="password" name="pw" style="width:350px; text-align: center; color:#FFFFFF;">
							</tr>							
							<tr>
								<th style="text-align: center;">이메일</th>
								<td>
								<input type="text" id="email" name="email" style="width:350px; text-align: center; color:#FFFFFF;">
							</tr>
						</table>
						<div align="center"><input type="submit" value="회원가입" class="button"/><div>
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