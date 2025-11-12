<%@page import="com.spam.util.UsersUtility"%>
<%@page import="com.spam.util.URLFiltersAlgorithm"%>
<%@page import="com.spam.util.AlgorithmWorkFlow"%>
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
                                    <h1 style="color:white"><a href="Classification.jsp">TWITTER
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
                                    <center> 
                                        <table border="2" width="1" cellspacing="1" cellpadding="1" style="width:100%">
                                            <thead>
                                            <span class ="subheading"></span>
                                            <center>
                                                <h1 class="mb-4"style="color:white"> Fake And Vulgar Content</h1></center>

                                            <tr style="color:white">
                                                <th>&nbsp;&nbsp;&nbsp;Tweet_ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                <th>&nbsp;Username&nbsp;</th>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                <th style="width: 70%">Tweet Message</th>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tweeted Image&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>                                                
                                           
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    Connection con = null;
                                                    PreparedStatement ps = null;
                                                    ResultSet rs = null;
                                                    int sno = 0;
                                                    AlgorithmWorkFlow awf = new AlgorithmWorkFlow();
                                                    try {
                                                        con = DBConnection.getDBConnection();
                                                        String sqlQuery = "select *from tweets";
                                                        ps = con.prepareStatement(sqlQuery);
                                                        rs = ps.executeQuery();
                                                        while (rs.next()) {
                                                            sno++;
                                                            int id = rs.getInt("id");
                                                            String username = rs.getString("username");
                                                            String usremail = rs.getString("usremail");
                                                            String tweet = rs.getString("tweet");
                                                            //String tweetimg = rs.getString("tweetimg");
                                                            //String country = rs.getString("country");
                                                            int count = awf.catagoriseTweet(tweet);
                                                            //System.out.println("Count is "+count);
                                                            if(count>=1){
                                                                

                                                %>
                                                <tr style="font-size: larger;color: blueviolet;background: #dee2e6">
                                                    <td><%=sno%></td>
                                                    <td><%=username%></td>
                                                    <td><%=usremail%></td>
                                                    <td width="70%"><%=tweet%></td>                                                    
                                                    <td><%=rs.getDate("cdate")%></td>
                                                    <td><img src="GetTweetImage.jsp?id=<%=id%>" width="80" height="60"></td>


                                                </tr>
                                                <%
}
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


                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                    <br>


                                    <center><h1 class="mb-4"style="color:white"> URL Based Spam Detection</h1></center>
                                    <center>
                                        <center> 
                                        <table border="2" width="1" cellspacing="1" cellpadding="1" style="width:100%">
                                            <thead>
                                            <span class ="subheading"></span>
                                            <center>
                                                

                                            <tr style="color:white">
                                                <th>&nbsp;&nbsp;&nbsp;Tweet_ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                <th>&nbsp;Username&nbsp;</th>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                <th style="width: 70%">Tweet Message</th>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tweeted Image&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>                                                
                                           
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    Connection con1 = null;
                                                    PreparedStatement ps1 = null;
                                                    ResultSet rs1 = null;
                                                    int sno1 = 0;
                                                    URLFiltersAlgorithm ufa = new URLFiltersAlgorithm();
                                                    try {
                                                        con1 = DBConnection.getDBConnection();
                                                        String sqlQuery1 = "select *from tweets";
                                                        ps1 = con1.prepareStatement(sqlQuery1);
                                                        rs1 = ps1.executeQuery();
                                                        while (rs1.next()) {
                                                            sno1++;
                                                            int id1 = rs1.getInt("id");
                                                            String username1 = rs1.getString("username");
                                                            String usremail1 = rs1.getString("usremail");
                                                            String tweet1 = rs1.getString("tweet");
                                                            //String tweetimg = rs.getString("tweetimg");
                                                            //String country = rs.getString("country");
                                                            int count1 = ufa.checkUrlsAvailability(tweet1);
                                                            System.out.println("URl Count is "+count1);
                                                            if(count1>=1){
                                                                

                                                %>
                                                <tr style="font-size: larger;color: blueviolet;background: #dee2e6">
                                                    <td><%=sno1%></td>
                                                    <td><%=username1%></td>
                                                    <td><%=usremail1%></td>
                                                    <td width="70%"><%=tweet1%></td>                                                    
                                                    <td><%=rs1.getDate("cdate")%></td>
                                                    <td><img src="GetTweetImage.jsp?id=<%=id1%>" width="80" height="60"></td>


                                                </tr>
                                                <%
}
                                                        }
                                                    } catch (Exception e) {
                                                        System.out.println("Error URL TEst at " + e.getMessage());
                                                        e.printStackTrace();
                                                    } finally {
                                                        try {
                                                            rs1.close();
                                                            ps1.close();
                                                            con1.close();
                                                        } catch (Exception e) {
                                                        }
                                                    }
                                                %>



                                            </tbody>
                                        </table>
                                    </center>

                                    </center>
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                    <center><h1 class="mb-4"style="color:white"> Detecting Spam Trending Topic</h1></center>
                                    <center>
                                       <table border="2" width="1" cellspacing="1" cellpadding="1" style="width:100%">
                                            <thead>
                                            <span class ="subheading"></span>
                                            <center>
                                               

                                            <tr style="color:white">
                                                <th>&nbsp;&nbsp;&nbsp;Tweet_ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                <th>&nbsp;Username&nbsp;</th>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                <th style="width: 70%">Tweet Message</th>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tweeted Image&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>                                                
                                           
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    Connection con2 = null;
                                                    PreparedStatement ps2 = null;
                                                    ResultSet rs2 = null;
                                                    int sno2 = 0;
                                                    //AlgorithmWorkFlow awf = new AlgorithmWorkFlow();
                                                    try {
                                                        con2 = DBConnection.getDBConnection();
                                                        String sqlQuery2 = "select *from tweets";
                                                        ps2 = con2.prepareStatement(sqlQuery2);
                                                        rs2 = ps2.executeQuery();
                                                        UsersUtility uu = new UsersUtility();
                                                        while (rs2.next()) {
                                                            sno++;
                                                            int id = rs2.getInt("id");
                                                            String username = rs2.getString("username");
                                                            String usremail = rs2.getString("usremail");
                                                            String tweet = rs2.getString("tweet");
                                                            //String tweetimg = rs.getString("tweetimg");
                                                            //String country = rs.getString("country");
                                                            int count2 = awf.catagoriseTweet(tweet);
                                                            int count3 = ufa.checkUrlsAvailability(tweet);
                                                            //System.out.println("Count is "+count);
                                                            if(count2>=1 && count3>=1){
                                                                uu.updateUserStatus(usremail);

                                                %>
                                                <tr style="font-size: larger;color: blueviolet;background: #dee2e6">
                                                    <td><%=sno%></td>
                                                    <td><%=username%></td>
                                                    <td><%=usremail%></td>
                                                    <td width="70%"><%=tweet%></td>                                                    
                                                    <td><%=rs2.getDate("cdate")%></td>
                                                    <td><img src="GetTweetImage.jsp?id=<%=id%>" width="80" height="60"></td>


                                                </tr>
                                                <%
}
                                                        }
                                                    } catch (Exception e) {
                                                        System.out.println("Error at " + e.getMessage());
                                                    } finally {
                                                        try {
                                                            rs2.close();
                                                            ps2.close();
                                                            con2.close();
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