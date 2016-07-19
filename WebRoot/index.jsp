<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE	html PUBLIC	"-//W3C//DTD XHTML 1.0 transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html	xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312"	/>
 <title>贵美商城</title>
 <link rel="stylesheet"	type="text/css"	href="css/global.css"	/>
 <link rel="stylesheet"	type="text/css"	href="css/layout.css?id=7"	/>
 <script type="text/JavaScript" src="js/index.js"></script>
</head>
<body> 
	<div id="container">
		<iframe id="header" runat="server" src="header.jsp" width="980" height="136" frameborder="0" scrolling="no"></iframe>
		<div id="main">
    <div class="cat">
			<ul>
				<h1>家用电器</h1>
				<li><a href="cartList.jsp">大家电</a></li>
				<li><a href="cartList.jsp">洗衣机</a></li>
				<li><a href="cartList.jsp">平板电视</a></li>
				<li><a href="cartList.jsp">电热水器</a></li>
				<li><a href="cartList.jsp">家庭音响</a></li>
				<li><a href="cartList.jsp">热水器</a></li>
				<li><a href="cartList.jsp">冰箱</a></li>
				<li><a href="cartList.jsp">冷柜</a></li>
				<li><a href="cartList.jsp">DVD</a></li>
				<li><a href="cartList.jsp">电视附件</a></li>
				<li><a href="cartList.jsp">电燃气</a></li>
				<li><a href="cartList.jsp">空调</a></li>
				<li><a href="cartList.jsp">电饭煲</a></li>
				<li><a href="cartList.jsp">摄像机</a></li>					
				<li><a href="productAction!findAll">更多</a></li>
			</ul>
			<ul>
				<h1>书籍</h1>
				<li><a href="cartList.jsp">西游记</a></li>
				<li><a href="cartList.jsp">红楼梦</a></li>
				<li><a href="cartList.jsp">水浒传</a></li>
				<li><a href="cartList.jsp">三国演义</a></li>
				<li><a href="cartList.jsp">论语</a></li>
				<li><a href="cartList.jsp">读者</a></li>
				<li><a href="cartList.jsp">本草纲目</a></li>
				<li><a href="cartList.jsp">诗经</a></li>
				<li><a href="cartList.jsp">小说</a></li>
				<li><a href="cartList.jsp">史书</a></li>
				<li><a href="cartList.jsp">散文</a></li>
				<li><a href="cartList.jsp">诗歌</a></li>
				<li><a href="cartList.jsp">音乐</a></li>
				<li><a href="cartList.jsp">军事</a></li>
				<li><a href="productAction!findAll">更多</a></li>				
			</ul>
			<ul>
				<h1>手机数码</h1>
				<li><a href="cartList.jsp">三星</a></li>
				<li><a href="cartList.jsp">苹果</a></li>
				<li><a href="cartList.jsp">华为</a></li>
				<li><a href="cartList.jsp">联想</a></li>
				<li><a href="cartList.jsp">小米</a></li>
				<li><a href="cartList.jsp">魅族</a></li>
				<li><a href="cartList.jsp">vivo</a></li>
				<li><a href="cartList.jsp">oppo</a></li>
				<li><a href="cartList.jsp">中兴</a></li>
				<li><a href="cartList.jsp">努比亚</a></li>
				<li><a href="cartList.jsp">金立</a></li>
				<li><a href="cartList.jsp">HTC</a></li>
				<li><a href="cartList.jsp">索尼</a></li>
				<li><a href="cartList.jsp">乐视</a></li>
				<li><a href="productAction!findAll">更多</a></li>					
			</ul>
			<ul>
				<h1>日用百货</h1>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="cartList.jsp"></a></li>
				<li><a href="productAction!findAll">更多</a></li>					
		  </ul>      
    </div> <!--cat end-->
			<div id="content">
				<div class="content_top">
					<div>
            <img src="images/ad-01.jpg" alt="9月新品新气象" id="div1" />
            <img src="images/ad-02.jpg" alt="流行服饰魅力场" id="div2" />
            <img src="images/ad-03.jpg" alt="食全食美" id="div3" />
            <img src="images/ad-04.jpg" alt="outlets开张啦" id="div4" />
          </div>
          <div id="adv">
          	<a href="JavaScript:show(1);">1</a>&nbsp;<a class="adv" href="JavaScript:show(2);">2</a>&nbsp;<a class="adv" href="JavaScript:show(3);">3</a>&nbsp;<a class="adv" href="JavaScript:show(4);">4</a>
          </div>
				</div> <!-- content_top end -->
      <div class="content_list">
        <dl>
        	<dt><img src="images/promote-1.jpg" alt="alt" /></dt>
					<dd><a href="info.jsp">惠普商务移动应用英寸笔记本</a></dd>
				</dl>
				<dl>						
        	<dt><img src="images/promote-2.jpg" alt="alt" /></dt>
					<dd><a href="info.jsp">夏新N6 GPS真人语音导航手机 超低特价疯抢	数量有限！</a></dd>
				</dl>
				<dl>						
        	<dt><img src="images/promote-3.jpg" alt="alt" /></dt>
					<dd><a href="info.jsp">三星家庭影院 HT-TZ325	 购机送好礼(超值性价比)</a></dd>
				</dl>
				<dl>						
        	<dt><img src="images/laser-pen.jpg" alt="alt" /></dt>
					<dd><a href="info.jsp">明基MP512投影机 2899元 送100元京卷 SVGA	2200流明</a></dd>
				</dl>
				<dl>						
        	<dt><img src="images/mouse.jpg" alt="alt" /></dt>
					<dd><a href="info.jsp">罗技数据1TB移动鼠标729元开抢了！</a></dd>
				</dl>
				<dl>						
        	<dt><img src="images/earphone.jpg" alt="alt" /></dt>
					<dd><a href="info.jsp">海森那尔极品耳机绝对不容错过！</a></dd>
				</dl>
				<dl>						
        	<dt><img src="images/wancom.jpg" alt="alt" /></dt>
					<dd><a href="info.jsp">亚马逊随时阅读，随时记录，时尚最佳选择！</a></dd>
				</dl>
				<dl>
        	<dt><img src="images/frame.jpg" alt="alt" /></dt>
					<dd><a href="info.jsp">优雅相框</a></dd>
				</dl>
				<dl>
        	<dt><img src="images/notebook.jpg" alt="alt" /></dt>
					<dd><a href="info.jsp">IBM	2009最新上网本，特色尽显</a></dd>
				</dl>     	
			</div><!-- content_list end -->
		</div><!-- content end -->
    <div class="sidebar">
         <div class="r1"></div>				
				 <div	class="r2">
					<dl>
						<dt><img src="images/show1.jpg" alt="alt" /></dt>
						<dd><a href="info.jsp">大牌狂降价，三折直送</a></dd>
					</dl>
					<dl>
						<dt><img src="images/show2.jpg" alt="alt" /></dt>
						<dd><a href="info.jsp">大学要求老师开网店</a></dd>
					</dl>
					<dl>
						<dt><img src="images/show5.jpg" alt="alt" /></dt>
						<dd><a href="info.jsp">黑眼圈推荐，美白不停</a></dd>
					</dl>
					<dl>
						<dt><img src="images/show4.jpg" alt="alt" /></dt>
						<dd><a href="info.jsp">瘦身狂潮风，修形之选</a></dd>
					</dl>
			</div> <!--r2	end-->	    
					<div id="tab">
					  <div id="tabtitle1" onmouseover="switchMe(1);"></div>
					  <div id="tabtitle2" onmouseover="switchMe(2);"></div>		
					  <div id="tabbody">
					  	<img src="images/tabbody2.gif" alt="手机充值" />
					  </div>											  
					</div>
				</div> <!--sidebar end-->				
		 </div>	<!--main end-->
     <iframe id="footer" runat="server" src="footer.html" width="980" height="150" frameborder="0" scrolling="no"></iframe>
	<div id="pairflag">
		<a class="f_l" href="#" id="advLeft"><img src="images/list1.jpg" alt="alt" /></a>
		<img class="f_l" id="closeLeft" onclick="leftClose();" src="images/close.gif" alt="alt" />
		<a href="#" class="f_r" id="advRight"><img src="images/list2.jpg" alt="alt" /></a>
		<img id="closeRight" class="f_r" onclick="rightClose();" src="images/close.gif" alt="alt" />
	</div>	
	</div><!--container	end-->		
</body>
</html>
