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
</head>

<body class="contact-page">

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

    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Elements</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="index.html">HOME</a></li>
                            <li>Contact</li>
                        </ul><!-- .breadcrumbs -->
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- page-header -->

    <div class="container">
        <div class="main-content">
            <div class="contact-page-map">
                <iframe id="gmap_canvas" src="https://maps.google.com/maps?q=university of san francisco&t=&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
            </div><!-- map -->

            <div class="contact-details">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="contact-medium flex align-items-center">
                                <figure class="contact-icon">
                                    <img src="images/phone.jpg" alt="phone icon">
                                </figure><!-- phone-icon -->

                                <div class="contact-content">
                                    <div class="entry-title">
                                        Phone
                                    </div><!-- entry-title -->
                                    <div class="entry-content">
                                        +45 677 8993000 223
                                    </div><!-- entry-content -->
                                </div><!-- phone-number -->
                            </div><!-- contact-phone -->
                        </div><!-- col-4 -->

                        <div class="col-12 col-md-6 col-lg-4 mt-5 mt-md-0">
                            <div class="contact-medium flex align-items-center">
                                <figure class="contact-icon">
                                    <img src="images/mail.jpg" alt="phone icon">
                                </figure><!-- phone-icon -->

                                <div class="contact-content">
                                    <div class="entry-title">
                                        E-mail
                                    </div><!-- entry-title -->
                                    <div class="entry-content">
                                        office@template.com
                                    </div><!-- entry-content -->
                                </div><!-- phone-number -->
                            </div><!-- contact-phone -->
                        </div><!-- col-4 -->

                        <div class="col-12 col-md-6 col-lg-4 mt-5 mt-lg-0">
                            <div class="contact-medium flex align-items-center">
                                <figure class="contact-icon">
                                    <img src="images/place.jpg" alt="phone icon">
                                </figure><!-- phone-icon -->

                                <div class="contact-content">
                                    <div class="entry-title">
                                        Address
                                    </div><!-- entry-title -->
                                    <div class="entry-content">
                                        Main Str. no 45-46, b3, 56832,<br>
                                        Los Angeles, CA
                                    </div><!-- entry-content -->
                                </div><!-- phone-number -->
                            </div><!-- contact-phone -->
                        </div><!-- col-4 -->
                    </div><!-- row -->
                </div>
            </div><!-- contact-details -->

            <div class="get-in-touch">
                <div class="entry-header">
                    <div class="entry-title">
                        <p>JUST THE BEST</p>
                        <h2>Get in touch</h2>
                    </div><!-- entry-title -->
                </div><!-- entry-header -->

                <div class="entry-content">
                    <p>Quisque at erat eu libero consequat tempus. Quisque mole stie convallis tempus.
                        Ut semper purus metus, a euismod sapien sodales ac. Duis viverra eleifend fermentum.
                         Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tempus vestibulum mauris quis aliquam.
                        Integer accumsan sodales odio, id tempus velit ullamcorper id.</p>
                </div><!-- entry-content -->

                <div class="contact-form">
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <input type="text" placeholder="Your name">
                        </div><!-- col-4 -->

                        <div class="col-12 col-md-6">
                            <input type="email" placeholder="Your email">
                        </div><!-- col-6 -->

                        <div class="col-12">
                            <input type="text" placeholder="Subject">
                        </div>

                        <div class="col-12">
                            <textarea name="name" rows="8" cols="80" placeholder="message"></textarea>
                        </div>

                        <div class="col-12 submit flex justify-content-center">
                            <input type="submit" name="" value="send message" class="btn">
                        </div>

                    </div><!-- row -->
                </div><!-- contact-form -->
            </div><!-- newsletter-subscribe -->
        </div><!-- main-content -->
    </div><!-- container -->

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
