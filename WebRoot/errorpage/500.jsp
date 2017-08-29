<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
<title>500错误页面</title>
<style>
body, div, p, h3, ul, input {
	margin: 0;
	padding: 0;
}

body {
	font-size: 12px;
	font-family: 'å¾®è½¯éé»', Verdana, "Lucida Grande", "Lucida Sans",
		sans;
	color: #333;
}

g {
	border: none;
}

a {
	text-decoration: none;
	color: #6a9700;
}

a:hover {
	text-decoration: underline;
	color: #f60;
}

.b {
	font-weight: bold;
}

.font16 {
	font-size: 16px;
}

.fl {
	float: left;
}
/* æ¸é¤æµ®å¨ */
.clearfix:after {
	content: "";
	display: block;
	height: 0;
	font-size: 0;
	clear: both;
}

.clearfix {
	zoom: 1;
}

.head {
	width: 1000px;
	height: 160px;
	border-bottom: 1px solid #ccc;
	margin: 0 auto;
}

.head .logo {
	display: inline-block;
}

.warpper {
	width: 1000px;
	margin: 0 auto;
}

.content {
	width: 520px;
	min-height: 189px;
	_height: 189px;
	padding: 50px 0 0 210px;
	margin: 100px 0 120px 180px;
	background: url(<%=basePath%>errorpage/404/bg404.jpg) no-repeat;
}

.falseCode {
	width: 90px;
	padding-right: 20px;
	border-right: 1px solid #ccc;
	text-align: right;
	font-size: 50px;
	font-family: Arial, Helvetica, sans-serif;
	color: #999;
	float: left;
}

.falseText {
	width: 380px;
	padding-left: 20px;
	float: left;
	line-height: 2;
}
</style>
</head>

<body>
	<div class="head">


		<a class="logo" href="#" title=""><img
			src="<%=basePath%>errorpage/404/logo.gif" alt=""></a>
	</div>

	<div class="warpper">
		<div class="content clearfix">
			<div class="falseCode">500</div>
			<div class="falseText">
				<p class="font16 b">抱歉，您访问的页面有错误，请联系技术人员。</p>
				<p>&nbsp;</p>
				<span id="show"></span> 
				
				<p class="b">
					<a title="返回首页" href="login.jsp">返回首页</a>
				</p>

			</div>
		</div>
	</div>
<script> 
var t=10;//设定跳转的时间 
setInterval("refer()",1000); //启动1秒定时 
function refer(){ 
if(t==0){ 
location="login.jsp"; //#设定跳转的链接地址 
} 
document.getElementById('show').innerHTML=""+t+"秒后跳转到首页"; // 显示倒计时 
t--; // 计数器递减 
//本文转自： 
} 
</script> 


</body>
</html>