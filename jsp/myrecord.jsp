<%@page import="com.DTO.resultDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.DAO_3"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<title>������</title>
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
		
		<%//��ũ��Ʋ��
		String mem_id =(String)session.getAttribute("id");
		  //session�� email�� ��������
	%>
	<%
	//DAO_3 dao = new DAO_3(); //DAO ����ϱ� ���� ��ü ����
	//ArrayList<resultDTO> resList = null; //DTO�� ���� ����ִ� ��̸���Ʈ ����
	//if(mem_id != null){ //���� ������ ������� ������� �ʴٸ� ---�α��� �� ���¶��
		//resList=dao.resultSelect(mem_id); //�α����� id�� ������ productSelect�Լ��� ��Ƽ� proList�� ����
		//System.out.println(resList.get(0).getRes()+","+resList.get(0).getRes_date());
	//}
%>
		<%-- <%
		String res = session.getParameter("res");
		String date = 
				
		String s[] = {"que1","que2","que3","que4","que5","que6","que7","que8","que9","que10"};
		System.out.print(s[3]);%> --%>
		<%
		//String a="���";
		//String b="��";
		
		//String res = request.getParameter("res");
		//String res_date = request.getParameter("res_date");
		
		
		
		%>
		function chartView(data){
			
			var arr = [];
			arr.push(['talmo', '���� ���']);
			
			$.each(data, function(index, obj){
				 if(obj.res=="��ȣ"){
					obj.res = 1;
				}else if(obj.res=="����"){
					obj.res=3;
				}else{
					obj.res=5;
				} 
				arr.push([obj.res_date,obj.res]);
			})
			//alert(data);
				
		 var data = google.visualization.arrayToDataTable(arr);
		 var options = {
				title : '���� ���',
				vAxis: {title: '���'},
				hAxis: {title: '�˻� �ð�'}, 
				seriesType: 'bars',
				backgroundColor: '#DBDBDB',
				fontName: 'G���� �꽺 TTF',
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
				<a href="index.jsp" class="title">������</a>
				<nav>
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="index.jsp#three">����������</a></li>
						<li><a href="LogoutService">�α׾ƿ�</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper" style="background-color:#EDEDED">

				<!-- Main -->
					<section id="main" class="wrapper">
						<div align="center" class="inner">
							<h1 class="major">�˻���</h1>
						<div id="chart_div" style="width:900px; height: 500px;"></div>
						<li>��� 1������ : ��ȣ 3������: ���� 5������ : ���</li>
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