<%@ page import="com.company.website.entity.customers" %>
<%@ page import="com.company.website.showClasses.showCustomer" %>
<%@ page import="com.company.website.showClasses.showGetInto" %>
<%@ page import="java.util.List" %>
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
        </div>

        <div style="background-color:white;">
                <table id="table_id_example" class="display">
                        <thead>
                           <tr>
                               <th>会员号</th>
                               <th>姓名</th> 
                               <th>性别</th> 
                               <th>出生日期</th>
                               <th>剩余天数</th>
                               <th>剩余私教课时数</th>
                           </tr> 
                       </thead> 
                       <tbody>
                       <% showCustomer resultCustomer = (showCustomer)request.getAttribute("resultCustomer"); %>
                           <tr> 
                               <td><% out.print(resultCustomer.getVIPNumber()); %></td>
							   <td><% out.print(resultCustomer.getRealName()); %></td>
                               <td><% out.print(resultCustomer.getSex()); %></td>
                               <td><% out.print(resultCustomer.getBirthday()); %></td>
							   <td><%out.print(resultCustomer.getLastDays());%></td>
                               <td><% out.print(resultCustomer.getLessonNumber()); %></td>
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
                               <th>消费私教课时</th>
                               <th>备注</th>
                           </tr> 
                       </thead> 
                       <tbody>
                           <% List<showGetInto> resultGetInto = (List<showGetInto>)request.getAttribute("resultGetInto"); %>
                           <% for(showGetInto getInto : resultGetInto){ %>
                           <tr>
                                <td><% out.print(getInto.getGetInTime()); %></td>
                                <td><% out.print(getInto.getLessonUse()); %></td>
                                <td><% out.print(getInto.getNotes()); %></td>
                           </tr>
                           <% } %>
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