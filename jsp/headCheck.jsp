<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

<html>
<head>
<title>모락모락</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main2.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

</head>
<style>
		body {
		font-family: "G마켓 산스 TTF";
	}
</style>
</style>
<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<a href="index.jsp" class="title">모락모락</a>
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="notice.jsp">이전</a></li>
				<li><a href="index.jsp#three">마이페이지</a></li>
                <li><a href="LogoutService">로그아웃</a></li>
			</ul>
		</nav>
	</header>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<section id="main" class="wrapper" style="background-color:#EDEDED">
			<div class="inner">
				<h1 class="major" align="center">자가진단 문진표</h1>												
				<form action="SurveyService" method="post">
					<div align="center">
					<table class="normal" style="width:1000px; border:1px;" bgcolor="transparent">
						<tr>
						<td>　</td>
						<td colspan="2" style="color:#121212">YES</td>
						<td colspan="3" style="color:#121212">NO</td>
						</tr> 
						<tr>
							<td style="color:#EDEDED">1. 두피가 수시로 가렵고 예민하다.</td>
							<td class="normal" colspan="2"><input type="radio" name="que1" value="Y" style="width:20px;height:20px;"></td>
							<td class="normal"colspan="3"><input type="radio" name="que1" value="N" style="width:20px;height:20px;"></td>
						</tr>
						<tr>
							<td style="color:#121212">2. 하루에 100가닥 이상 빠진다.</td>
							<td class="normal" colspan="2"><input type="radio" name="que2" value="Y" style="width:22px;height:22px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que2" value="N" style="width:22px;height:22px;"></td>
						</tr>
						<tr>
							<td style="color:#EDEDED">3. 머리카락으로 인해 하수구가 너무 자주 막힌다.</td>
							<td class="normal" colspan="2"><input type="radio" name="que3" value="Y" style="width:20px;height:20px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que3" value="N" style="width:20px;height:20px;"></td>
						</tr>
						<tr>
							<td style="color:#121212">4. 자고 일어나면 베개에 머리카락이 많이 빠져있다.</td>
							<td class="normal" colspan="2"><input type="radio" name="que4" value="Y" style="width:22px;height:22px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que4" value="N" style="width:22px;height:22px;"></td>
						</tr>
						<tr>
							<td style="color:#EDEDED">5. 머리카락이 얇고 힘이 없다.</td>
							<td class="normal" colspan="2"><input type="radio" name="que5" value="Y" style="width:20px;height:20px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que5" value="N" style="width:20px;height:20px;"></td>
						</tr>
						<tr>
							<td style="color:#121212">6. 두피에 열이 많다.</td>
							<td class="normal" colspan="2"><input type="radio" name="que6" value="Y" style="width:22px;height:22px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que6" value="N" style="width:22px;height:22px;"></td>
						</tr>
						<tr>
							<td style="color:#EDEDED">7. 어느 순간 머리숱이 확 줄었다.</td>
							<td class="normal" colspan="2"><input type="radio" name="que7" value="Y" style="width:20px;height:20px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que7" value="N" style="width:20px;height:20px;"></td>
						</tr>
						<tr>
							<td style="color:#121212">8. 멀리서보면 뽀얀 두피살부터 보인다.</td>
							<td class="normal" colspan="2"><input type="radio" name="que8" value="Y" style="width:22px;height:22px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que8" value="N" style="width:22px;height:22px;"></td>
						</tr>
						<tr>
		                    <td style="color:#EDEDED">9. 이마와 정수리 부분이 유난히 번들거린다.</td>
		                    <td class="normal" colspan="2"><input type="radio" name="que9" value="Y" style="width:20px;height:20px;"></td>
		                    <td class="normal" colspan="3"><input type="radio" name="que9" value="N" style="width:20px;height:20px;"></td>
                 		</tr>
		                <tr>
		                    <td style="color:#121212">10. 두피에 피지량이 갑자기 늘어난 것 같다.</td>
		                    <td class="normal" colspan="2"><input type="radio" name="que10" value="Y" style="width:22px;height:22px;"></td>
		                    <td class="normal" colspan="3"><input type="radio" name="que10" value="N" style="width:22px;height:22px;"></td>
		                </tr>
					</table>
					</div>
						<tr>
							<div align="center">
							<td><input type="submit" value="제출" style="background-color:#121212"></td>
							</div>							
						</tr>
				</form>

			</div>
		</section>

	</div>

	<!-- Footer -->
	<footer id="footer" class="wrapper alt" style="background-color:#121212">
		<div class="inner" >
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