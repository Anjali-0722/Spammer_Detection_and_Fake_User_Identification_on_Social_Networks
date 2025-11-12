package com.spam.actions;

import com.spam.db.DBConnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author DELL
 */
@MultipartConfig
public class UserComposeTweets extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String user = request.getParameter("user");
        String usremail = request.getParameter("usremail");
        String tweet = request.getParameter("tweet");
        Part filePart = request.getPart("bpo");
        InputStream is = filePart.getInputStream();
        java.sql.Date cdate = new java.sql.Date(new java.util.Date().getTime());

        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBConnection.getDBConnection();
            String sql = "insert into tweets(username,usremail,tweet,tweetimg,cdate) values(?,?,?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, usremail);
            ps.setString(3, tweet);
            ps.setBinaryStream(4, is);
            ps.setDate(5, cdate);
            int no = ps.executeUpdate();
            if (no > 0) {
                response.sendRedirect("UserComposeTweet.jsp?msg=success");
            } else {
                response.sendRedirect("UserComposeTweet.jsp?msg=failed");
            }

        } catch (Exception e) {
            System.out.println("Error at " + e.getMessage());
            response.sendRedirect("UserComposeTweet.jsp?msg=failed");
        } finally {
            try {
                is.close();
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
