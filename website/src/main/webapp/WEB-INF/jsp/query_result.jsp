<!DOCTYPE HTML>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8"  %>
<html>
<head>
<title>查询结果--Fitness Club</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fitness Point Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />


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
						<li><a href="#" class="facebook"> </a></li>
						<li><a href="#" title="hell0" class="p"> </a></li>
						<li><a href="#" class="twitter"> </a></li>
						<li><a href="#" class="isto"> </a></li>
					</ul>

			    </div>
				<div class="col-md-6 logo">
					<a href="index.html"><h1>Fitness <span>Club</span></h1></a>
				</div>
				    <div class="col-md-3 search">
							<form>
								<input type="submit" value="">
								<input type="text" placeholder="输入会员号，查询运动信息">
							</form>
						</div>
			   <div class="clearfix"></div>
			</div>
        </div>

        <div style="background-color:white;">
                <table id="table_id_example" class="display">
                        <thead>
                           <tr>
                               <th>会员号</th>
                               <th>姓名</th> 
                               <th>性别</th> 
                               <th>年龄</th> 
                               <th>剩余天数</th>
                               <th>剩余私教课时数</th>
                           </tr> 
                       </thead> 
                       <tbody> 
                           <tr> 
                               <td>NO.10001</td> 
							   <td>张三</td> 
                               <td>男</td>
                               <td>21</td> 
							   <td>188</td> 
                               <td>22</td>
                           </tr> 
                       </tbody> 
                   </table>
                   <script>
                           $(document).ready(function () {
                               $('#table_id_example').DataTable({
                                paging: false,
                                "searching": false,
                                "info": false,
                        
                               });
                           });
                       </script>
           </div>
           <br><br>
        <div style="background-color:white;">
                <table id="table_id_example1" class="display">
                        <thead>
                           <tr>
                               <th>日期</th>
                               <th>入场时间</th> 
                               <th>消费私教课时</th> 
                           </tr> 
                       </thead> 
                       <tbody> 
                           <tr> 
                               <td>2018年11月28日</td> 
							   <td>14：00</td> 
                               <td>15</td>
                           </tr> 
                           <tr> 
                                <td>2018年11月27日</td> 
							    <td>15：00</td> 
                                <td>13</td>
                            </tr> 
                            <tr> 
                               <td>2018年11月26日</td> 
							   <td>16：00</td> 
                               <td>12</td>
                           </tr> 
                           <tr> 
                                <td>2018年11月25日</td> 
							    <td>17：00</td> 
                                <td>11</td>
                            </tr> 
                            <tr> 
                               <td>2018年11月24日</td> 
							   <td>18：00</td> 
                               <td>11</td>
                           </tr>  
                       </tbody> 
                   </table>
                   <script>
                           $(document).ready(function () {
                               $('#table_id_example1').DataTable({
                                paging: true,
                                "searching": true,
                                "info": true,    
                                
                               });
                           });
                       </script>
           </div>
           
            <div class="clearfix"></div>
        </div>
    </div>
    </div>
</div>
</body>
</html>