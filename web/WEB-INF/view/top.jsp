<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<nav class="navbar navbar-default navbar-fixed-top"
	 style="background-color: #EFF4F8; margin-bottom: 0px; height: 10%; z-index: 50">
	<div class="container">
		<div class="navbar-header" style="float:left; margin-top: 10px;">
			<span style="float: left;">
				<img src="${pageContext.request.contextPath}/img/logo@2x.png" height="50px" href="index.action"/>
			</span>
			<a class = "navbar-brand" href = "index.action" style = "margin-left: 60px; ">首页</a>
		</div>

		<div id="navbar" style="float: right; margin-top: 10px;">
			<ul class="nav navbar-nav">
				<li class="dropdown" style="width:100px">
					<a href="#" class="dropdown-toggle" id="user" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						<font size="3px">${username}</font>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#">个人中心</a></li>
						<li><a href="user/logout.action">退出登录</a></li>
					</ul>
				</li>
				<a class="navbar-brand" href="#">
					<font size="3px" color="#1e90ff">
						<span id="countSize">${countSize}</span>/<span id="totalSize">${totalSize}</span>
					</font>
				</a>
			</ul>
		</div>
	</div>
</nav>
