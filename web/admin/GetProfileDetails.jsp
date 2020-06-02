
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Db.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%


    Connection conn = new DBConnection().getConnection();
    Statement stmt = conn.createStatement();
    String query = "SELECT * FROM userdetails ";
    ResultSet rs = stmt.executeQuery(query);
    String finalString = "";
    while (rs.next()) {

        finalString = rs.getString("name") + ","
                + rs.getString("father") + ","
                + rs.getString("mother") + ","
                + rs.getString("dob") + ","
                + rs.getString("mobile") + ","
                + rs.getString("address") + ","
                + rs.getString("city") + ","
                + rs.getString("state") + ","
                + rs.getString("pincode");
    }

%>
<%=finalString%>
