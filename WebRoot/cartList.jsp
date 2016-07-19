<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
 <title>贵美商城</title>
 <link rel="stylesheet"	type="text/css"	href="css/global.css"	/>
 <link rel="stylesheet"	type="text/css"	href="css/layout.css"	/>
 <script type="text/JavaScript">
 	function multiCheck(oThis){
 		var oInput=document.getElementsByTagName("input");
 		for (var i=1;i<oInput.length;i++){ 	
 				oInput[i].checked=oThis.checked;}
 	}
	</script>
</head>
<body>
<div id="container">
	<iframe id="header" runat="server" src="header.jsp" width="980" height="136" frameborder="0" scrolling="no"></iframe>
	<div class="catlist a_c">
		<ul class="w20p check">
			<h3><input type="checkbox" name="checkall" onclick="multiCheck(this)" />全选</h3>
			<li><input type="checkbox" /></li>
			<li><input type="checkbox" /></li>
			<li><input type="checkbox" /></li>
			<li><input type="checkbox" /></li>			
		</ul>
		<ul class="w20p">
			<h3>商品名称</h3>
			<c:forEach items="${list }" var="p">
				<li>${p.ep_name }</li>
			</c:forEach>
		</ul>
		<ul class="w50p info">
			<h3>商品简介</h3>
			<c:forEach items="${list }" var="p">
				<li>${p.ep_description}</li>
			</c:forEach>
			</ul>
		<ul class="w10p price">
			<h3>价格</h3>
			<c:forEach items="${list }" var="p">
				<li>${p.ep_price}</li>
			</c:forEach>
		</ul>
	</div>
	<iframe id="footer" runat="server" src="footer.html" width="980" height="136" frameborder="0" scrolling="no"></iframe>
</div> <!--container end-->	
</body>

</html>