<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8"  %>
<head>
<title>新增职员——Fitness Club</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="main/css/bootstrap.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="main/css/style.css" rel='stylesheet' type='text/css' />
<!-- font-awesome icons -->
<link rel="stylesheet" href="main/css/font.css" type="text/css"/>
<link href="main/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->

<!-- DataTables CSS --> 
<link rel="stylesheet" type="text/css" href="databases/media/css/jquery.dataTables.css"> 
<!-- jQuery --> 
<script src="databases/media/js/jquery.js" type="text/javascript"> </script> 
<!-- DataTables --> 
<script type="text/javascript" charset="utf8" src="databases/media/js/jquery.dataTables.min.js"></script>

<script src="main/js/modernizr.js"></script>
<script src="main/js/jquery.cookie.js"></script>
<script src="main/js/screenfull.js"></script>
<script>
	$(function () {
		$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

		if (!screenfull.enabled) {
			return false;
		}
		$('#toggle').click(function () {
			screenfull.toggle($('#container')[0]);
		});	
	});
</script>
</head>
<body class="dashboard-page">

<nav class="main-menu">
	<ul>
		<li>
			<a href="/homepage"><i class="fa fa-home nav_icon"></i><span class="nav-text">Fitness Club主页</span></a>
		</li>
		<li><a href="/CustomerManagement"><i class="fa fa-cogs"></i><span class="nav-text">客户信息管理</span></a></li>
		<li class="has-subnav">
			<a href="javascript:;"><i class="fa fa-check-square-o nav_icon"></i><span class="nav-text">会员卡业务办理</span><i class="icon-angle-right"></i><i class="icon-angle-down"></i></a>
			<ul>
				<li><a class="subnav-text" href="/VIPManagement_VIPAdd">新客户开卡</a></li>
				<li><a class="subnav-text" href="/VIPManagement_Old_VIP">老客户续卡</a></li>
			</ul>
		</li>
		<li class="has-subnav">
			<a href="javascript:;"><i class="fa fa-file-text-o nav_icon"></i><span class="nav-text">职员信息管理</span><i class="icon-angle-right"></i><i class="icon-angle-down"></i></a>
			<ul>
				<li><a class="subnav-text" href="/employeeManagement-employeeAdd">新增职员</a></li>
				<li><a class="subnav-text" href="/employeeManagement">职员信息管理</a></li>
			</ul>
		</li>
		<li><a href="/get_into_before"><i class="fa fa-bar-chart nav_icon"></i><span class="nav-text">客户入场登记</span></a></li>
		<li><a href="/getIntoQuery"><i class="icon-font nav-icon"></i><span class="nav-text">健身信息查询</span></a></li>
		<li><a href="/studentsInfoQuery"><i class="icon-table nav-icon"></i><span class="nav-text">学员信息查看</span></a></li>
		<li><a href="/teachingLessonsQuery"><i class="fa fa-map-marker" aria-hidden="true"></i><span class="nav-text">授课信息查看</span></a></li>
		<li><a href="/teacher_sign_in"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i><span class="nav-text">打卡签退</span></a></li>
		<li class="has-subnav"><a href="javascript:;"><i class="fa fa-list-ul" aria-hidden="true"></i><span class="nav-text">操课安排管理</span><i class="icon-angle-right"></i><i class="icon-angle-down"></i></a>
			<ul>
				<li><a class="subnav-text" href="/lessonManagement-lessonAdd">操课信息发布</a></li>
				<li><a class="subnav-text" href="/lessonManagement">操课信息管理</a></li>
			</ul>
		</li>
		<li class="has-subnav"><a href="javascript:;"><i class="fa fa-cogs" aria-hidden="true"></i><span class="nav-text">健身设备管理</span><i class="icon-angle-right"></i><i class="icon-angle-down"></i></a>
			<ul>
				<li><a class="subnav-text" href="/itemManagement-itemAdd">健身设备新增</a></li>
				<li><a class="subnav-text" href="/itemManagement">健身设备管理</a></li>
			</ul>
		</li>
	</ul>
	<ul class="logout"><li><a href="/logout"><i class="icon-off nav-icon"></i><span class="nav-text">注销</span></a></li></ul>
</nav>
	<section class="wrapper scrollable">
		<nav class="user-menu">
			<a href="javascript:;" class="main-menu-access">
			<i class="icon-proton-logo"></i>
			<i class="icon-reorder"></i>
			</a>
		</nav>
		<section class="title-bar">
			<div class="logo" style="width:85%">
				<h1><a href="">Fitness Club企业自营健身俱乐部管理系统</a></h1>
			</div>
			<div class="header-right-left">
				<div class="full-screen">
					<section class="full-top">
						<button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>	
					</section>
				</div>
			</div>
			
			<div class="header-right">
				<div class="profile_details_left">					
					<div class="profile_details">		
						<ul>
							<li class="dropdown profile_details_drop">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<div class="profile_img">	
										<span class="prfil-img"><i class="fa fa-user" aria-hidden="true"></i></span> 
										<div class="clearfix"></div>	
									</div>	
								</a>								
							</li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</section>

		<div class="grids">
            
                
            <div class="panel panel-widget forms-panel">
                    <div class="progressbar-heading general-heading">
                        <h4>新增职员  :</h4>
                    </div>
                    <div class="forms">
                            <h3 class="title1"></h3>
                            <div class="form-three widget-shadow">
                                <form class="form-horizontal" action="/employeeManagement-employeeAdd-check" method="post">
                                    <div class="form-group">
                                            <label for="focusedinput" class="col-sm-2 control-label">姓名</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" placeholder="请输入20字符以内的中文名字" id="name" name="name">
                                            </div>
                                        </div>
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">登录名</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" placeholder="建议设置姓名+生日以防止登陆名冲突，如djn0102" id="logname" name="logname">
										</div>
									</div>
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">密码</label>
										<div class="col-sm-8">
											<input type="password" class="form-control" placeholder="建议设置字母与数字混合的8-20字符密码" id="psw1" name="psw1">
										</div>
									</div>
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">请再次输入密码</label>
										<div class="col-sm-8">
											<input type="password" class="form-control" placeholder="请重复确认以上密码" id="psw2" name="psw2">
										</div>
									</div>
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">性别</label>
										<div class="col-sm-8"><select name="sex" id="sex" class="form-control1">
											<option value="男">男</option>
											<option value="女">女</option>
										</select></div>
									</div>
                                    <div class="form-group">
                                            <label for="focusedinput" class="col-sm-2 control-label">生日</label>
                                            <div class="col-sm-8">
                                                <input type="date" class="form-control" name="birthday" id="birthday">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                                <label for="selector1" class="col-sm-2 control-label">工种</label>
                                                <div class="col-sm-8"><select name="job" id="job" class="form-control1">
                                                    <option value="前台">前台</option>
                                                    <option value="私教">私教</option>
                                                    <option value="俱乐部经理">俱乐部经理</option>
                                                    <option value="系统管理员">系统管理员</option>
                                                </select></div>
                                            </div>
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">电话号码</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" placeholder="请输入11字符以内数字" id="telephone" name="telephone">
										</div>
									</div>
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">电子邮箱</label>
										<div class="col-sm-8">
											<input type="text" class="form-control" placeholder="建议输入格式为***@**.**的邮箱地址" id="email" name="email">
										</div>
									</div>
                                    
                                    <div style="text-align: center;">
                                        <button type="submit" onclick="if(document.getElementById('psw1').value!=document.getElementById('psw2').value)alert('请检查密码输入是否一致');" class="btn btn-default w3ls-button">点击新增职员</button>
                                    </div>
                                </form>
                            </div>
                    </div>
                </div>
			
			<div class="clearfix"> </div>
		</div>
		
		



		</div>
		<!-- footer -->

		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
	
</body>
</html>
