<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <script>
function validateForm() {
    var x = document.forms["myForm"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
}
</script>
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
                                <h1 style="color:white"><a href="Profile.jsp">TWITTER
                                    <!--<img src="img/logo.png" alt="">-->
                            
                                    </a></h1>
                            </div> 
                        </div>
                        <div class="col-xl-9 col-lg-9">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a class="nav-item" href="UserHome.jsp">UserHome</a></li>
                                        <li><a href="Profile.jsp">Profile</a></li>
                                        <li><a href="ComposeTweet.jsp">ComposeTweet</a></li>
                                        <li><a href="Trending.jsp">Trending</a></li>
                                        <li><a href="Followers.jsp">Followers</a></li>
                                        <li><a href="Following.jsp">Following</a></li>
                                        <li><a href="Logout.jsp">LOGOUT</a></li>
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
                                <h1 style="color: white">Profile <br></h1>
                                <form action="userregisteraction" method="post" onsubmit="return validateForm()" enctype="multipart/form-data">
                                     
                                         
                                        
                                    <div class="">
                                        <div class="form-group">
		        		
		    				
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>UserID</strong>&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type="ID" name="UserID" placeholder="UserID" title="should contain interger only">
                                        </div>    
                                         <div class="form-group">
		        		
		    				
                                            <strong>UserName</strong>&nbsp;:&nbsp;&nbsp;<input type="text" name="name" placeholder="Name" required  pattern="[A-Za-z]+" title="Name should not contain integer value">                                  </div>
                                        <div class="form-group">
		        		
		    				
                                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Email</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; <input type="text" name="email" placeholder="Email" required  title="Email Must In Email Format">
                                        </div>
                                        
                                        <div class="form-group">
		        		
		    				
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>DOB</strong>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;<input type="date" name="dob" placeholder="DOB" required  title="Date of Birth Required">
                                        </div>
                                        <div class="form-group">
		        		
		    				
                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>State</strong>&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp; <input type="text" name="state" placeholder="State"  pattern="[A-Za-z]+" required="">
                                        </div>
                                        <div class="form-group">
		        		
		    				
                                            &nbsp;&nbsp;&nbsp;<strong>Country</strong>&nbsp;&nbsp;:&nbsp;<input type="text" name="country" placeholder="Country" pattern="[A-Za-z]+" required="">
                                        </div>
			    		
			    		
                                                <div class="form-group">
                                                    <p class="mb-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="Update" value="update"</p>
		    				</div>
                                        
		        		
                                            
                                            
                                             
                                        
			    		
			    		
                                                
                                        <%
                                            String msg = request.getParameter("msg");
                                                if (msg != null && msg.equalsIgnoreCase("success")) {
                                                    out.println("<font color='green'>Registration Successfull </font>");
                                                } else if (msg != null && msg.equalsIgnoreCase("faild")) {
                                                    out.println("<font color='RED'>Registration Faild Due to email already exist</font>");
                                                }

                                        %>
                        </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        

        <!--<div class="countDOwn_area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="single_date">
                            <i class="ti-location-pin"></i>
                            <span>City Hall, New York City</span>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="single_date">
                            <i class="ti-alarm-clock"></i>
                            <span>12-15 Sep 2019</span>
                        </div>
                    </div>

                    <div class="col-xl-5 col-md-12 col-lg-5">
                        <span id="clock"></span>
                    </div>

                </div>
            </div>
        </div>-->
    </div>
    <p class="copy_right text-center">
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
<!--888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://google.com" target="_blank">Alex Hales Corpo</a>
  
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