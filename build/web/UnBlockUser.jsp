<%-- 
    Document   : UnBlockUser
    Created on : 13 Nov, 2019, 10:17:11 AM
    Author     : DELL
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.spam.db.DBConnection"%>
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
           int id = Integer.parseInt(request.getParameter("id"));
       Connection con = null;
       PreparedStatement ps = null;
       
       String sts = "normal";
        try {
            con = DBConnection.getDBConnection();
            String sqlQuery = "update userregister set logistatus = ? where id = ?";
            ps = con.prepareStatement(sqlQuery);
            ps.setString(1, sts);
            ps.setInt(2, id);
            ps.executeUpdate();
            response.sendRedirect("FakeUser.jsp?msg=success");
            
        } catch (Exception e) {
            System.out.println("Error AT Update User Spam Status "+e.getMessage());
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
