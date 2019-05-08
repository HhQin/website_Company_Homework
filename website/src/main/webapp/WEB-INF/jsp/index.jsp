<%@ page import="java.util.List" %>
<%@ page import="com.company.website.showClasses.showLessons" %>
<%@ page import="com.company.website.showClasses.showIndexGetInto" %>
<!DOCTYPE HTML>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8"  %>
<html>
<head>
<title>Fitness Club</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fitness Point Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具" />
<meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图" />

<!-- DataTables CSS --> 
<link rel="stylesheet" type="text/css" href="databases/media/css/jquery.dataTables.css">
<!-- jQuery --> 
<script type="text/javascript" charset="utf8" src="databases/media/js/jquery.js"></script>
<!-- DataTables --> 
<script type="text/javascript" charset="utf8" src="databases/media/js/jquery.dataTables.js"></script>



<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="web/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!--Custom-Theme-files-->
<link href="web/css/style.css" rel='stylesheet' type='text/css' />	
<!--/script-->

<style type="text/css">
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<script type="text/javascript" src="web/js/move-top.js"></script>
<script type="text/javascript" src="web/js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
<script src="web/js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="web/css/chocolat.css" type="text/css" media="screen">
<!--light-box-files -->
<script type="text/javascript" >
$(function() {
	$('.gallery a').Chocolat();
});
</script>
<!-- //gallery -->

</head>
<body>
	
<!--start-home-->
	<div id="home" class="header">
	    <div class="container">
			<!--start-header-->
		    <div class="header-top">
			<div class="inner-top">
		       <div class="col-md-3 top_right">
					<ul class="f-icons">
						<li><a href="/login" title="hell0" class="p"> </a></li>
					</ul>

			    </div>
				<div class="col-md-6 logo">
					<a href="index.html"><h1>Fitness <span>Club</span></h1></a>
				</div>
				    <div class="col-md-3 search">
							<form action="/customerQueryResult" method="post">
								<input type="submit" value="">
								<input type="text" placeholder="输入会员号，查询运动信息" name="VIPNumber">
							</form>
						</div>
			   <div class="clearfix"></div>
			  </div>
				<div class="main-nav">
				<span class="menu"></span>
				<div class="top-menu">
				<ul class="cl-effect-16">
					<li><a class="active scroll" href="#home" data-hover="主页">主页</a></li>
			        <li><a class="scroll" href="#feature" data-hover="排行榜">排行榜</a></li>
					<li><a class="scroll" href="#gallery" data-hover="俱乐部实景">俱乐部实景</a></li>
					<li><a class="scroll" href="#lesson" data-hover="操课安排">操课安排</a></li>
					<li><a class="scroll" href="#test" data-hover="私教介绍">私教介绍</a></li>
					<li><a class="scroll" href="#contact" data-hover="地理位置&联系方式">地理位置&联系方式</a></li>

					</ul>
				</div>
             </div>
			<!-- script-for-menu -->
				<script>
				$( "span.menu" ).click(function() {
				  $( ".top-menu" ).slideToggle( "slow", function() {
				    // Animation complete.
				  });
				});
			</script>
	<!--End-top-nav-script-->
			</div>
		<!--//end-header-->
		</div>
	</div>
	<!--banner-top-->
	   <div class="banner-top">
	      <div class="banner-top-text">
		       <h2>Fitness</h2>
			   <p>我们是一家企业自营健身俱乐部. 我们致力于提高公司家人与社会大众的健身福祉.</p>
		  </div>
	   </div>
   <!--start-banner-->
     <div class="banner-section">
   		   
			 <div class="banner-bottom">
				 <div class="col-md-6 text-bottom">
			          <h4>公司家人</h4>
					  <p>“品质、专业、健康、高效”，是公司给所有家人的承诺，加入我司，即可全天候免费使用所有健身器械，同时每月享有的免费私教课时，有效为您合理定制健身计划，摆脱亚健康，高效工作，快乐生活。 </p>
				 </div>
				 <div class="col-md-6 text-bottom">
			           <h4>社会大众</h4>
					   <p>本公司本着高度的社会责任感，为全市人民创造健身福祉。只需一定的价格即可加入本俱乐部，享受最高品质的健身体验。每月均会开放健身次数排行榜，高排名的运动者将有机会赢取免费私教课时。 </p>
				 </div>
				 <div class="clearfix"></div>
				 
			</div>
	</div>

	  <!--//end-banner-->
	  	  <!--/features-->
		    <div class="features" id="feature">
			  <div class="container">
	           <div class="col-md-5 features-left">
			     <div class="trainer-gent-inner">
					 <div class="features-text">
					 <h3>月排行榜</h3>
					 <h4>健身赢私教课时</h4>
					 <p>月入场次数排行榜，每月第一可赢取10小时私教课时，第二8小时，第三6小时，第四4小时，第五2小时。</p>
					 </div>
				 </div>
			   </div>
			   
			   <div style="background-color:white;" class="col-md-7 features-right">
					<table id="table_id_example" class="display">
							<thead>
							   <tr>
								   <th>排名</th>
								   <th>会员号</th> 
								   <th>姓名</th> 
								   <th>月入场次数</th>
							   </tr> 
						   </thead> 
						   <tbody> 

							   <% List<showIndexGetInto> resultGetIntoRank = (List<showIndexGetInto>)request.getAttribute("resultGetIntoRank"); %>
							   <%for(int i=0;i<resultGetIntoRank.size();i++) {%>
							   <tr>
								   <td><% out.print(i+1); %></td>
								   <td><% out.print(resultGetIntoRank.get(i).getVIPNumber());%></td>
								   <td><% out.print(resultGetIntoRank.get(i).getTrueName());%></td>
								   <td><% out.print(resultGetIntoRank.get(i).getGetIntoNumber());%></td>
							   </tr>
							   <% } %>
						   </tbody> 
					   </table>
					   <script>
							   $(document).ready(function () {
								   $('#table_id_example').DataTable({
									paging: false,
									"searching": false,
									"info": false
								   });
							   });
						   </script>
			   </div>
			   
			    <div class="clearfix"></div>
			</div>
		</div>
	
	
		
		<!-- pop-up-box -->   
		<link href="web/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
		<script src="web/js/jquery.magnific-popup.js" type="text/javascript"></script>
		 <script>
				$(document).ready(function() {
				$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
				});
				});
		</script>		

		<!--//pop-up-box -->
		<div id="small-dialog" class="mfp-hide">
	     <iframe src="https://player.vimeo.com/video/81396605" ></iframe>
		</div>
		<!--//video-->
		
	  <!--/trainer-->
		    <div class="trainer" id="trainer" >
	           
			   
			</div>
		<!--//trainer-->
		<!-- gallery -->
			<div id="gallery" class="gallery">
				<div class="container">
				<h3 class="tittle">俱乐部实景</h3>
				<div class="gallery-grids">
					<div class="col-md-6 baner-top">
						<figure class="effect-bubba">
							<a href="web/images/g1.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
								<img src="web/images/g1.jpg" alt="" class="img-responsive" />
								<figcaption>
										<h4 class="sec">Fitness Club</h4>
										<p>欢迎您的加入</p>		
								</figcaption>	
							</a>
						</figure>	
					</div>
					<div class="col-md-6 baner-top">
						<figure class="effect-bubba">
							<a href="web/images/g2.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
								<img src="web/images/g2.jpg" alt="" class="img-responsive" />
								<figcaption>
										<h4 class="sec">Fitness Club</h4>
										<p>欢迎您的加入</p>		
								</figcaption>	
							</a>
						</figure>	
					</div>
					<div class="clearfix"> </div>
					<div class="baner-row">
						<div class="col-md-4 baner-bottom">
							<figure class="effect-bubba">
								<a href="web/images/g3.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
									<img src="web/images/g3.jpg" alt="" class="img-responsive" />
									<figcaption>
										<h4 class="sec">Fitness Club</h4>
										<p>欢迎您的加入</p>	
									</figcaption>
								</a>
							</figure>	
						</div>
						<div class="col-md-4 baner-bottom">
							<figure class="effect-bubba">
								<a href="web/images/g4.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
									<img src="web/images/g4.jpg" alt=""/ class="img-responsive" >
									<figcaption>
											<h4 class="sec">Fitness Club</h4>
											<p>欢迎您的加入</p>		
									</figcaption>	
								</a>
							</figure>	
						</div>
						<div class="col-md-4 baner-bottom">
							<figure class="effect-bubba">
								<a href="web/images/g5.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
									<img src="web/images/g5.jpg" alt="/ class="img-responsive" >
									<figcaption>
											<h4 class="sec">Fitness Club</h4>
											<p>欢迎您的加入</p>		
									</figcaption>	
								</a>
							</figure>	
						</div>
						<div class="clearfix"> </div>
					</div>		
					<div class="col-md-6 baner-top">
						<figure class="effect-bubba">
							<a href="web/images/g6.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
								<img src="web/images/g6.jpg" alt="" class="img-responsive" />
								<figcaption>
										<h4 class="sec">Fitness Club</h4>
										<p>欢迎您的加入</p>		
								</figcaption>	
							</a>
						</figure>	
					</div>
					<div class="col-md-6 baner-top">
						<figure class="effect-bubba">
							<a href="web/images/g3.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
								<img src="web/images/g3.jpg" alt="" class="img-responsive" />
								<figcaption>
										<h4 class="sec">Fitness Club</h4>
										<p>欢迎您的加入</p>		
								</figcaption>	
							</a>
						</figure>	
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
	</div>
<!-- //gallery -->

<div class="features" id="lesson">
	<div class="container">
		<div style="background-color:white;" class="col-md-7 features-left">
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
					 <% List<showLessons> resultlessons = (List<showLessons>)request.getAttribute("resultlessons"); %>
					 <%for(int i=0;i<resultlessons.size();i++) {%>
					 <tr>
						 <td><% out.print(resultlessons.get(i).getDay()); %></td>
						 <td><% out.print(resultlessons.get(i).getTime()); %></td>
						 <td><% out.print(resultlessons.get(i).getLessonName()); %></td>
						 <td><% out.print(resultlessons.get(i).getTeacherName()); %></td>
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
		 <div class="col-md-5 features-right">
				<div class="trainer-gent-inner">
					<div class="features-text">
					<h3>操课安排</h3>
					<h4>近期操课安排</h4>
					<p>可用私教课时兑换操课，请关注近期操课发布并及时到场，祝您健身愉快！</p>
					</div>
				</div>
			  </div>
		  <div class="clearfix"></div>
	  </div>
  </div>

<!-- testimonials -->
	<div class="customer" id="test">
		<div class="container">
			<h3 class="tittle">私教介绍</h3>
				<div class="wmuSlider example1">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;"> 
						<div class="banner-wrap">
							<div class="testimonials-grid">
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="web/images/t1.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p>私人健身教练进行的是一对一的工作，工作具有互动性、针对性等特点。私人教练适合不同健康水平、年龄段和经济收入的人群，通过提供个性化的健身计划和关注，服务于健身会员（顾客）。</p>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="web/images/t2.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p>私人健身教练进行的是一对一的工作，工作具有互动性、针对性等特点。私人教练适合不同健康水平、年龄段和经济收入的人群，通过提供个性化的健身计划和关注，服务于健身会员（顾客）。</p>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
						<div class="banner-wrap">
							<div class="testimonials-grid">
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="web/images/t3.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p>私人健身教练进行的是一对一的工作，工作具有互动性、针对性等特点。私人教练适合不同健康水平、年龄段和经济收入的人群，通过提供个性化的健身计划和关注，服务于健身会员（顾客）。</p>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="web/images/t1.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p>私人健身教练进行的是一对一的工作，工作具有互动性、针对性等特点。私人教练适合不同健康水平、年龄段和经济收入的人群，通过提供个性化的健身计划和关注，服务于健身会员（顾客）。</p>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
						<div class="banner-wrap">
							<div class="testimonials-grid">
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="web/images/t2.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p>私人健身教练进行的是一对一的工作，工作具有互动性、针对性等特点。私人教练适合不同健康水平、年龄段和经济收入的人群，通过提供个性化的健身计划和关注，服务于健身会员（顾客）。</p>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="web/images/t3.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p>私人健身教练进行的是一对一的工作，工作具有互动性、针对性等特点。私人教练适合不同健康水平、年龄段和经济收入的人群，通过提供个性化的健身计划和关注，服务于健身会员（顾客）。</p>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
						</article>
					</div>
				</div>
				<script src="web/js/jquery.wmuSlider.js"></script> 
					<script>
						$('.example1').wmuSlider();         
					</script> 
		</div>
	</div>
<!-- //testimonials -->
<!--start-partner-->
	        
<!--contact-->
   <div class="contact"  id="contact">
	 <div class="container" >
		       <h3 class="tittle">地理位置&联系方式</h3>
			<div class="contact-form">
					<div class="col-md-6 contact-grid">
  					<div style="width:500px;height:300px;border:#ccc solid 1px;" id="dituContent"></div>
				</div>
				<div class="col-md-6 contact-in">
					<h5> 联系方式</h5>
					<div class="more-address"> 
						<div class="address-more">
						  <p class="location"><i class="glyphicon glyphicon-map-marker"></i>江苏省无锡市蠡湖大道1800号</p>
					      <p class="phone"><i class="glyphicon glyphicon-phone"></i> 18861812785</p>
					      <p class="mail"><i class="glyphicon glyphicon-envelope"></i><a href="jeakerqin@163.com">jeakerqin@163.com</a></p>

						</div>
				      </div>
				</div>
				<div class="clearfix"> </div>
			   </div>
	    </div>
    </div>

	<!--start-footer-->
	<div class="copy">
		<p>&copy; 2018 Fitness Club. All Rights Reserved | Design by Christopher </p>
	</div>
			<script type="text/javascript">
								jQuery(document).ready(function($) {
									$(".scroll").click(function(event){		
										event.preventDefault();
										$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
									});
								});
								</script>
						<script type="text/javascript">
									$(document).ready(function() {
										$().UItoTop({ easingType: 'easeOutQuart' });
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(120.279536,31.487776);//定义一个中心点坐标
        map.centerAndZoom(point,16);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    
    initMap();//创建和初始化地图
</script>
</html>