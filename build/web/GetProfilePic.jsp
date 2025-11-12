
<%@page import="com.spam.db.DBConnection"%>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 


<%
    Blob image = null;
    byte[] imgData = null;
    try {

        int id = Integer.parseInt(request.getParameter("id"));
        Statement st = DBConnection.getDBConnection().createStatement();
        String strQuery = "select image from userregister where id=" + id + "";
        ResultSet rs = st.executeQuery(strQuery);
        String imgLen = "";
        if (rs.next()) {
            image = rs.getBlob(1);
            imgData = image.getBytes(1, (int) image.length());
        } else {
            out.println("Display Blob Example");
            out.println("image not found for given image");
            return;
        }
        response.setContentType("image/gif");
        OutputStream o = response.getOutputStream();
        o.write(imgData);
        o.flush();
        o.close();

    } catch (Exception e) {
        e.printStackTrace();
    }
%>

</body>
</html>