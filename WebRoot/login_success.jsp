<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE	html PUBLIC	"-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html	xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312"	/>
 <title>登录成功贵美商城</title>
 <link rel="stylesheet"	type="text/css"	href="css/global.css"	/>
 <link rel="stylesheet"	type="text/css"	href="css/layout.css"	/>
</head>
<body>
	<div id="container">
		<iframe src="header.jsp" width="980" height="136" frameborder="0" scrolling="no"></iframe>	
		<p class="a_c lh24"><img src="./images/logo.jpg" alt="alt" /><br />
			登录名：${u.name}<br />
			您已经成功登录！！！<br />
		<iframe src="footer.html" width="980" height="150" frameborder="0" scrolling="no"></iframe>
	</div><!--container	end-->
</body>
</html>		

