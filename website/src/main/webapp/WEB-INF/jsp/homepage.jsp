<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8"  %>
<head>
<title>主页——Fitness Club</title>
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
			<li class="has-subnav"><a href="javascript:;"><i class="fa fa-cogs" aria-hidden="true"></i><span class="nav-text">客户信息管理</span><i class="icon-angle-right"></i><i class="icon-angle-down"></i></a>
				<ul>
					<li><a class="subnav-text" href="">客户信息查询</a></li>
					<li><a class="subnav-text" href="">客户信息修改</a></li>
					<li><a class="subnav-text" href="">客户信息删除</a></li>
				</ul>
			</li>
			<li class="has-subnav">
				<a href="javascript:;"><i class="fa fa-check-square-o nav_icon"></i><span class="nav-text">会员卡业务办理</span><i class="icon-angle-right"></i><i class="icon-angle-down"></i></a>
				<ul>
					<li><a class="subnav-text" href="">新客户开卡</a></li>
					<li><a class="subnav-text" href="">老客户续卡</a></li>
				</ul>
			</li>
			<li class="has-subnav">
				<a href="javascript:;"><i class="fa fa-file-text-o nav_icon"></i><span class="nav-text">职员信息管理</span><i class="icon-angle-right"></i><i class="icon-angle-down"></i></a>
				<ul>
					<li><a class="subnav-text" href="">新增职员</a></li>
					<li><a class="subnav-text" href="">职员信息查询</a></li>
					<li><a class="subnav-text" href="">职员信息删除</a></li>
					<li><a class="subnav-text" href="">职员信息修改</a></li>
				</ul>
			</li>
			<li><a href=""><i class="fa fa-bar-chart nav_icon"></i><span class="nav-text">客户入场登记</span></a></li>
			<li><a href=""><i class="icon-font nav-icon"></i><span class="nav-text">健身信息查询</span></a></li>
			<li><a href=""><i class="icon-table nav-icon"></i><span class="nav-text">学员信息查看</span></a></li>
			<li><a href=""><i class="fa fa-map-marker" aria-hidden="true"></i><span class="nav-text">授课信息查看</span></a></li>
			<li><a href=""><i class="fa fa-exclamation-triangle" aria-hidden="true"></i><span class="nav-text">打卡签退</span></a></li>
			<li class="has-subnav"><a href="javascript:;"><i class="fa fa-list-ul" aria-hidden="true"></i><span class="nav-text">操课安排管理</span><i class="icon-angle-right"></i><i class="icon-angle-down"></i></a>
				<ul>
					<li><a class="subnav-text" href="">操课信息发布</a></li>
					<li><a class="subnav-text" href="">操课信息修改</a></li>
					<li><a class="subnav-text" href="">操课信息删除</a></li>
					<li><a class="subnav-text" href="">操课信息查询</a></li>
				</ul>
			</li>
			<li class="has-subnav"><a href="javascript:;"><i class="fa fa-cogs" aria-hidden="true"></i><span class="nav-text">健身设备管理</span><i class="icon-angle-right"></i><i class="icon-angle-down"></i></a>
				<ul>
					<li><a class="subnav-text" href="">健身设备新增</a></li>
					<li><a class="subnav-text" href="">健身设备删除</a></li>
					<li><a class="subnav-text" href="">修改健身设备</a></li>
					<li><a class="subnav-text" href="">健身设备查询</a></li>
				</ul>
			</li>
		</ul>
		<ul class="logout"><li><a href="login.jsp"><i class="icon-off nav-icon"></i><span class="nav-text">注销</span></a></li></ul>
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

		<div class="social grid">
			<div class="grid-info">
				<div class="col-md-3 top-comment-grid">
					<div class="comments likes">
						<div class="comments-icon">
							<i class="fa fa-facebook"></i>
						</div>
						<div class="comments-info likes-info">
							<h3>95</h3>
							<a href="#">今日入场客人数</a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-3 top-comment-grid">
					<div class="comments">
						<div class="comments-icon">
							<i class="fa fa-comments"></i>
						</div>
						<div class="comments-info">
							<h3>12</h3>
							<a href="#">在场私教数</a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-3 top-comment-grid">
					<div class="comments tweets">
						<div class="comments-icon">
							<i class="fa fa-twitter"></i>
						</div>
						<div class="comments-info tweets-info">
							<h3>2</h3>
							<a href="#">故障器械数</a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-3 top-comment-grid">
					<div class="comments views">
						<div class="comments-icon">
							<i class="fa fa-eye"></i>
						</div>
						<div class="comments-info views-info">
							<h3>557</h3>
							<a href="#">总会员数</a>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
	</div>

		<div class="agile-grids" >
			<div class="col-md-4 charts-right" style="width:100%">
				<!-- area-chart -->
				<div class="area-grids">
					<div class="area-grids-heading">
						<h3>操课安排</h3>
					</div>
					<div id="graph4"></div>
					<div >
						<table id="table_id_example1" class="display">
										<thead>
											 <tr>
													 <th>日期</th>
													 <th>时间</th> 
													 <th>课程</th> 
													 <th>授课教练</th>
											 </tr> 
									 </thead> 
									 <tbody> 
											 <tr> 
													 <td>2018年11月28日</td> 
													 <td>14：00--16：00</td> 
													 <td>动感单车</td>
													 <td>戴一</td>
											 </tr> 
											 <tr> 
													 <td>2018年11月28日</td> 
													 <td>16：00--18：00</td> 
													 <td>拳击</td>
													 <td>戴二</td>
												</tr> 
												<tr> 
													<td>2018年11月28日</td> 
													 <td>18：00--20：00</td> 
													 <td>卷腹</td>
													 <td>戴三</td>
											 </tr> 
											 <tr> 
													<td>2018年11月29日</td> 
													 <td>14：00--16：00</td> 
													 <td>哑铃</td>
													 <td>戴四</td>
												</tr> 
												<tr> 
													<td>2018年11月29日</td> 
													 <td>16：00--18：00</td> 
													 <td>专项课</td>
													 <td>戴五</td>
											 </tr>  
									 </tbody> 
							 </table>
							 <script>
											 $(document).ready(function () {
													 $('#table_id_example1').DataTable();
											 });
									 </script>
			 </div>
		</div>
				

			<!-- //updating-data -->
		</div>

				</div>
				<!-- //area-chart -->
			</div>
			
			<div class="clearfix"> </div>
		</div>
		
		



		</div>
		<!-- footer -->
		<div class="footer">
			<p>Copyright &copy; 2018.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
		</div>
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
	
</body>
</html>
