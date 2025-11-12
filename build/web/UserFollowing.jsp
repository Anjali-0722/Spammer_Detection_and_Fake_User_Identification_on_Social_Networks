<%@page import="com.spam.util.UsersUtility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.spam.db.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page isErrorPage = "true" %>
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
        <script src="http://code.jquery.com/jquery-1.5.js"></script>
        <script>
            function countChar(val) {
                var len = val.value.length;
                if (len >= 300) {
                    val.value = val.value.substring(0, 300);
                } else {
                    $('#charNum').text(300 - len);
                }
            }
            ;
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
                                    <h1 style="color:white"><a href="UserHome.jsp">TWITTER
                                            <!--<img src="img/logo.png" alt="">-->
  <%
                                        String usrName = session.getAttribute("username").toString();
                                        String email = session.getAttribute("email").toString();
                                    %>   
                                        </a></h1>
                                </div>
                            </div>
                            <div class="col-xl-9 col-lg-9">
                                <div class="main-menu  d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a href="UserHome.jsp">UserHome</a></li>
                                            <li><a  href="UserProfileView.jsp">Profile</a></li>
                                            <li><a href="UserComposeTweet.jsp">ComposeTweet</a></li>
                                            <li><a href="UserTrending.jsp">Trending</a></li>
                                            <li><a class="nav-item" href="UserFollowers.jsp">Followers</a></li>
                                            <li><a href="UserFollowing.jsp">Following</a></li>
                                            <li><a href="Logout.jsp">LOGOUT</a></li>



                                        </ul>
                                    </nav>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none">
                                                              
                                </div> 
                                <h2>Logged User is....! <%=usrName%> </h2>

                         

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
                                    <!--<h1 style="color: white">Spammer Detection and Fake User Identification on Social Networks <br></h1>-->
                                    <h2>You Following Tweets    </h2> 
                                      <table border="2">
                                    <tr>
                                        <th>S.NO</th>
                                        <th>Following User Name</th>
                                        <th>User Image</th>
                                        <th>User Email</th>
                                        <th>Tweet ID</th>
                                        <th>Tweet Message</th>
                                        <th>Tweet Image</th>
                                        
                                        
                                        
                                    </tr>

                                    <%
                                        Connection con = null;
                                        PreparedStatement ps = null;
                                        ResultSet rs = null;
                                        UsersUtility uu = new UsersUtility();
                                        try {
                                            con = DBConnection.getDBConnection();
                                            String sqlQuery = "select *from tweetfollow where useremail = '" + email + "'";
                                            ps = con.prepareStatement(sqlQuery);
                                            //System.out.println("SQl Query "+sqlQuery);
                                            //ps.setString(1, email);
                                            rs = ps.executeQuery();
                                            int sno = 0;
                                            while (rs.next()) {
                                                sno++;
                                                String username = rs.getString("username");
                                                
                                               // String all_name = uu.getUserName(all_emails);
                                                String useremail = rs.getString("useremail");
                                               
                                               // String tweet = rs.getString("tweet");
                                                int tweet_id = rs.getInt("tweetid");
                                                String creatorname = rs.getString("creatorname");
                                                String creatoremail = rs.getString("creatoremail");
                                                 int all_id = uu.getUserId(creatoremail);
                                                String tweet = uu.getTweetDescription(tweet_id);


                                    %>


                                    <tr>
                                        
                                        <td><%=sno%></td>
                                        <td> <%=creatorname%></td>
                                        <td><img src="GetProfilePic.jsp?id=<%=all_id%>" width="120" height="120"></td>
                                        <td><%=creatoremail%></td>
                                        <td><%=tweet_id%></td>
                                        <td><%=tweet%></td>                                        
                                        <td> <img src="GetTweetImage.jsp?id=<%=tweet_id%>" width="120" height="120"></td>
                                        
                                    </tr>

                                    <%               }
                                        } catch (Exception e) {
                                            System.out.println("Error at Getting " + e.getMessage());
                                        } finally {
                                            try {
                                                rs.close();
                                                ps.close();
                                                con.close();
                                            } catch (Exception e) {
                                            }
                                        }
                                    %> 
                                </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
            
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