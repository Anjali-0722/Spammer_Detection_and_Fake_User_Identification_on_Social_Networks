<%-- 
    Document   : UserFollowTweets
    Created on : 11 Nov, 2019, 4:41:37 PM
    Author     : DELL
--%>

<%@page import="com.spam.db.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String usrName = session.getAttribute("username").toString();
            String email = session.getAttribute("email").toString();

            String tweetid = request.getParameter("tweetid");
            String all_emails = request.getParameter("all_emails");
            String all_name = request.getParameter("all_name");
            java.sql.Date cdate = new java.sql.Date(new java.util.Date().getTime());
            Connection con = null;
            PreparedStatement ps = null;
            try {
                con = DBConnection.getDBConnection();
                String sqlQuery = "insert into tweetfollow(username,useremail,tweetid,creatorname,creatoremail,cdate) values(?,?,?,?,?,?)";
                ps = con.prepareStatement(sqlQuery);
                ps.setString(1, usrName);
                ps.setString(2, email);
                ps.setInt(3, Integer.parseInt(tweetid));
                ps.setString(4, all_name);
                ps.setString(5, all_emails);
                ps.setDate(6, cdate);
                int no = ps.executeUpdate();
                response.sendRedirect("UserHome.jsp?msg=Followed Success");
                
            } catch (Exception e) {
                System.out.println("Error at "+e.getMessage());
                response.sendRedirect("UserHome.jsp?msg=Following Failed");
            }finally{
            try {
                    ps.close();
                    con.close();
                } catch (Exception e) {
                }
            }


        %>
    </body>
</html>
