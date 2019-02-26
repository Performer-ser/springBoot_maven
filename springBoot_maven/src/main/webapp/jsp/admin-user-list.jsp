<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>User || Controller-list</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/font-awesome/4.7.0/css/font-awesome.css">
<link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<link  rel="stylesheet" type="text/css" href="layui/css/layui.css">
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="layui/layui.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript" src="js/template.js"></script>
<script type="text/javascript" src="js/song.js"></script>


</head>

<body class="hold-transition skin-red sidebar-mini">
	<div class="wrapper">
		<header class="main-header"> <!-- Logo --> <a
			href="admin-music.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>MP3</b></span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Music</b>Player</span>
		</a> <!-- Header Navbar: style can be found in header.less --> <nav
			class="navbar navbar-static-top"> <!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a> <!-- Navbar Right Menu --> </nav> </header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel --> <!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="active treeview"><a href="jsp/admin-music.jsp"> <i
					class="fa fa-fw fa-music"></i> <span>歌曲管理</span>
			</a></li>
			<li><a href="jsp/admin-user.jsp"> <i
					class="fa fa-fw fa-user"></i> <span>用户管理</span>
			</a></li>
			<li><a href="jsp/admin-user-list.jsp"> <i
					class="fa fa-fw fa-user"></i> <span>客户管理</span>
			</a></li>
			<li><a href="jsp/admin-type.jsp"> <i
					class="fa fa-fw fa-music"></i> <span>音乐类型</span>
			</a></li>
			<li><a href="jsp/admin-report.jsp"> <i
					class="fa fa-fw fa-list"></i> <span>报表统计</span>
			</a></li>
		</ul>
		</section> <!-- /.sidebar --> </aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>客户管理</h1>
			<ol class="breadcrumb">
				<li><a href="admin-user.jsp"><i class="fa fa-dashboard"></i>
						首页</a></li>
				<li class="active">客户</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content"> <!-- Info boxes -->
			<div class="row">
				<div class="col-xs-12">
					<div class="box box-danger">

						<!-- /.box-header -->
						<div class="box-body">
							<table id="user" class="layui-table">
								
							</table>
						</div>
					</div>
					<!-- /.box -->
				</div>

			</div>
			<!-- /.row --> </section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 1.0.0
		</div>
		<strong>Copyright &copy; 2019 .</strong> All rights reserved. </footer>

		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>

	</div>
	<!-- ./wrapper -->
	<script type="text/javascript">
		var table;
		layui.use('table', function() {
			var table = layui.table;
			table.render({
				elem : '#user',
				url : 'queryBypage',
				page : true,
				cellMinWidth : 80,
				limit : 2,
				limits : [ 2, 3, 5 ],
				cols : [ [ {
					field : 'uuid',
					width : 627,
					title : '客户编号',
					sort : true
				}, {
					field : 'uname',
					width : 627,
					title : '客户姓名'
				}
				] ]
			});
			table.render();
		});
	</script>
	<!-- jQuery 2.2.3 -->
	<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/app.min.js"></script>
	<!-- Sparkline -->
	<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- SlimScroll 1.3.0 -->
	<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- ChartJS 1.0.1 -->
	<script src="plugins/chartjs/Chart.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="dist/js/pages/dashboard2.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script src="js/admin.js"></script>
	<script src="js/base.js"></script>
</body>
</html>
