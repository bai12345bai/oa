<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <sd:head />
<html	xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=gb2312"	/>
 <title>贵美商城</title>
 <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
 
 <script type="text/javascript">
 
 $(function(e){
	 //判断名字
	 $("#fname").blur(function(e){
		 var reg=/^\D+$/;
		 var fname=$(this).val();
		 if(fname==""){
			 $("#info_fname").html("名字不能为空");
			 return false;
		 }
		 if(reg.test(fname)==false){
			 $("#info_fname").html("名字中不能包含数字");
		 }else{
			 $("#info_fname").html("");
			 return;
		 }
	 });
	 //验证登录名
	 $("#users.name").blur(function(){
		 var reg=/^[0-9a-zA-Z\_]+$/;
		 var tel=$(this).val();
		 if(reg.test(tel)==false){
			 $("span[name=name]").html("名称格式不正确！");
			 return false;
		 }else
			 $("span[name=name]").html("");
		 return true;
	 });
	 //验证密码
	 $("#users.password").blur(function(){
		 var reg=/^\d{6}$/;
		 var pass=$(this).val();
		 if(reg.test(pass)==false){
			 $("span[name=pass]").html("密码至少为六位数字");
			 return false;
		 }else{
			 $("span[name=pass]").html("");
		 return true;
		 }
	 });
	 //验证两次密码
	 $("#rpass").blur(function(){
		 var pass=$("#users.password ").val();
		 var rpass=$(this).val();
		 if(rpass!==pass){
			 $("span[name=rpass]").html("两次密码不一致");
			 return false;
		 }else{
			 $("span[name=rpass]").html("");
		 return true;
		 }
	 });
	 //验证邮箱
	 $("#users.email").blur(function(){
		 var reg= /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;;
		 var email=$(this).val();
		 if(reg.test(email)==false){
			 $("span[name=info_email]").html("邮箱格式不正确");
			 return false;
		 }else{
			 $("span[name=info_email]").html("");
		 return true;
		 }
	 });
	 //验证手机号
	 $("#users.mobile").blur(function(){
		 var reg= /^\d{11}$/;
		 var mobile=$(this).val();
		 if(reg.test(mobile)==false){
		//	 setTimeout(  function(){ $("#mobiles").focus(); }   ,0 );
			 $("span[name=info_mobile]").html("手机号码格式不正确");
			 return false;
		 }else{
			 $("span[name=info_mobile]").html("");
		 return true;
		 }
	 });
	 
 });

 </script>
 
 <link rel="stylesheet"	type="text/css"	href="css/global.css"	/>
 <link rel="stylesheet"	type="text/css"	href="css/layout.css"	/>
 <script type="text/JavaScript" src="js/func.js"></script>
</head>
<body>
<div id="container">
	<iframe id="header" src="header.jsp" width="980" height="136" frameborder="0" scrolling="no"></iframe>
    <form id="form1" method="post" action="userAction!saveUsers">
    <table class="reg" cellspacing="0px" cellpadding="0px">
      <tbody>
      <tr>
        <td class="a_r w15p"><label for="fname">真实姓名：</label></td>
				<td class="w500"><input name="fname" id="fname" type="text" /><span id="info_fname"></span></td>
        <td class="protocol" rowspan="11">
    		  <h4><img src="images/read.gif" alt="alt" />阅读贵美网服务协议 </h4>
        	<textarea name="textarea" cols="35" rows="15">欢迎阅读服务条款协议，本协议阐述之条款和条件适用于您使用Gmgw.com网站的各种工具和服务。

  本服务协议双方为贵美与贵美网用户，本服务协议具有合同效力。 
  贵美的权利和义务
    1.贵美有义务在现有技术上维护整个网上交易平台的正常运行，并努力提升和改进技术，使用户网上交易活动的顺利。 
    2.对用户在注册使用贵美网上交易平台中所遇到的与交易或注册有关的问题及反映的情况，贵美应及时作出回复。 
    3.对于在贵美网网上交易平台上的不当行为或其它任何贵美认为应当终止服务的情况，贵美有权随时作出删除相关信息、终止服务提供等处理，而无须征得用户的同意。 
    4.因网上交易平台的特殊性，贵美没有义务对所有用户的注册资料、所有的交易行为以及与交易有关的其他事项进行事先审查。 	
				  </textarea>
    	  </td> 				
      </tr>
      <tr>
				<td class="a_r" ><label for="sname">登录名：</label></td>
        <td><input name="users.name" id="users.name" type="text" /><span name="name">（可包含 a-z、0-9 和下划线）</span></td>
      </tr>
      <tr>
        <td class="a_r"><label for="pass">密码：</label></td>
        <td><input name="users.password" id="users.password" type="password" /><span name="pass">（至少包含 6个字符）</span></td>
      </tr>
      <tr>
        <td class="a_r"><label for="rpass">再次输入密码：</label></td>
        <td><input name="rpass" id="rpass" type="password" /><span name="rpass"></span></td>
      </tr>
      <tr>
        <td class="a_r"><label for="email">电子邮箱：</label></td>
        <td><input name="users.email" id="users.email" type="text" /><span name="info_email">（必须包含 @字符）</span></td>
      </tr>
      <tr>
        <td class="a_r"><label for="mobile">手机号码：</label></td>
        <td><input name="users.mobile" id="users.mobile" type="text" /><span name="info_mobile">（必须是11位数字）</span></td>
      </tr>
      <tr>
        <td class="a_r"><label for="gender">性别：</label></td>
				<td>
					<input name="users.sex" id="users.sex" class="b0" type="radio" value="男" checked="checked" />
    	    		<img src="images/Male.gif" alt="alt" />男&nbsp; 
    	    		<input name="users.sex" id="users.sex" class="b0" type="radio" value="女" />
    	    		<img src="images/Female.gif" alt="alt" />女
        </td>
      </tr>
      <tr>
        <td class="a_r">头像：</td>
        <td><input type="file" name=""/></td>
      </tr>    
      <tr>
        <td class="a_r"><label for="hobby">爱好：</label></td>
        <td>
	   	 <input class="b0" type="checkbox" name="hobby" id="hobby" value="checkbox" />&nbsp;运动&nbsp;&nbsp;
  	  	 <input class="b0" type="checkbox" name="hobby2" value="checkbox" />&nbsp;聊天&nbsp;&nbsp;
    	 <input class="b0" type="checkbox" name="hobby3" value="checkbox" />&nbsp;玩游戏
    	</td>
      </tr>
      <tr>
        <td class="a_r"><label for="nYear">出生日期：</label></td>
        <td>
    		<input name="nYear" id="nYear" class="w40" value="yyyy" maxlength="4" />&nbsp;年&nbsp;&nbsp;
    	   <select name="nMonth">
    		 <option value="" selected="selected">[选择月份]</option>
    	     <option value="0">一月</option>
    	     <option value="1">二月</option>
    	     <option value="2">三月</option>
    	     <option value="3">四月</option>
    	     <option value="4">五月</option>
    	     <option value="5">六月</option>
    	     <option value="6">七月</option>
    	     <option value="7">八月</option>
    	     <option value="8">九月</option>
    	     <option value="9">十月</option>
    	     <option value="10">十一月</option>
    	     <option value="11">十二月</option>
    	   </select>
    	  <input name="nDay" value="dd" class="w20" maxlength="2" />日

    	</td>
      </tr>

      <tr> 
        <td colspan="2" class="pl150"><input type="image" name="submit" class="b0" src="images/submit.gif" /><img src="images/reset.gif" class="hand" alt="重置" /></td>
      </tr>
      </tbody>
    </table>	
    </form>		
		<iframe id="footer" src="footer.html" width="980" height="150" frameborder="0" scrolling="no"></iframe>
	</div><!--container	end-->
</body>

</html>