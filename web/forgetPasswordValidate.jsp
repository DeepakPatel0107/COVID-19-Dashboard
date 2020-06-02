<%-- 
    Document   : ValidatDisLogin
    Created on : 1 Nov, 2019, 1:26:55 PM
    Author     : SPVAIG
--%>


<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user_id = request.getParameter("u_id");
    String dis_name = null;
    boolean st = false;
   
   
    String query = "select * from userdetails";
    ResultSet rs = new GetQuery().getResultSetQuery(query);
    while (rs.next()) {
        String email = rs.getString("email");
        String password = rs.getString("password");
        dis_name = rs.getString("name");
       
        if (email.equals(user_id)) {
            st = true;
            break;
        } else {
            st = false;
        }
    }
    if (st == true) {
        session.setAttribute("admin_id", user_id);
        
        
      
%>
<font style="color:green">Login Successful....!</font><script language='javascript'>location.href = "otp.jsp"</script>
<%
} else {
%>
<font style="color: red">Please Enter correct EmailID!</font>
<%
    }

%>