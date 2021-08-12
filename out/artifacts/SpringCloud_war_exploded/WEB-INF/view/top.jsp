<%@ page language = "java" import = "java.util.*" pageEncoding = "UTF-8"%>

<nav class="navbar navbar-default navbar-fixed-top" style="background-color: #ffffff; margin-bottom: 0px; height: 10%; z-index: 50; box-shadow: 0px 0px 1px 1px #ededed;">
	<div class="container" style = "width: 100%; margin-left: 5px;">
		<%-- 左侧图标等 --%>
		<div class = "navbar-header" style="margin-top: 10px; margin-left: 5px; ">
			<span style="float: left; margin-left: 5px; margin-top: 5px;">
				<img src="${pageContext.request.contextPath }/img/logo@2x.png" height="40px" />
			</span>
			<a class = "navbar-brand" href = "index.action" style = "margin-left: 35px; margin-top: 5px;"><font size = "3px">首页</font></a>
			<a class = "navbar-brand" href = "index.action" style = "margin-left: 35px; margin-top: 5px;"><font size = "3px">分享</font></a>
			<a class = "navbar-brand" href = "index.action" style = "margin-left: 35px; margin-top: 5px;"><font size = "3px">更多</font></a>
		</div>


		<%-- 右侧用户信息 --%>
		<div id = "navbar" style = "float: right; margin-top: 10px; ">
			<ul class = "nav navbar-nav">
				<li class = "dropdown" style = "width: 130px">
					<a href = "#" class = "dropdown-toggle" id = "user" data-toggle = "dropdown" role = "button" aria-haspopup = "true" aria-expanded = "false">
						<img src = "${pageContext.request.contextPath }/img/titalpicture.png" height = "30px" class = "img-circle"/>
						&nbsp;&nbsp;
						<font size="3px;">${username}</font>
						<span class = "caret" style = "width: 6px;"></span>
					</a>

					<%-- 下拉列表 --%>
					<ul class="dropdown-menu">
						<li><a href="index.action">个人中心</a></li>
						<li><a href="user/logout.action">退出登录</a></li>
					</ul>
				</li>
				<li><a><font size="3px"> | </font></a></li>
				<li><a href="#" class="glyphicon glyphicon-bell" title="系统通知" style = "font-size: 23px;"></a></li>
				<li><a href="#" class="glyphicon glyphicon-list-alt" title="意见反馈" style = "font-size: 23px;"></a></li>
			</ul>
		</div>
	</div>
</nav>
