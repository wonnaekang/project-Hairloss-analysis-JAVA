<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("EUC-KR"); %>
<html>
   <head>
      <title>������</title>
      <meta charset="UTF-8" />
      
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
   font-family: "G���� �꽺 TTF";
   }
 
   #wrapper {
   min-height: 100%;
   position: relative;
   padding-bottom: 19px; /* footer height */
   }
      footer{position:absolut;
            bottom:0;
            }
            p{
            font-size : 40px;
            }
            a{
            	font-size: 25px;
            }
   .black_overlay{
        display: none;
        position: absolute;
        top: 0%;
        left: 0%;
        width: 100%;
        height: 120%;
        background-color: black;
        z-index:1001;
        -moz-opacity: 0.8;
        opacity:.80;
        filter: alpha(opacity=80);
    }
       .white_content {
        display: none;
        position: absolute;
        top: 25%;
        left: 25%;
        width: 50%;
        height: 70%;
        padding: 16px;
        border: 5px solid gray;
        background-color: white;
        z-index:1002;
        overflow: auto;
        font-size : 50px
        
    }
    .white{
    font-size : 30px 
    }
    input{
    position: relative;
    
    }
</style>
   <body class="is-preload">
<%
  String sur = (String)session.getAttribute("num1");
  String result = request.getParameter("result");
  String result2 = request.getParameter("result2");
  String check = "";
  %>

      <!-- Header -->
         <header id="header">
            <a href="index.jsp" class="title">������</a>
            <nav>
               <ul>
                  <li><a href="index.jsp">Home</a></li>
                  <li><a href="index.jsp#one">��ǰ/����</a></li>
                        <li><a href="index.jsp#three">����������</a></li>
                        <li><a href="LogoutService">�α׾ƿ�</a></li>
               </ul>
            </nav>
         </header>

      <!-- Wrapper -->
         <div id="wrapper" style="background-color:#EDEDED">

            <!-- Main -->
				<center><form action="ResultService" method="post">
				<section id="main" class="wrapper">
				<div align="center" class="inner">
                  
                  
				<%
					if(result.equals("0")){
						result = "��ȣ : 0";
  					}else if(result.equals("1")){
						result = "���� : 1";
					}else{
						result = "�ɰ� : 2";
					}

				%>

				<%
				if(result.equals("��ȣ : 0")&&sur.equals("0")){
				   check = "��ȣ";
				}else if(result.equals("��ȣ : 0")&&sur.equals("1")){
				   check = "��ȣ";
				}else if(result.equals("��ȣ : 0")&&sur.equals("2")){
				   check = "����";
				}else if(result.equals("���� : 1")&&sur.equals("0")){
				   check = "��ȣ";
				}else if(result.equals("���� : 1")&&sur.equals("1")){
				   check = "����";
				}else if(result.equals("���� : 1")&&sur.equals("2")){
				   check = "���";
				}else if(result.equals("�ɰ� : 2")&&sur.equals("0")){
				   check = "����";
				}else if(result.equals("�ɰ� : 2")&&sur.equals("1")){
				   check = "���";
				}else if(result.equals("�ɰ� : 2")&&sur.equals("2")){
				   check = "���";
				}
				
				
				%>


<h1>
<%
if(check.equals("���")){%>
<br>
    <img src="images/2.png" data-position="center center" width="150" height="150"/> 
	<br>
	<br>
   
   <p>������ ���� �ν����� <a style="font-size : 70px;color:red; "><%=result2%>%</a> �Դϴ�.<br>
	�������� ���� �Ǵ� ����� <a style="font-size : 70px;">"</a><a style="font-size : 70px;color:red; "><%=check %></a><a style="font-size : 70px;">"</a>�̸�, <br>
	���Բ� �پ��� ����� ��õ�ص帳�ϴ�.
	</p>
	
	
	<a href="product.jsp">Ż�� ���� ��ǰ ��������</a>&nbsp&nbsp&nbsp&nbsp
	
	
	<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">Ż�� ���� ����</a>&nbsp&nbsp&nbsp&nbsp
	 <div id="light" class="white_content"  style="text-align:center;">
	  Ż�� ���� ����
	   <br>
	   ��
    <p class="white"><img src="images/pic.png" data-position="center center" width="700" height="450"  align="bottom"/ ><br>��� ���忡 �ʼ����� �������<br>�ܹ����� ��Ÿ���� ���� ��� �ִ� ������ �����ϴ�.</p>
    <a href = "javascript:void(0)"onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">X</a>
    </div>
    
    
    <div id="fade" class="black_overlay">
    
    
   
    </div>
    
    
    
    
	<a href = "javascript:void(0)" onclick = "document.getElementById('light1').style.display='block';document.getElementById('fade').style.display='block'">Ż�� ����� ����</a>
	 <div id="light1" class="white_content"  style="text-align:center;">
	  Ż�� ����� ����
	   <br>
	   ��
    <p class="white"><img src="images/PIC2.jpg" data-position="center center" width="700" height="700" / ></p>
    <a href = "javascript:void(0)"onclick = "document.getElementById('light1').style.display='none';document.getElementById('fade').style.display='none'">X</a>
    </div>
    
    
    <div id="fade" class="black_overlay">
    
    
   
    
    </div> 
   
<% }else if(check.equals("����")){%>
	<br>
   <img src="images/1.png" data-position="center center"width="150" height="150" />
   <br>
	<br>
   
   <p>������ ���� �ν����� <a style="font-size : 70px;color:red; "><%=result2%>%</a> �Դϴ�.<br>
	�������� ���� �Ǵ� ����� <a style="font-size : 70px;">"</a><a style="font-size : 70px;color:#FF7012; "><%=check %></a><a style="font-size : 70px;">"</a>�̸�, <br>
	���Բ� �پ��� ����� ��õ�ص帳�ϴ�.
	</p>
	<a href="product.jsp">Ż�� ���� ��ǰ ��������</a>&nbsp&nbsp&nbsp&nbsp
	
	
	<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">Ż�� ���� ����</a>&nbsp&nbsp&nbsp&nbsp
	 <div id="light" class="white_content"  style="text-align:center;">
	  Ż�� ���� ����
	   <br>
	   ��
    <p class="white"><img src="images/pic.png" data-position="center center" width="700" height="450"  align="bottom"/ ><br>��� ���忡 �ʼ����� �������<br>�ܹ����� ��Ÿ���� ���� ��� �ִ� ������ �����ϴ�.</p>
    <a href = "javascript:void(0)"onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">X</a>
    </div>
    
    
    <div id="fade" class="black_overlay">
    
    
   
    </div>
    
    
    
    
	<a href = "javascript:void(0)" onclick = "document.getElementById('light1').style.display='block';document.getElementById('fade').style.display='block'">Ż�� ����� ����</a>
	 <div id="light1" class="white_content"  style="text-align:center;">
	  Ż�� ����� ����
	   <br>
	   ��
    <p class="white"><img src="images/PIC2.jpg" data-position="center center" width="700" height="700" / ></p>
    <a href = "javascript:void(0)"onclick = "document.getElementById('light1').style.display='none';document.getElementById('fade').style.display='none'">X</a>
    </div>
    
    
    <div id="fade" class="black_overlay">
    
    
   
    
    </div> 

<% }else {%>
	<br>
   <img src="images/0.png" data-position="center center"width="150" height="150" />
   <br>
	<br>
   
   <p>������ ���� �ν����� <a style="font-size : 70px;color:red; "><%=result2%>%</a> �Դϴ�.<br>
	�������� ���� �Ǵ� ����� <a style="font-size : 70px;">"</a><a style="font-size : 70px; color:#2FED28; "><%=check %></a><a style="font-size : 70px;">"</a>�̸�, <br>
	���Բ� �پ��� ����� ��õ�ص帳�ϴ�.
	</p>
	
	
	<a href="product.jsp">Ż�� ���� ��ǰ ��������</a>&nbsp&nbsp&nbsp&nbsp
	
	
	<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">Ż�� ���� ����</a>&nbsp&nbsp&nbsp&nbsp
	 <div id="light" class="white_content"  style="text-align:center;">
	  Ż�� ���� ����
	   <br>
	   ��
    <p class="white"><img src="images/pic.png" data-position="center center" width="700" height="450"  align="bottom"/ ><br>��� ���忡 �ʼ����� �������<br>�ܹ����� ��Ÿ���� ���� ��� �ִ� ������ �����ϴ�.</p>
    <a href = "javascript:void(0)"onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">X</a>
    </div>
    
    
    <div id="fade" class="black_overlay">
    
    
   
    </div>
    
    
    
    
	<a href = "javascript:void(0)" onclick = "document.getElementById('light1').style.display='block';document.getElementById('fade').style.display='block'">Ż�� ����� ����</a>
	 <div id="light1" class="white_content"  style="text-align:center;">
	  Ż�� ����� ����
	   <br>
	   ��
    <p class="white"><img src="images/PIC2.jpg" data-position="center center" width="700" height="700" / ></p>
    <a href = "javascript:void(0)"onclick = "document.getElementById('light1').style.display='none';document.getElementById('fade').style.display='none'">X</a>
    </div>
    
    
    <div id="fade" class="black_overlay">
    
    
   
    
    </div> 
	
   
<% }%>

</h1>

<br>
<input type="hidden" name="res" value="<%=check%>">
<a ><input onclick="history.back()" type="button" value="BACK" style = "font-size: 13px;"></a>&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="notice.jsp" ><input type="button" value="RESTART" style = "font-size: 13px;"></a>&nbsp&nbsp&nbsp&nbsp&nbsp
<input value="SAVE"  type="submit";>


 </form></center>
 
 
<%-- <br> 	
<br>


<p>������ ���� �ν����� <%=result2%>% �Դϴ�.<br>
�������� ���� �Ǵ� ����� "<%=check %>" �Դϴ�.
</p> --%>






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