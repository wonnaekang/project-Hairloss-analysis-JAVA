<%@page import="com.DTO.resultDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.DAO_3"%>
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
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
	google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(drawVisualization);
		
		<%//스크립틀릿
		String mem_id =(String)session.getAttribute("id");
		  //session의 email값 가져오기
	%>
	<%
	//DAO_3 dao = new DAO_3(); //DAO 사용하기 위해 객체 생성
	//ArrayList<resultDTO> resList = null; //DTO를 담은 비어있는 어레이리스트 생성
	//if(mem_id != null){ //세션 생성한 멤버값이 비어있지 않다면 ---로그인 된 상태라면
		//resList=dao.resultSelect(mem_id); //로그인한 id의 정보를 productSelect함수에 담아서 proList에 저장
		//System.out.println(resList.get(0).getRes()+","+resList.get(0).getRes_date());
	//}
%>
		<%-- <%
		String res = session.getParameter("res");
		String date = 
				
		String s[] = {"que1","que2","que3","que4","que5","que6","que7","que8","que9","que10"};
		System.out.print(s[3]);%> --%>
		<%
		//String a="사과";
		//String b="배";
		
		//String res = request.getParameter("res");
		//String res_date = request.getParameter("res_date");
		
		
		
		%>
		function chartView(data){
			
			var arr = [];
			arr.push(['talmo', '최종 결과']);
			
			$.each(data, function(index, obj){
				 if(obj.res=="양호"){
					obj.res = 1;
				}else if(obj.res=="주의"){
					obj.res=3;
				}else{
					obj.res=5;
				} 
				arr.push([obj.res_date,obj.res]);
			})
			//alert(data);
				
		 var data = google.visualization.arrayToDataTable(arr);
		 var options = {
				title : '진단 기록',
				vAxis: {title: '결과'},
				hAxis: {title: '검사 시간'}, 
				seriesType: 'bars',
				backgroundColor: '#DBDBDB',
				fontName: 'G마켓 산스 TTF',
				fontSize: 18,
				colors: ['#80AAA6']
			};		
		var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
		chart.draw(data, options);			
		}
		
		function drawVisualization() { 
			$.ajax({
				url : "resultSelect",
				type : "get",
				data : {"mem_id": '<%=mem_id%>'},
				dataType : "json",
				success : chartView,
				error : function(){ alert("error"); }
			});			
		}
	</script>
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
		footer{position:absolut;
				bottom:0;
				}
</style>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a href="index.jsp" class="title">모락모락</a>
				<nav>
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="index.jsp#three">마이페이지</a></li>
						<li><a href="LogoutService">로그아웃</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper" style="background-color:#EDEDED">

				<!-- Main -->
					<section id="main" class="wrapper">
						<div align="center" class="inner">
							<h1 class="major">검사기록</h1>
						<div id="chart_div" style="width:900px; height: 500px;"></div>
						<li>결과 1점이하 : 양호 3점이하: 주의 5점이하 : 경계</li>
						</div>
					</section>
			</div>

		<!-- Footer -->
			<footer id="footer" class="wrapper alt">
				<div class="inner">
					<ul class="menu">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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