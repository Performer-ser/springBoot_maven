<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>首页</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="plugins/font-awesome/4.7.0/css/font-awesome.css">
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<!-- <link rel="stylesheet" href="css/style.css"> -->
<style type="text/css">
	#audio{background-color:#d73925;border-radius:25px;width:800px;}
	#hotMusicList,td #newMusicList,td #musicfac,td #serchlist,td{font-size:14px;font-family: '幼圆'; color:#d73925;margin-left:6px;}
</style>
</head>

<body class="hold-transition skin-red layout-top-nav" onload="queryMuisc();">
	<header class="main-header"> <nav class="navbar navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<a href="jsp/main.jsp" class="navbar-brand"><b>Music</b>Player</a>
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar-collapse">
				<i class="fa fa-bars"></i>
			</button>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse pull-left" id="navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="jsp/main.jsp">首页</a></li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" id="navbar-search-input" onkeydown="queryFuzzy();" placeholder="搜索歌曲/歌手">
				</div>
			</form>
		</div>
		<!-- /.navbar-collapse -->
		<!-- Navbar Right Menu -->
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<li class="user user-menu">
					<a href="#" class="" data-toggle="modal" data-target="#signin"> 
				<span id="li_span_signin">登录</span>
				</a></li>
				<li class="user user-menu" id="li_signup">
				<a href="#" class="" data-toggle="modal" data-target="#signup"> 
				<span>注册</span>
				</a></li>
				<li class="user user-menu" id="li_signout" style="display: none">
					<a href="#"> <span>退出</span>
				</a>
				</li>
				<li class="user user-menu" >
					<span class="navbar-brand" style="font-size:13px;"><b>${list.uname}</b>&nbsp;&nbsp;欢迎您</span>
				</li>
			</ul>
		</div>
		<!-- /.navbar-custom-menu -->
	</div>
	<!-- /.container-fluid --> 
	</nav> </header>
	<div class="content-wrapper">
		<div class="container">
			<!-- Main content -->
			<section class="content">
			<div class="row">
				<div class="col-md-9">
					<div class="box-body no-padding">
						<div id="carousel-example-generic" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0"
									class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"
									class=""></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"
									class=""></li>
								<li data-target="#carousel-example-generic" data-slide-to="3"
									class=""></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<img src="dist/img/lunbo-2.jpg" alt="First slide">
								</div>
								<div class="item">
									<img src="dist/img/lunbo-1.jpg" alt="Second slide">
								</div>
								<div class="item">
									<img src="dist/img/lunbo-3.jpg" alt="Third slide">
								</div>
								<div class="item">
									<img src="dist/img/lunbo-4.jpg" alt="Third slide">
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-example-generic"
								data-slide="prev"> <span class="fa fa-angle-left"></span>
							</a> <a class="right carousel-control"
								href="#carousel-example-generic" data-slide="next"> <span
								class="fa fa-angle-right"></span>
							</a>
						</div>
					</div>
					<!-- /.box-body -->

					<div class="box">
						<div class="box-header with-border">
							<h3 class="box-title">
								<i class="fa fa-fw fa-signal"></i>排行榜
							</h3>
						</div>
						<div class="box-body">
							<div class="row">
								<div class="col-xs-4">
									<div class="box box-danger">
										<div class="box-header with-border">
											<h3 class="box-title">热歌榜</h3>
										</div>
										<div class="box-body">
											<table id="hotMusicList" class="table table-condensed">
											
											 
											</table>
										</div>
									</div>
								</div>
								<div class="col-xs-4">
									<div class="box box-success">
										<div class="box-header with-border">
											<h3 class="box-title">新歌榜</h3>
										</div>
										<div class="box-body">
											<table id="newMusicList" class="table table-condensed">
												<tr></tr>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /.box-body -->
				<div class="col-md-3">
					<div class="box box-danger">
						<div class="box-header with-border">
							<h3 class="box-title">
								<i class="fa fa-fw fa-tags"></i>音乐单
							</h3>
						</div>
						<div class="box-body">
							<table  id="musicfac">
								
							</table>
						</div>
						<!-- /.box-body -->
					</div>

					<div class="box-body">
						<table id="builletin" class="table table-condensed">
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<div class="col-md-3">
					<div class="box box-danger">
						<div class="box-header with-border">
							<h3 class="box-title">
								<i class="fa fa-fw fa-list"></i>搜索列表
							</h3>
						</div>
						<div class="box-body">
							<table id="serchlist">
								<tr>
									<td>歌名</td><td>歌手</td>
								</tr>
								<c:forEach items="${musiclist }" var="m">
									<tr>
										<td>${m.title }</td>
										<td>${m.singer }</td>		
										<td><input type="button" style="border:none;margin:3px;color:white;background-color:#d73925;border-radius:25px;" value="Play" onclick="play(${m.mscid })"/></td>
									</tr>
								</c:forEach>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<div class="box-body">
						<table id="builletin" class="table table-condensed">
						</table>
					</div>
					<!-- /.box-body -->
				</div>
			</div>
			<!-- /.box -->
			<div class="box box-danger">
				<div class="box-header with-border">
					<h3 class="box-title">
						<i class="fa fa-fw fa-volume-up"></i>音乐试听
					</h3>
				</div>
				<div class="box-body">
					<table id="builletin" class="table table-condensed">
						<audio id="audio" controls="controls" autoplay="autoplay"/>
					</table>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
	</div>
	</section>
	<!-- /.container -->
	<!-- /.content-wrapper -->
	<footer class="main-footer">
	<div class="container">
		<div class="pull-right hidden-xs">
			<b>Version</b> 1.0.0
		</div>
		<strong>Copyright &copy; 2019.</strong> All rights reserved.
	</div>
	<!-- /.container --> </footer>
	<!-- ./wrapper -->

	<!-- Modal -->
	<div class="modal fade" id="signin" tabindex="-1" role="dialog" aria-labelledby="signinLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="signinLabel">登录</h4>
				</div>
				<div class="modal-body">
					<form action="" method="post" id="login">
						<label for="username">用户名</label> 
						<input type="text" class="form-control" id="signin_username" name="uname" placeholder="输入用户名">
						<label for="password">密码</label> 
						<input type="password" class="form-control" id="signin_password" name="pwd" placeholder="输入密码">
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							<input type="button" class="btn btn-danger" value="登陆" onclick="login()"/>
						</div>
					</form>
				</div>
				
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="signupLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="signupLabel">注册</h4>
				</div>
				<div class="modal-body">
					<form action="" method="post" id="regist">
						<label for="username">用户名</label> 
						<input type="text" class="form-control" id="signup_username" name="uname" placeholder="输入用户名">
						<label for="password">密码</label> 
						<input type="password" class="form-control" id="signup_password" name="pwd" placeholder="输入密码">
						<label for="password">确认密码</label> 
						<input type="password" class="form-control" id="signup_password2" placeholder="再次输入密码">
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							<input type="button" class="btn btn-danger" value="注册" onclick="regist()"/>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		function regist(){
			$.ajax({
				url:"adduser",
	  			type:'post',
	  			data:$("#regist").serialize(),
	  			success:function(data){	
	  				window.location.reload();
	  			}
			});
		}
		function login(){
			$.ajax({	
	  			url:"login",
	  			type:'post',
	  			data:$("#login").serialize(),
	  			success:function(data){	
	  				window.location.reload();
	  			}
	  		}); 
		}
		function queryMuisc(){
			$.ajax({
	  			url:"queryMusic",
	  			type:'post',
	  			success:function(data){
	  				var m = "<tr><td>歌名</td><td>歌手</td><td>次数</td></tr>";
	  				var s = "<tr><td>歌名</td><td>歌手</td></tr>";
	  				for (var i = 0; i < data.length; i++) {
	  					m += "<tr>"
							+"<td>"+ data[i].title +"</td>"
							+"<td>"+ data[i].singer +"</td>"
							+"<td id='"+data[i].mscid+"'>"+ data[i].click +"</td>"
							+"<td><input type='button' style='border:none;margin:3px;color:white;background-color:#d73925;border-radius:25px;' value='Play' onclick='play("+data[i].mscid+")'>"+"</td>"
						+"</tr>";
	  					s += "<tr>"
							+"<td>"+ data[i].title +"</td>"
							+"<td>"+ data[i].singer +"</td>"
						+"</tr>";
					}
	  				$("#musicfac").html(m);
	  				$("#newMusicList").html(s);
	  				$("#hotMusicList").html(s);
	  				
	  			}
	  		}); 
		}
	function queryFuzzy(){
		var name = $("#navbar-search-input").val();
		$.ajax({
  			url:"queryFuzzy",
  			type:'post',
  			data:{'name':name},
  			success:function(data){
  		
  			}
  		}); 
	}
	function play(obj){
  		$.ajax({
  			url:"play",
  			type:'post',
  			datatype:'json',
  			data:{id:obj},
  			success:function(data){
  				$(audio).attr("src",data);
  				var temp = $("#"+obj).html();
  				$("#"+obj).html(parseInt(temp) + 1);
  			}
  		});
  	}
	</script>
	<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script src="plugins/fastclick/fastclick.js"></script>
	<script src="dist/js/app.min.js"></script>
	<script src="js/index.js"></script>
	<script src="js/base.js"></script>
	<script src="js/user.js"></script>
	<script src="js/searchbar.js"></script>
	<script src="js/jquery.min.js"></script>
</body>
</html>
