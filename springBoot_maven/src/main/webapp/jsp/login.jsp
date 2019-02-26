<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Login To</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/font-awesome/4.7.0/css/font-awesome.css">
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

</head>

<body class="hold-transition skin-red layout-top-nav">
	<div class="wrapper">

		<header class="main-header"> <nav
			class="navbar navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<a href="../../index2.html" class="navbar-brand"><b>Music</b>Player</a>
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse">
					<i class="fa fa-bars"></i>
				</button>
			</div>
		</div>
		<!-- /.container-fluid --> </nav> </header>
		<!-- Full Width Column -->
		<div class="content-wrapper">
			<div class="container">
				<!-- Main content -->
				<section class="content">

				<div class="login-box">
					<div class="login-logo">
						<a href="../../index2.html"><b>Music</b>Player</a>
					</div>
					<!-- /.login-logo -->
					<div class="login-box-body">
						<p class="login-box-msg">管理员 登录</p>
						<form action="admin/login" method="post">
							<div class="form-group has-feedback">
								<input type="text" id="username" name="name" class="form-control" placeholder="Username"> 
								<span class="glyphicon glyphicon-user form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="password" id="password" name="pwd" class="form-control" placeholder="Password"> 
								<span class="glyphicon glyphicon-lock form-control-feedback"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="submit" class="btn btn-danger btn-block btn-flat" value="登 录"/>
							</div>
						</form>

					</div>
					<!-- /.login-box-body -->
				</div>
				<!-- /.login-box --> </section>
			</div>
			<!-- /.container -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
		<div class="container">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.0.0
			</div>
			<strong>Copyright &copy; 2019.</strong> All rights reserved.
		</div>
		<!-- /.container --> </footer>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 2.2.3 -->
	<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- SlimScroll -->
	<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script src="js/base.js"></script>
	<script src="js/user.js"></script>
</body>
</html>
