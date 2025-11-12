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
public class UserUpdateProfile extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("userid"));
        String username = request.getParameter("username");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        Part filePart = request.getPart("profilepic");
        InputStream is = filePart.getInputStream();

        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBConnection.getDBConnection();
            String sqlQuery = "update userregister set name = ?, state=?,country=?, image=? where id=?";
            ps = con.prepareStatement(sqlQuery);
            ps.setString(1, username);
            ps.setString(2, state);
            ps.setString(3, country);
            ps.setBinaryStream(4, is);
            ps.setInt(5, id);
            ps.executeUpdate();
            response.sendRedirect("UserProfileView.jsp?msg=Profile Updated");
        } catch (Exception e) {
            System.out.println("Error at " + e.getMessage());
        } finally {
            try {
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
