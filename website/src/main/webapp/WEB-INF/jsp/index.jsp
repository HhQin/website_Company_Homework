<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en" dir="ltr">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Siao Mi 2018 Worldwide Developer Conference</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <c:url value="/css" var="css" />
    <c:url value="/js" var="js" />
    <c:url value="/style.css" var="styleCss" />
    <link rel="stylesheet" href="${css}/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="${css}/fontawesome-all.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="${css}/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="${styleCss}">
</head>
<body>

    <header class="site-header">
        <div class="header-bar">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-10 col-lg-4">
                        <h1 class="site-branding flex">
                            <a href="#">Siao Mi</a>
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
                                <li><a href="/ticket">ARTISTS</a></li>
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

    <div class="hero-content">
        <div class="container">
            <div class="row">
                <div class="col-12 offset-lg-2 col-lg-10">
                    <div class="entry-header">
                        <h2>Siao Mi</h2>

                        <div style="font-size:48px">
                            2018-10-8   Siao Mi   Product Launch
                        </div><!-- .entry-meta-date -->
                    </div><!-- .entry-header -->
                    <br>
                    <div class="countdown flex flex-wrap justify-content-between" data-date="2018/10/08">
                        <div class="countdown-holder">
                            <div class="dday"></div>
                            <label>Days</label>
                        </div><!-- .countdown-holder -->

                        <div class="countdown-holder">
                            <div class="dhour"></div>
                            <label>Hours</label>
                        </div><!-- .countdown-holder -->

                        <div class="countdown-holder">
                            <div class="dmin"></div>
                            <label>Minutes</label>
                        </div><!-- .countdown-holder -->

                        <div class="countdown-holder">
                            <div class="dsec"></div>
                            <label>Seconds</label>
                        </div><!-- .countdown-holder -->
                    </div><!-- .countdown -->
                </div><!-- .col-12 -->
            </div><!-- row -->

            <div class="row">
                <div class="col-12 ">
                    <div class="entry-footer">
                        <a href="/elements" class="btn current">Learn More</a>
                        <a href="/ticket" class="btn">Buy Tickets</a>
                    </div>
                </div>
            </div>

        </div><!-- .container -->
    </div><!-- .hero-content -->




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
