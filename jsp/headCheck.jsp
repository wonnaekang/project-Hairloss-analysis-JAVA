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
<title>������</title>
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
		font-family: "G���� �꽺 TTF";
	}
</style>
</style>
<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<a href="index.jsp" class="title">������</a>
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="notice.jsp">����</a></li>
				<li><a href="index.jsp#three">����������</a></li>
                <li><a href="LogoutService">�α׾ƿ�</a></li>
			</ul>
		</nav>
	</header>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<section id="main" class="wrapper" style="background-color:#EDEDED">
			<div class="inner">
				<h1 class="major" align="center">�ڰ����� ����ǥ</h1>												
				<form action="SurveyService" method="post">
					<div align="center">
					<table class="normal" style="width:1000px; border:1px;" bgcolor="transparent">
						<tr>
						<td>��</td>
						<td colspan="2" style="color:#121212">YES</td>
						<td colspan="3" style="color:#121212">NO</td>
						</tr> 
						<tr>
							<td style="color:#EDEDED">1. ���ǰ� ���÷� ���ư� �����ϴ�.</td>
							<td class="normal" colspan="2"><input type="radio" name="que1" value="Y" style="width:20px;height:20px;"></td>
							<td class="normal"colspan="3"><input type="radio" name="que1" value="N" style="width:20px;height:20px;"></td>
						</tr>
						<tr>
							<td style="color:#121212">2. �Ϸ翡 100���� �̻� ������.</td>
							<td class="normal" colspan="2"><input type="radio" name="que2" value="Y" style="width:22px;height:22px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que2" value="N" style="width:22px;height:22px;"></td>
						</tr>
						<tr>
							<td style="color:#EDEDED">3. �Ӹ�ī������ ���� �ϼ����� �ʹ� ���� ������.</td>
							<td class="normal" colspan="2"><input type="radio" name="que3" value="Y" style="width:20px;height:20px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que3" value="N" style="width:20px;height:20px;"></td>
						</tr>
						<tr>
							<td style="color:#121212">4. �ڰ� �Ͼ�� ������ �Ӹ�ī���� ���� �����ִ�.</td>
							<td class="normal" colspan="2"><input type="radio" name="que4" value="Y" style="width:22px;height:22px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que4" value="N" style="width:22px;height:22px;"></td>
						</tr>
						<tr>
							<td style="color:#EDEDED">5. �Ӹ�ī���� ��� ���� ����.</td>
							<td class="normal" colspan="2"><input type="radio" name="que5" value="Y" style="width:20px;height:20px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que5" value="N" style="width:20px;height:20px;"></td>
						</tr>
						<tr>
							<td style="color:#121212">6. ���ǿ� ���� ����.</td>
							<td class="normal" colspan="2"><input type="radio" name="que6" value="Y" style="width:22px;height:22px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que6" value="N" style="width:22px;height:22px;"></td>
						</tr>
						<tr>
							<td style="color:#EDEDED">7. ��� ���� �Ӹ����� Ȯ �پ���.</td>
							<td class="normal" colspan="2"><input type="radio" name="que7" value="Y" style="width:20px;height:20px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que7" value="N" style="width:20px;height:20px;"></td>
						</tr>
						<tr>
							<td style="color:#121212">8. �ָ������� �Ǿ� ���ǻ���� ���δ�.</td>
							<td class="normal" colspan="2"><input type="radio" name="que8" value="Y" style="width:22px;height:22px;"></td>
							<td class="normal" colspan="3"><input type="radio" name="que8" value="N" style="width:22px;height:22px;"></td>
						</tr>
						<tr>
		                    <td style="color:#EDEDED">9. �̸��� ������ �κ��� ������ ����Ÿ���.</td>
		                    <td class="normal" colspan="2"><input type="radio" name="que9" value="Y" style="width:20px;height:20px;"></td>
		                    <td class="normal" colspan="3"><input type="radio" name="que9" value="N" style="width:20px;height:20px;"></td>
                 		</tr>
		                <tr>
		                    <td style="color:#121212">10. ���ǿ� �������� ���ڱ� �þ �� ����.</td>
		                    <td class="normal" colspan="2"><input type="radio" name="que10" value="Y" style="width:22px;height:22px;"></td>
		                    <td class="normal" colspan="3"><input type="radio" name="que10" value="N" style="width:22px;height:22px;"></td>
		                </tr>
					</table>
					</div>
						<tr>
							<div align="center">
							<td><input type="submit" value="����" style="background-color:#121212"></td>
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