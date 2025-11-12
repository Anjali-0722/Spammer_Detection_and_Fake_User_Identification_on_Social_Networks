<!doctype html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>wemeet</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- <link rel="manifest" href="site.webmanifest"> -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
        <!-- Place favicon.ico in the root directory -->

        <!-- CSS here -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/slicknav.css">
        <link rel="stylesheet" href="css/style.css">
        <!-- <link rel="stylesheet" href="css/responsive.css"> -->
        <script>
            function validateForm() {
                var x = document.forms["myForm"]["email"].value;
                var atpos = x.indexOf("@");
                var dotpos = x.lastIndexOf(".");
                if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
                    alert("Not a valid e-mail address");
                    return false;
                }
            }
        </script>
    </head>

    <body>
        <!--[if lte IE 9]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
            <![endif]-->

        <!-- header-start -->
        <header>
            <div class="header-area ">
                <div id="sticky-header" class="main-header-area ">
                    <div class="container-fluid p-0">
                        <div class="row align-items-center justify-content-between no-gutters">
                            <div class="col-xl-2 col-lg-2">
                                <div class="logo-img">
                                    <h1 style="color:white"><a href="index.jsp">TWITTER
                                            <!--<img src="img/logo.png" alt="">-->

                                        </a></h1>
                                </div>
                            </div>
                            <div class="col-xl-8 col-lg-8">
                                <div class="main-menu  d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a href="index.jsp">Home</a></li>
                                            <li class="active"><a class="nav-item" href="User.jsp">User</a></li>
                                            <li><a href="Admin.jsp">Admin</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- header-end -->

        <!-- slider_area_start -->
        <div class="slider_area slider_bg_1">
            <div class="slider_text">
                <div class="container">
                    <div class="position_relv">
                        <!--<h1 class="opcity_text d-none d-lg-block">CONFIRENCE</h1>-->
                        <div class="row">
                            <div class="col-xl-10">
                                <div class="title_text">
                                    <h1 style="color: white">User Login <br></h1>
                                    <form action="userlogin" method="post" onsubmit="return validateForm()">
                                        <div class="">
                                            <div class="form-group">    		

                                                <strong>User Email</strong>:&nbsp;
                                                <input type="email" name="email" placeholder="User Email" required>
                                            </div>
                                            <div class="form-group">
                                                <strong>Password</strong>:&nbsp;&nbsp;<input type="password" name="password" placeholder="Password">
                                            </div>
                                            <div class="form-group">		
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Login" class="btn btn-secondary py-3 px-4">
                                            </div>
                                            <div class="form-group">
                                                <p class="mb-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="UserRegistration.jsp" class="btn btn-secondary py-3 px-4">User Register</a></p>
                                            </div>

                                    </form>
                                    <%
                                        String msg = request.getParameter("msg");
                                        if (msg != null && msg.equalsIgnoreCase("failed")) {
                                            out.println("<font color='green'>Login Failed invalid email or password </font>");
                                        } else if (msg != null && msg.equalsIgnoreCase("notexist")) {
                                            out.println("<font color='RED'>Email id not registered, please create account first</font>");
                                        }else if (msg != null && msg.equalsIgnoreCase("spammer")) {
                                            out.println("<font color='YELLOW'>You have been blocked by auto Spam filter, wait until admin unblocks you</font>");
                                        }

                                    %>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <p class="copy_right text-center">
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://google.com" target="_blank">Alex Hales Corpo</a>

            <!-- JS here -->
            <script src="js/vendor/modernizr-3.5.0.min.js"></script>
            <script src="js/vendor/jquery-1.12.4.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/owl.carousel.min.js"></script>
            <script src="js/isotope.pkgd.min.js"></script>
            <script src="js/ajax-form.js"></script>
            <script src="js/waypoints.min.js"></script>
            <script src="js/jquery.counterup.min.js"></script>
            <script src="js/imagesloaded.pkgd.min.js"></script>
            <script src="js/scrollIt.js"></script>
            <script src="js/jquery.scrollUp.min.js"></script>
            <script src="js/wow.min.js"></script>
            <script src="js/nice-select.min.js"></script>
            <script src="js/jquery.slicknav.min.js"></script>
            <script src="js/jquery.magnific-popup.min.js"></script>
            <script src="js/jquery.countdown.js"></script>
            <script src="js/plugins.js"></script>

            <!--contact js-->
            <script src="js/contact.js"></script>
            <script src="js/jquery.ajaxchimp.min.js"></script>
            <script src="js/jquery.form.js"></script>
            <script src="js/jquery.validate.min.js"></script>
            <script src="js/mail-script.js"></script>

            <script src="js/main.js"></script>

    </body>

</html>