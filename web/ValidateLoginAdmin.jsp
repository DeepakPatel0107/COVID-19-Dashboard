
<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user_id = request.getParameter("u_id");
    String Pass = request.getParameter("Pass");
    String dis_name = null;
    boolean st = false;
   
   
    String query = "select * from userdetails";
    ResultSet rs = new GetQuery().getResultSetQuery(query);
    while (rs.next()) {
        String email = rs.getString("email");
        String password = rs.getString("password");
        dis_name = rs.getString("name");
       
        if (email.equals(user_id) && password.equals(Pass)) {
            st = true;
            break;
        } else {
            st = false;
        }
    }
    if (st == true) {
        session.setAttribute("admin_id", user_id);
        session.setAttribute("admin_name", dis_name);
        
      
%>
<font style="color:green">Login Successful....!</font><script language='javascript'>location.href = "admin/index.jsp?state=null"</script>
<%
} else {
%>
<font style="color: red">Please Enter correct username and password!</font>
<%
    }

%>