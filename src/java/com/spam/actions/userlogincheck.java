package com.spam.actions;

import com.spam.db.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class userlogincheck extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String pswd = request.getParameter("password");
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String status = null;
        HttpSession hs = request.getSession();
        try {
            con = DBConnection.getDBConnection();
            String sqlQury = "select * from userregister where email = ? and password = ?";
            ps = con.prepareStatement(sqlQury);
            ps.setString(1, email);
            ps.setString(2, pswd);
            rs = ps.executeQuery();
            if (rs.next()) {

                String sts = rs.getString("logistatus");
                if (sts.equalsIgnoreCase("normal")) {
                    hs.setAttribute("username", rs.getString("name"));
                    hs.setAttribute("email", rs.getString("email"));
                    response.sendRedirect("UserHome.jsp?msg=Login Success");
                } else {
                    response.sendRedirect("User.jsp?msg=spammer");
                }

            } else {
                response.sendRedirect("User.jsp?msg=failed");

            }

        } catch (Exception ex) {
            ex.printStackTrace();
            response.sendRedirect("User.jsp?msg=notexist");

        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

}
