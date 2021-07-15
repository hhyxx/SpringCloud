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

<body style="background: #0099FF">
<div id="slider-title">
	<img src="${pageContext.request.contextPath }/img/logo.png" height="45" width="45" />
	<div id="title-logo">百度云盘</div>
</div>



<div id="login">
	<form action="user/login.action" method="post">
		<div id="form-title">账号密码登录</div>
		<input type="text" placeholder="用户名" name="username" class="login-input" id="name" />
		<input type="password" placeholder="密码" name="password" class="login-input" /><br/>
		<input type="submit" value="登录" class="login-btn" /><br/>
		<input type="submit" onclick="return regist()" value="立即注册" class="login-btn">
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



