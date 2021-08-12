<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">

	<title>登陆</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/login.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/login.js"></script>
	<title></title>
</head>
<style type="text/css">
	html
	{
		weight:100%;
		margin:0;
	}
	body
	{
		weight:100%;
		margin:0;
	}
</style>
<body>
<div id="slider-title">
	<img src="${pageContext.request.contextPath }/img/logo.png" height="45" width="45" />
	<div id="title-logo">yun网盘</div>
</div>

<!-- 图片轮播 -->
<div class="slider" style = "height:100%; width:100%; margin:0px;">
	<ul class="slider-main" style = "width:100%; margin:0px;">
		<li class="slider-panel">
			<a href="#">
				<img alt="yun网盘" title="yun网盘" src="${pageContext.request.contextPath }/img/a.jpg" style = "width:100%; margin:0px;">
			</a>
		</li>
		<li class="slider-panel">
			<a href="#" >
				<img alt="yun网盘"   src="${pageContext.request.contextPath }/img/d.jpg" style = "width:100%; margin:0px;">
			</a>
		</li>
		<li class="slider-panel">
			<a href="#" >
				<img alt="yun网盘" title="yun网盘" src="${pageContext.request.contextPath }/img/g.jpg" style = "width:100%; margin:0px;">
			</a>
		</li>
		<li class="slider-panel">
			<a href="#" >
				<img alt="yun网盘" title="yun网盘" src="${pageContext.request.contextPath }/img/h.jpg" style = "width:100%; margin:0px;">
			</a>
		</li>
	</ul>
	<div class="slider-extra">
		<ul class="slider-nav">
			<li class="slider-item"></li>
			<li class="slider-item"></li>
			<li class="slider-item"></li>
			<li class="slider-item"></li>
		</ul>
	</div>
</div>

<div id="login" style = "float:right; box-shadow: 2px 2px 2px 2px gray;">
	<form action="user/regist.action" method="post">
		<div id="form-title">注册新用户</div>
		<input type="text" placeholder="用户名" name="username" class="login-input" id="name" />
		<input type="password" placeholder="密码" name="password" class="login-input" /><br/>
		<input id="agree" type="checkbox" checked /> <span><font size = "1px">阅读并接受《用户协议》</font></span>
		<input type="submit" value="注册" class="login-btn" /><br/>
		<input type="submit" action = "user/login.action" value="登陆" class="login-btn">
	</form>
</div>
</body>

</html>
