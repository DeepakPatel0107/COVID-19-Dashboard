

<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String user_id = request.getParameter("u_id");
    String Pass = request.getParameter("Pass");
   
    boolean st = false;
   
   
    String query = "select * from round1.admin";
    ResultSet rs = new GetQuery().getResultSetQuery(query);
    while (rs.next()) {
        String email = rs.getString("email");
        String password = rs.getString("password");
       
        if (email.equals(user_id) && password.equals(Pass)) {
            st = true;
            break;
        } else {
            st = false;
        }
    }
    if (st == true) {
     
%>
<font style="color:green">Login Successful....!</font><script language='javascript'>location.href = "MainAdmin/index.jsp"</script>
<%
} else {
%>
<font style="color: red">Please Enter correct username and password!</font>
<%
    }

%>