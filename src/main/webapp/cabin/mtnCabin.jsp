<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="<%=request.getContextPath()%>/index/img/favicon.png" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/index/css/style.css" />
<title>Insert title here</title>
</head>
<body>
<header>
		<div id="logo">
			<a href="<%=request.getContextPath()%>/index/index.jsp">
			<img src="<%=request.getContextPath()%>/index/img/logo.png" class="img" /></a>
		</div>
		<nav id="navlist">
			<ul>
				<li><a href="<%=request.getContextPath()%>/event/event.html">��s��</a></li>
				<li><a href="<%=request.getContextPath()%>/article/articleList.jsp">�s�ͤ�x</a></li>
				<li><a href="<%=request.getContextPath()%>/shop/goods_index.jsp">��s�p��</a></li>
				<li><a href="<%=request.getContextPath()%>/cabin/mtnIndex.jsp">�n�s��T</a></li>
				<li><a href="<%=request.getContextPath()%>/member/member_main.html">�|������</a></li>
			</ul>
		</nav>
		<div id="memcheck">
			<div id="login">
				<a href="#">�n�J</a>
			</div>
			<div id="register">
				<a href="<%=request.getContextPath()%>/member/register.html">���U</a>
			</div>
		</div>
	</header>

	<table class="booking">

	</table>
	<footer>
		<h4>Copyright <i class="far fa-copyright"></i>2021 G3 SANSAN</h4>
	</footer>
	<script src="https://kit.fontawesome.com/2336c06c64.js"></script>

	<script src="vendors/jquery/jquery-3.6.0.min.js"></script>
	<script>
	
//���s�θ��
	let cabin1Path ="<%=request.getContextPath()%>/CabinServlet.do";
	$.ajax({ 
		url : cabin1Path, 
		data : { 
			"action" : "getBooking" 
		}, 
		dataType : "html", 
		method : "POST", 
		success : function(result) { 
			$(".booking").html(result); 
 		} 
 	}) 

</script>
</body>
</html>

