<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html	xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title>贵美商城-商品分类页</title>
 <link rel="stylesheet"	type="text/css"	href="css/global.css"	/>
 <link rel="stylesheet"	type="text/css"	href="css/layout.css"	/>
 <script type="text/JavaScript" defer="true">
	var oImg=document.getElementById("show").getElementsByTagName("img");
	for(var i=1;i<=(oImg.length-3);i++){
		oImg[i].onmouseover=function(){oImg[0].src=this.src.replace('.jpg','_big.jpg');
			this.style.border='2px #ff7300 solid';}
		oImg[i].onmouseout=function(){this.style.border='2px #ccc solid';}
 	}
 </script>
</head>
<body>
<div id="container">
	<iframe id="header" src="header.html" width="980" height="136" frameborder="0" scrolling="no"></iframe>
	<div class="good">
		<h1>联想Y450A-TFO(NBA纪念版) 512独显超强性价比</h1>
		<ul class="f_l" id="show">
			<li class="bigimg"><a href="buy.html"><img src="images/show1_big.jpg" alt="笔记本大图" /></a></li>
			<li class="smallimg"><img src="images/show1.jpg" alt="小图1" /></li>
			<li class="smallimg"><img src="images/show2.jpg" alt="小图2" /></li>
			<li class="smallimg"><img src="images/show3.jpg" alt="小图3" /></li>
			<li class="smallimg"><img src="images/show4.jpg" alt="小图4" /></li>
			<li class="smallimg"><img src="images/show5.jpg" alt="小图5" /></li>			
			<li class="op clear f_l"><a href="#"><img src="images/recommend_to_friend.gif" alt="分享" /></a></li>
			<li class="op f_l"><a href="#"><img src="images/add_to_watched_item.gif" alt="收藏" /></a></li>			
		</ul>
		<ul class="goodinfo f_l">
			<li>一 口 价：<span>80.00元 </span></li>
			<li>运　　费：<span>免运费</span></li>
			<li class="h74 buynow"><a href="buy.html"><img src="images/button_buynow.gif" alt="alt" /></a></li>
			<li class="onlinepay">此商品支持<a href="#">网银支付</a>，网上汇款免手续费。<br />收货满意后出售者才能拿钱，货款都安全！</li>
			<li>剩余时间：<span>10天23小时</span></li>
			<li>本期售出：<span>2件</span></li>
			<li>累计售出：<span>8件</span></li>
			<li class="f_l w175">商品类型：<span>全新</span></li>
			<li>所 在 地：<span>山西太原</span></li>
			<li class="f_l w175">商品数量：<span>1件</span></li>
			<li>浏 览 量：<span>17次</span></li>			
		</ul>
	</div>
	<iframe id="footer" src="footer.html" width="980" height="136" frameborder="0" scrolling="no"></iframe>
</div> <!--container end-->	
</body>
</html>
