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
	body {
		weight:100%;
		height:100%;
		margin:0;
	}
</style>
<body>
<div id="slider-title">
	<img src="${pageContext.request.contextPath }/img/logo.png" height="45" width="45" />
	<div id="title-logo">yun网盘</div>
</div>

<!-- 图片轮播 -->
<div class="slider" style = "height:100%; width:100%; margin:0px; position: absolute;">
	<ul class="slider-main" style = "height:100%; width:100%; margin:0px; position: absolute;">
		<li class="slider-panel" style = "height:100%;width:100%; margin:0px; position: absolute;">
			<a href="#">
				<img alt="yun网盘" title="yun网盘" src="${pageContext.request.contextPath }/img/a.jpg" style = "height:100%;width:100%; margin:0px;">
			</a>
		</li>
		<li class="slider-panel" style = "height:100%;width:100%; margin:0px; position: absolute;">
			<a href="#" >
				<img alt="yun网盘" src="${pageContext.request.contextPath }/img/d.jpg" style = "height:100%;width:100%; margin:0px;">
			</a>
		</li>
		<li class="slider-panel" style = "height:100%;width:100%; margin:0px; ">
			<a href="#" >
				<img alt="yun网盘" title="yun网盘" src="${pageContext.request.contextPath }/img/g.jpg" style = "height:100%;width:100%; margin:0px;">
			</a>
		</li>
		<li class="slider-panel" style = "height:100%;width:100%; margin:0px;">
			<a href="#" >
				<img alt="yun网盘" title="yun网盘" src="${pageContext.request.contextPath }/img/h.jpg" style = "height:100%;width:100%; margin:0px;">
			</a>
		</li>
	</ul>
	<div class="slider-extra" style="margin-top:210px;">
		<ul class="slider-nav">
			<li class="slider-item"></li>
			<li class="slider-item"></li>
			<li class="slider-item"></li>
			<li class="slider-item"></li>
		</ul>
	</div>
</div>

<div id="login" style="box-shadow: 1px 1px 1px 1px gray;">
	<form action="user/login.action" method="post">
		<div id="form-title">账号密码登录</div>
		<input type="text" placeholder="用户名" name="username" class="login-input" id="name" />
		<input type="password" placeholder="密码" name="password" class="login-input" /><br/>
		<input type="checkbox" class="input" /><span class="ck_text">下次自动登录</span>
		<input type="submit" value="登录" class="login-btn" /><br/>
		<input type="submit" value="立即注册" class="login-btn" onclick="return regist()"/>
		<div id="bottom" >
			<div id="inner">
				<div class="inner">
					<a href="#" class="a_inner">扫一扫登录</a>
				</div>
				<div class="img-login">
					<img src="${pageContext.request.contextPath }/img/weibo.png" width="25" height="25">
				</div>
				<div class="img-login">
					<img src="${pageContext.request.contextPath }/img/qq.png" width="25" height="25">
				</div>
				<div class="clearFloat"></div>
			</div>
		</div>
	</form>
</div>
</body>
<script type="text/javascript">
	function regist(){
		window.location.href = "user/regist.action";
		return false;
	}
</script>
</html>
