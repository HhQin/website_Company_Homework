<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8"  %>
<head>
<title>新增健身设备——Fitness Club</title>
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
			<a href=""><i class="fa fa-home nav_icon"></i><span class="nav-text">Fitness Club主页</span></a>
		</li>
		<li><a href="/CustomerManagement"><i class="fa fa-cogs"></i><span class="nav-text">客户信息管理</span><i class="icon-angle-right"></i><i class="icon-angle-down"></i></a></li>
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
				<li><a class="subnav-text" href="/itemManagement">健身设备删除</a></li>
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
                        <h4>新增健身设备  :</h4>
                    </div>
                    <div class="forms">
                            <h3 class="title1"></h3>
                            <div class="form-three widget-shadow">
                                <form class="form-horizontal" action="/itemManagement-itemAddCheck" method="post">
                                    <div class="form-group">
                                            <label for="focusedinput" class="col-sm-2 control-label" >设备名</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" id="name" name="name">
                                            </div>
                                        </div>
                                    <div class="form-group">
                                        <label for="focusedinput" class="col-sm-2 control-label">设备状态</label>
										<div class="col-sm-8"><select name="selector1" id="selector1" class="form-control1">
											<option>正常</option>
											<option>故障</option>
											<option>其他</option>
										</select></div>
                                    </div>

                                    
                                    <div style="text-align: center;">
                                        <button type="submit" class="btn btn-default w3ls-button" onclick="checkform()">点击新增设备</button>
                                    </div>
                                </form>
								<script type="text/javascript">
                                    function checkform(){
                                        if(document.getElementById('name').value.length==0){
                                            alert('输入不能为空！');
                                            document.getElementById('name').focus();
                                            return false;
                                        }
                                    }
								</script>
                            </div>
                    </div>
                </div>
			
			<div class="clearfix"> </div>
		</div>
		
		



		</div>
		<!-- footer -->
		<div class="footer">
			<p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
		</div>
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
	
</body>
</html>
