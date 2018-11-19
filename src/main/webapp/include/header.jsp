<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- DEV --%>
<header class="main-header">
	<!-- Logo -->
	<a href="javascript:void(0);return false;" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-mini"><b>A</b>uth</span> <!-- logo for regular state and mobile devices -->
		<span class="logo-lg"><b>Chok</b>Auth</span>
	</a>
	<!-- 顶部导航栏 -->
	<nav class="navbar navbar-static-top">
		<!-- 左侧栏切换按钮-->
		<a href="javascript:void(0);return false;" class="sidebar-toggle" data-toggle="offcanvas" role="button"></a>
		<!-- 导航下拉菜单 -->
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<li class="dropdown user user-menu notifications-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img src="${staticexternal}/res/AdminLTE/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
						<span class="hidden-xs"> <%=account%> </span><span class=" fa fa-angle-down"></span>
					</a>
					<ul class="dropdown-menu" style="height: 45px;">
						<li>
							<ul id="user-dropdown-menu" class="menu">
								<li menuId="logout"><a href="javascript:void(0);return false;"><i class="glyphicon glyphicon-log-out text-red"></i><span>登出</span></a></li>
							</ul>
						</li>
					</ul>
				</li>
				<!-- 右侧栏切换按钮 -->
				<li><a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a></li>
			</ul>
			<!-- 登出 -->
	    	<form id="oauthLogoutForm" hidden="true" action="${ctx}/logout" method="post">
	    		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	    	</form>
		</div>
	</nav>
</header>