<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<title>User || Controller</title>

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
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript" src="js/template.js"></script>
<script type="text/javascript" src="js/song.js"></script>

</head>

<body class="hold-transition skin-red sidebar-mini" onload="queryAdmins();">
	<div class="wrapper">
		<header class="main-header"> <!-- Logo --> <a
			href="jsp/admin-user.jsp" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
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
			<h1>用户管理</h1>
			<ol class="breadcrumb">
				<li><a href="admin-user.jsp"><i class="fa fa-dashboard"></i>
						首页</a></li>
				<li class="active">用户</li>
			</ol>
			</section>
				
				
				
			<!-- Main content -->
			<section class="content"> <!-- Info boxes -->
			<div class="row">
				<div class="col-xs-12">
					<div class="box box-danger">
					<div class="box-header with-border">
							<div class="btn-group pull-right">
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#addMusic">添加用户</button>
							</div>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<table class="table table-bordered"  id="userfac">
								
							</table>
						</div>
					</div>
					<!-- /.box -->
				</div>

			</div>
			<!-- /.row --> </section>

<div class="modal fade" id="addMusic" tabindex="-1" role="dialog" aria-labelledby="musicModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="musicModalLabel">添加用户</h4>
				</div>
				<div class="modal-body">
					<form action="admin/add" method="post">
						<label for="isongName">用户名</label>
						<input type="text" class="form-control" id="isongName" name="name" placeholder="输入用户名">
						<label for="isongName">密码</label>
						<input type="password" class="form-control" id="password" name="pwd" placeholder="输入密码">  
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							<input type="submit" class="btn btn-danger" value="添加" />
						</div>			
					</form>
				</div>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>


			<div class="modal fade" id="updateUser" tabindex="-1" role="dialog"
				aria-labelledby="updateMusicModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="updateMusicModalLabel">编辑用户</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<form action="" method="post" accept-charset="UTF-8" id="updates">
									<input type="hidden" id="aid" name="aid"> 
									<label for="userName">用户名</label> 
									<input type="text" class="form-control" id="userName" name="name" placeholder="输入用户名">
									<div class="modal-footer">
										<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
										<input type="button" class="btn btn-danger" value="修改" onclick="update()" />
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

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
	function queryAdmins(){
		$.ajax({
  			url:"admin/queryAdmins",
  			type:'post',
  			success:function(data){
  				var m = "<tr><th>用户编号</th><th>用户名</th><th>操作</th></tr>";
  				for (var i = 0; i < data.length; i++) {
  					m += "<tr>"
					+"<td>"+ data[i].aid +"</td>"
					+"<td>"+ data[i].name +"</td>"
					+"<td><button type='button' class='btn btn-default' data-toggle='modal' data-target='#updateUser' onclick='showvalue("+data[i].aid+")'>修改</button><input type='button' class='btn btn-default' data-toggle='modal' value='删除' onclick='deletes("+data[i].aid+")'/></td>"
					+"</tr>";
				}
  				$("#userfac").html(m);
  			}
  		}); 
	}
	queryAdmins();
	function showvalue(obj){
		$.ajax({
  			url:"admin/queryByid",
  			type:'post',
  			data:{'id':obj},
  			success:function(data){
  				$("#aid").val(data.aid);
  				$("#userName").val(data.name);
  			}
  		}); 
	}
	function update(){
		$.ajax({
  			url:"admin/update",
  			type:'post',
  			data:$("#updates").serialize(),
  			success:function(data){	
  				window.location.reload();
  			}
  		}); 
	}
	function deletes(obj){
		$.ajax({
			url:"admin/delete",
  			type:'post',
  			data:{'id':obj},
  			success:function(data){
  				if (data==1) {
					alert("删除成功！");
					window.location.reload();
				}else{
					alert("删除失败！");
				}	
  			}
		});
	}
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
