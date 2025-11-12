<%@page import="com.spam.util.UsersUtility"%>
<%@page import="com.spam.db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
                                <h1 style="color:white"><a href="FakeUser.jsp">TWITTER
                                    <!--<img src="img/logo.png" alt="">-->
                            
                                    </a></h1>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-9">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a class="nav-item" href="Admin.jsp">AdminHome</a></li>
                                        
                                        <li><a href="UserDetails.jsp">UserDetails</a></li>
                                        <li><a href="UserTweet.jsp">UserTweet</a></li>
                                        <li><a href="Classification.jsp">Classification</a></li>
                                        <li><a href="FakeUser.jsp">FakeUser</a></li>
                                        <li><a href="index.jsp">LOGOUT</a></li>
                                       
                                        
                                    
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
                                <center> <table border="2" width="1" cellspacing="1" cellpadding="1">
                        <thead>
                        <span class ="subheading"></span>
                         <center> <table border="2" width="1" cellspacing="1" cellpadding="1">
                                            <thead>
                                            <span class ="subheading"></span>
                                            <center><h1 class="mb-4"style="color:white">  Fake and Spam Users </h1></center>

                                            <tr style="color:white">
                                                <th>&nbsp;SNO&nbsp;</th>

                                                <th>&nbsp;Username&nbsp;</th>

                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>

                                                <th>DOB</th>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;State&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                <th>&nbsp;&nbsp;Profile_img&nbsp;</th>
                                                <th>Un Block</th>
                                            </tr>



                                            </thead>
                                            <tbody>
                                                <%
                                                    Connection con = null;
                                                    PreparedStatement ps = null;
                                                    ResultSet rs = null;
                                                    int sno = 0;
                                                    String sts = "spammer";
                                                    UsersUtility uu = new UsersUtility();
                                                    try {
                                                        con = DBConnection.getDBConnection();
                                                        String sqlQuery = "select *from userregister where spamstatus = ?";
                                                        ps = con.prepareStatement(sqlQuery);
                                                        ps.setString(1, sts);
                                                        rs = ps.executeQuery();
                                                        while (rs.next()) {
                                                            sno++;
                                                            int id = rs.getInt("id");
                                                            String name = rs.getString("name");
                                                            String email = rs.getString("email");
                                                            String dob = rs.getString("dob");
                                                            String state = rs.getString("state");
                                                            String country = rs.getString("country");
                                                            String usrSts = uu.getUserStatus(id);
                                                            System.out.println("User Current Status "+usrSts);
                                                %>
                                                <tr style="font-size: larger;color: blueviolet;background: #dee2e6">
                                                    <td><%=sno%></td>
                                                    <td><%=name%></td>
                                                    <td><%=email%></td>
                                                    <td><%=dob%></td>
                                                    <td><%=state%></td>
                                                    <td><%=country%></td>
                                                    <td><img src="GetProfilePic.jsp?id=<%=id%>" width="80" height="60"></td>
                                                    <td><%
                                                        if(usrSts.equalsIgnoreCase("spammer")){
                                                            String blkSts = uu.getUserBlockingStatus(id);
                                                            System.out.println("Blocking Status = "+blkSts);
                                                            if(blkSts.equalsIgnoreCase("block")){
                                                            %> <a href="UnBlockUser.jsp?id=<%=id%>" >Un-Block</a></td><%
                                                            }else{
                                                            %><a href="BlockUser.jsp?id=<%=id%>" >Block</a></td>    <%
                                                            }
                                                        %>
                                                        
                                                        <%
                                                        }else{
                                                        %>
                                                        
                                                    <%
                                                        }
                                                        %>
                                                       


                                                </tr>
                                                <%

                                                        }
                                                    } catch (Exception e) {
                                                        System.out.println("Error at " + e.getMessage());
                                                    } finally {
                                                        try {
                                                            rs.close();
                                                            ps.close();
                                                            con.close();
                                                        } catch (Exception e) {
                                                        }
                                                    }
                                                %>



                                            </tbody>
                                        </table>
                                    </center>

                                <!--<h1 style="color: white">Spammer Detection and Fake User Identification on Social Networks <br></h1>-->
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        

    
    </div>
    <p class="copy_right text-center">
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
<!--Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://google.com" target="_blank">Alex Hales Corpo</a>-->  
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