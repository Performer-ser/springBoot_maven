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

<title>admin || controller</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/font-awesome/4.7.0/css/font-awesome.css">
<link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet" href="plugins/select2/select2.min.css">
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript" src="js/template.js"></script>
<script type="text/javascript" src="js/song.js"></script>
<style type="text/css">
	#musicfac td{padding-left:100px;}
</style>
</head>

<body class="hold-transition skin-red sidebar-mini" onload="queryMuisc();">
	<div class="wrapper">
		<header class="main-header"> <!-- Logo --> <a
			href="jsp/admin-music.jsp" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>MP3</b></span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Music</b>Player</span>
		</a> <!-- Header Navbar: style can be found in header.less --> <nav
			class="navbar navbar-static-top"> <!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a> </nav> </header>
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
			<h1>
				歌曲管理 
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
				<li class="active">歌曲</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content"> <input type="hidden" id="songKey" />
			<!-- Info boxes -->
			<div class="row">
				<div class="col-xs-12">
					<div class="box box-danger">
						<div class="box-header with-border">
							<div class="btn-group pull-right">
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#addMusic">添加歌曲</button>
							</div>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<table id="musicfac">
								
							</table>
						</div>
						<!-- /.box-body -->
						<div class="box-footer clearfix"></div>
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

	<!-- Modal -->
	<div class="modal fade" id="addMusic" tabindex="-1" role="dialog"
		aria-labelledby="musicModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="musicModalLabel">添加歌曲</h4>
				</div>
				<div class="modal-body">
					<form action="add" method="post" enctype="multipart/form-data">
						<label for="isongName">歌曲名</label>
						<input type="text" class="form-control" id="isongName" name="title" placeholder="输入歌名"> 
						<label for="isingerName">歌手名</label>
						<input type="text" class="form-control" id="isingerName" name="singer" placeholder="输入歌手名"> 
						<label for="isspecial">专辑名</label>
						<input type="text" class="form-control" id="isspecial" name="special" placeholder="输入专辑名"> 
						<label for="ismsgtype">音乐类型</label> 
						<input type="text" class="form-control" id="ismsgtype" name="mscvalue" placeholder="输入类型名"> 
						<label for="isongid">歌曲</label> 
						<input type="file" id="imusicIrcInputFile" name="music" onchange="upload(this,'ilyricsResourceId')">
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							<input type="submit" class="btn btn-danger" value="上传" />
						</div>			
					</form>
				</div>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="updateMusic" tabindex="-1" role="dialog"
		aria-labelledby="updateMusicModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="updateMusicModalLabel">编辑歌曲</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<form action="" method="post" accept-charset="UTF-8" id="updates"> 
							<input type="hidden" id="songId" name="mscid">
							<label for="songName">歌曲名</label>
							<input type="text" class="form-control" id="songName" name="title" placeholder="输入歌曲名">
							<label for="singerName">歌手名</label>
							<input type="text" class="form-control" id="songSinger" name="singer" placeholder="输入歌手名">
							<label for="songSpecial">专辑名</label>
							<input type="text" class="form-control" id="songSpecial" name="special" placeholder="输入专辑名">
							<label for="singerType">歌曲类型</label>
							<input type="text" class="form-control" id="songMscvalue" name="mscvalue" placeholder="输入歌类型">
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
								<input type="button" class="btn btn-danger" value="修改" onclick="update()"/>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="addToMusicList" tabindex="-1" role="dialog"
		aria-labelledby="addMusicListModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="addMusicListModalLabel">添加到歌单</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="songListSelect">歌单名</label> <select
							class="form-control select2" style="width: 100%;"
							id="songListSelect">
						</select>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-danger"
						onclick="insertSongToSongList()">添加</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function queryMuisc(){
			$.ajax({
	  			url:"queryMusic",
	  			type:'post',
	  			success:function(data){
	  				var m = "<tr><td>歌名</td><td>歌手</td><td>专辑</td><td>类型</td><td>次数</td><td>操作</td></tr>";
	  				for (var i = 0; i < data.length; i++) {
	  					m += "<tr>"
						+"<td>"+ data[i].title +"</td>"
						+"<td>"+ data[i].singer +"</td>"
						+"<td>"+ data[i].special +"</td>"
						+"<td>"+ data[i].mscvalue +"</td>"
						+"<td>"+ data[i].click +"</td>"
						+"<td><button type='button' class='btn btn-default' data-toggle='modal' data-target='#updateMusic' onclick='showvalue("+data[i].mscid+")'>修改</button><input type='button' class='btn btn-default' data-toggle='modal' value='删除' onclick='deletes("+data[i].mscid+")'/></td>"
						+"</tr>";
					}
	  				$("#musicfac").html(m);
	  			}
	  		}); 
		}
		queryMuisc();
		function showvalue(obj){
			$.ajax({
	  			url:"queryByid",
	  			type:'post',
	  			data:{'id':obj},
	  			success:function(data){	
	  					$("#songId").val(data.mscid);
	  					$("#songName").val(data.title);
	  					$("#songSinger").val(data.singer);
	  					$("#songSpecial").val(data.special);
	  					$("#songMscvalue").val(data.mscvalue);
	  			}
	  		}); 
		}
		function update(){
			$.ajax({
	  			url:"update",
	  			type:'post',
	  			data:$("#updates").serialize(),
	  			success:function(data){	
	  				window.location.reload();
	  			}
	  		}); 
		}
		function deletes(obj){
			$.ajax({
				url:"delete",
	  			type:'post',
	  			data:{'id':obj},
	  			success:function(data){
	  				if (data==1) {
						alert("删除成功！");
					}else{
						alert("删除失败！");
					}
	  				window.location.reload();
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
	<script src="js/admin_login.js"></script>
	<script src="js/base.js"></script>
</body>
</html>
