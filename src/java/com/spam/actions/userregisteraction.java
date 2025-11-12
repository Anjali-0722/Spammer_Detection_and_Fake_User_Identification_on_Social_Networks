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
public class userregisteraction extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        PrintWriter out = response.getWriter();
        String name = request.getParameter("Username");
        String email = request.getParameter("Email");
        String password = request.getParameter("password");
        String dob = request.getParameter("DOB");
        String state = request.getParameter("State");
        String country = request.getParameter("Country");
        Part filepart = request.getPart("Profile_img");
        InputStream is = filepart.getInputStream();
        String ImageName = filepart.getSubmittedFileName();
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = DBConnection.getDBConnection();
            String sqlQuery = "insert into userregister(name,email,password,dob,state,country,image) values(?,?,?,?,?,?,?)";
            ps = con.prepareStatement(sqlQuery);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, dob);
            ps.setString(5, state);
            ps.setString(6, country);
            ps.setBinaryStream(7, is);
            int no = ps.executeUpdate();
            if (no > 0) {
                response.sendRedirect("UserRegistration.jsp?msg=Success");
            } else {
                response.sendRedirect("UserRegistration.jsp?msg=failed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("UserRegistration.jsp?msg=Exist");
        } finally {
            try {
                ps.close();
                con.close();
            } catch (Exception e) {

            }
        }
    }
}
