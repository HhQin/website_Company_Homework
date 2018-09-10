<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en" dir="ltr">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Hello World!</title>

    <c:url value="/css" var="css" />
    <c:url value="/js" var="js" />
    <c:url value="/style.css" var="styleCss" />

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${css}/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="${css}/fontawesome-all.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="${css}/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="${styleCss}">

    <style type="text/css">
        html,body{margin:0;padding:0;}
        .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
        .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>

</head>

<body class="tickets-page">

    <header class="site-header">
        <div class="header-bar">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-10 col-lg-4">
                        <h1 class="site-branding flex">
                            <a href="#">SiaoMi</a>
                        </h1>
                    </div>

                    <div class="col-2 col-lg-8">
                        <nav class="site-navigation">
                            <div class="hamburger-menu d-lg-none">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div><!-- .hamburger-menu -->

                            <ul>
                                <li><a href="/index">HOME</a></li>
                                <li><a href="/elements">SiaoMi 2018</a></li>
                                <li><a href="/ticket">TICKETS</a></li>
                                <li><a href="/blog">BLOG</a></li>
                                <li><a href="/contact">CONTACT</a></li>
                                <li><a href="#"><i class="fas fa-search"></i></a></li>
                            </ul><!-- flex -->
                        </nav><!-- .site-navigation -->
                    </div><!-- .col-12 -->
                </div><!-- .row -->
            </div><!-- container-fluid -->
        </div><!-- header-bar -->
    </header><!-- .site-header -->

    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Buy tickets</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="index.html">HOME</a></li>
                            <li>Buy tickets</li>
                        </ul><!-- .breadcrumbs -->
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- page-header -->

    <div class="main-content">
        <div class="container">
            <div class="entry-header">
                <div class="entry-title">
                    <p>JUST THE BEST</p>
                    <h2>Early bird tickets</h2>
                </div><!-- entry-title -->
            </div><!-- entry-header -->

            <div class="row">
                <div class="col-12">
                    <div class="tabs">
                        <ul class="tabs-nav flex">
                            <li class="tab-nav flex justify-content-center align-items-center active" data-target="#tab_details">Details</li>
                        </ul><!-- tabs-nav -->

                        <div class="tabs-container">
                            <div id="tab_details" class="tab-content">
                                <div class="flex flex-wrap justify-content-between">
                                    <div class="single-event-details">
                                        <div class="single-event-details-row">
                                            <label>Start:</label>
                                            <p>October 08 @ 19:30 am</p>
                                        </div>

                                        <div class="single-event-details-row">
                                            <label>End:</label>
                                            <p>October 08 @ 23:00 am</p>
                                        </div>

                                        <div class="single-event-details-row">
                                            <label>Categories:</label>
                                            <p>Festivals</p>
                                        </div>

                                        <div class="single-event-details-row">
                                            <label>Tags:</label>
                                            <p><a href="#">festivals</a>, <a href="#">music</a>, <a href="#">concert</a></p>
                                        </div>

                                        <div class="single-event-details-row">
                                            <label>Place</label>
                                            <p>ZhongGuan Park, Beijing, China</p>
                                        </div>
                                    </div>

                                    <div class="single-event-map">
                                        <div style="width:697px;height:550px;border:#ccc solid 1px;" id="dituContent"></div>
                                    </div>
                                </div>
                            </div><!-- .tab-content -->
                        </div><!-- .tabs-container -->
                    </div><!-- .tabs -->
                </div><!-- .col-12 -->
            </div><!-- .row -->

            <div class="row">
                <div class="col-12">
                    <div class="event-tickets">
                        <div class="ticket-row flex flex-column flex-lg-row justify-content-lg-between align-items-lg-center">
                            <div class="ticket-type flex flex-column flex-lg-row align-items-lg-center">
                                <h3 class="entry-title">Silver Ticket</h3>

                                <span class="mt-2 mt-lg-0">Basic Entry</span>

                                <div class="ticket-price mt-3 mt-lg-0">
                                    $89
                                </div><!-- ticket-price -->
                            </div><!-- ticket-type -->

                            <div class="flex align-items-center">
                                <div class="number-of-tickets flex justify-content-between align-items-center">
                                    <span class="decrease-ticket">-</span>
                                    <input type="number" name="" value="1" class="ticket-count">
                                    <span class="increase-ticket">+</span>
                                </div><!-- number-of-tickets -->

                                <div class="clear-ticket-count">Clear</div>
                            </div><!-- flex -->

                            <input type="submit" name="" value="Buy" class="btn mt-2 mb-2 mt-lg-0 mb-lg-0"><!-- btn -->
                        </div><!-- ticket-row -->

                        <div class="ticket-row flex flex-column flex-lg-row justify-content-lg-between align-items-lg-center">
                            <div class="ticket-type flex flex-column flex-lg-row align-items-lg-center">
                                <h3 class="entry-title"> Gold Ticket</h3>
                                <span class="mt-2 mt-lg-0"> Vip Entry</span>
                                <div class="ticket-price mt-3 mt-lg-0">
                                    $119
                                </div><!-- ticket-price -->
                            </div><!-- ticket-type -->

                            <div class="flex align-items-center">
                                <div class="number-of-tickets flex justify-content-between align-items-center">
                                    <span class="decrease-ticket">-</span>
                                    <input type="number" name="" value="1" class="ticket-count">
                                    <span class="increase-ticket">+</span>
                                </div><!-- number-of-tickets -->

                                <div class="clear-ticket-count">Clear</div>
                            </div><!-- flex -->
                            <input type="submit" name="" value="Buy" class="btn mt-2 mb-2 mt-lg-0 mb-lg-0"><!-- btn -->
                        </div><!-- ticket-row -->

                        <div class="ticket-row flex flex-column flex-lg-row justify-content-lg-between align-items-lg-center">
                            <div class="ticket-type flex flex-column flex-lg-row align-items-lg-center">
                                <h3 class="entry-title"> Early Bird Ticket</h3>
                                <span class="mt-2 mt-lg-0"> Basic Entry</span>
                                <div class="ticket-price mt-3 mt-lg-0">
                                    $59
                                </div><!-- ticket-price -->
                            </div><!-- ticket-type -->

                            <div class="flex align-items-center">
                                <div class="number-of-tickets flex justify-content-between align-items-center">
                                    <span class="decrease-ticket">-</span>
                                    <input type="number" name="" value="1" class="ticket-count">
                                    <span class="increase-ticket">+</span>
                                </div><!-- number-of-tickets -->

                                <div class="clear-ticket-count">Clear</div>
                            </div><!-- flex -->

                            <input type="submit" name="" value="Buy" class="btn mt-2 mb-2 mt-lg-0 mb-lg-0"><!-- btn -->
                        </div><!-- ticket-row -->

                        <div class="ticket-row flex flex-column flex-lg-row justify-content-lg-between align-items-lg-center">
                            <div class="ticket-type flex flex-column flex-lg-row align-items-lg-center">
                                <h3 class="entry-title">Ticket + Camping</h3>
                                <span class="mt-2 mt-lg-0"> Vip Entry</span>
                                <div class="ticket-price mt-3 mt-lg-0">
                                    $219
                                </div><!-- ticket-price -->
                            </div><!-- ticket-type -->

                            <div class="flex align-items-center">
                                <div class="number-of-tickets flex justify-content-between align-items-center">
                                    <span class="decrease-ticket">-</span>
                                    <input type="number" name="" value="1" class="ticket-count">
                                    <span class="increase-ticket">+</span>
                                </div><!-- number-of-tickets -->

                                <div class="clear-ticket-count">Clear</div>
                            </div><!-- flex -->

                            <input type="submit" name="" value="Buy" class="btn mt-2 mb-2 mt-lg-0 mb-lg-0"><!-- btn -->
                        </div><!-- ticket-row -->

                        <div class="ticket-row flex flex-column flex-lg-row justify-content-lg-between align-items-lg-center">
                            <div class="ticket-type flex flex-column flex-lg-row align-items-lg-center">
                                <h3 class="entry-title">Vip Ticket + Camping</h3>
                                <span class="mt-2 mt-lg-0"> Vip Entry</span>
                                <div class="ticket-price mt-3 mt-lg-0">
                                    $319
                                </div><!-- ticket-price -->
                            </div><!-- ticket-type -->

                            <div class="flex align-items-center">
                                <div class="number-of-tickets flex justify-content-between align-items-center">
                                    <span class="decrease-ticket">-</span>
                                    <input type="number" name="" value="1" class="ticket-count">
                                    <span class="increase-ticket">+</span>
                                </div><!-- number-of-tickets -->

                                <div class="clear-ticket-count">Clear</div>
                            </div><!-- flex -->

                            <input type="submit" name="" value="Buy" class="btn"><!-- btn -->
                        </div><!-- ticket-row -->
                    </div><!-- event-tickets -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- main-content -->

    <footer class="site-footer">
        <div class="footer-cover-title flex justify-content-center align-items-center">
            <h2>SiaoMi</h2>
        </div><!-- .site-footer -->

        <div class="footer-content-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="entry-title">
                            <a href="#">SiaoMi</a>
                        </div><!-- entry-title -->

                        <div class="entry-mail">
                            <a href="#">SAYHELLO@SiaoMi.COM</a>
                        </div><!-- .entry-mail -->

                        <div class="copyright-info">
                            
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | by Colorlib- More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>

                        </div><!-- copyright-info -->

                        <div class="footer-social">
                            <ul class="flex justify-content-center align-items-center">
                                <li><a href="#"><i class="fab fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fab fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fab fa-behance"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                            </ul>
                        </div><!-- footer-social -->
                    </div><!-- col -->
                </div><!-- row -->
            </div><!-- container -->
        </div><!-- footer-content-wrapper -->
    </footer><!-- site-footer -->

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
            var point = new BMap.Point(116.323066,39.989956);//定义一个中心点坐标
            map.centerAndZoom(point,17);//设定地图的中心点和坐标并将地图显示在地图容器中
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


    <script type='text/javascript' src='${js}/jquery.js'></script>
    <script type='text/javascript' src='${js}/masonry.pkgd.min.js'></script>
    <script type='text/javascript' src='${js}/jquery.collapsible.min.js'></script>
    <script type='text/javascript' src='${js}/swiper.min.js'></script>
    <script type='text/javascript' src='${js}/jquery.countdown.min.js'></script>
    <script type='text/javascript' src='${js}/circle-progress.min.js'></script>
    <script type='text/javascript' src='${js}/jquery.countTo.min.js'></script>
    <script type='text/javascript' src='${js}/custom.js'></script>
</body>
</html>
