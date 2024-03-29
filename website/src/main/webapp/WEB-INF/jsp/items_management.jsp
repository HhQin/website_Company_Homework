<%@ page import="com.company.website.entity.items" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8"  %>
<head>
<title>器材信息管理——Fitness Club</title>
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

		<div class="agile-grids" >
			<div class="col-md-4 charts-right" style="width:100%">
				<!-- area-chart -->
				<div class="area-grids">
					<div class="area-grids-heading">
                        <h3>器材信息管理<i><small><a id="download">(点击导出)</a></small></i></h3>
                    </div>

					<div id="graph4"></div>
					<div >
						<table id="table_id_example1" class="display">
										<thead>
											 <tr>
													 <th>设备编号</th>
													 <th>设备名</th>
													 <th>设备状态</th>
												     <th>修 改</th>
												     <th>删 除</th>
											 </tr> 
									 </thead> 
									 <tbody>
									 <% List<items> resultitems = (List<items>)request.getAttribute("resultitems"); %>
									 <% for(int i=0;i<resultitems.size();i++) {%>
									 <tr>
										 <td><center><% out.print(resultitems.get(i).getItemNumber()); %></center></td>
										 <td><center><% out.print(resultitems.get(i).getItemName()); %></center></td>
										 <td><center><% out.print(resultitems.get(i).getItemStatus()); %></center></td>
										 <td><center>
											 <button type="button" onclick="window.location.href='/itemManagement-itemModify-<% out.print(resultitems.get(i).getItemNumber()); %>'" class="btn bg-info light text-white fw600 text-center btn-sm btn-primary btn-block">点击修改</button>
										 </center></td>
										 <td><center>
											 <button type="button" onclick=" var truthBeTold = window.confirm('请确认是否删除');
													 if (truthBeTold) {
													 window.location.href='/itemManagement-itemDeleteCheck-<% out.print(resultitems.get(i).getItemNumber()); %>';
													 } else
													 return false;"
													 class="btn bg-danger dark text-white fw600 text-center btn-sm btn-primary btn-block">点击删除</button>
										 </center></td>
									 </tr>
									 <% } %>
									 </tbody> 
							 </table>
							 <script>
											 $(document).ready(function () {
													 $('#table_id_example1').DataTable();
											 });
									 </script>
			 </div>
        </div>

				</div>
				<!-- //area-chart -->
			</div>
			
			<div class="clearfix"> </div>
		</div>

		</div>
		<!-- footer -->

		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
	<script>
        // 使用outerHTML属性获取整个table元素的HTML代码（包括<table>标签），然后包装成一个完整的HTML文档，设置charset为urf-8以防止中文乱码
        var html = "<html><head><meta charset='utf-8' /></head><body>" + document.getElementsByTagName("table")[0].outerHTML + "</body></html>";
        // 实例化一个Blob对象，其构造函数的第一个参数是包含文件内容的数组，第二个参数是包含文件类型属性的对象
        var blob = new Blob([html], { type: "application/vnd.ms-excel" });
        var a = document.getElementById("download");
        // 利用URL.createObjectURL()方法为a元素生成blob URL
        a.href = URL.createObjectURL(blob);
        // 设置文件名
        a.download = "器材信息表.xls";
    </script>
</body>
</html>
