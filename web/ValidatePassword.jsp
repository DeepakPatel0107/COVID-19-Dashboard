

<%@page import="Db.DBConnection"%>
<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     session.getAttribute("admin_id");
    String user_id = request.getParameter("u_id");
    String Pass = request.getParameter("Pass");
    String dis_name = null;
    boolean st = false;
   
   
     if(Pass.equals(user_id))
    {
         String query = "update userdetails set password='" + Pass + "' where email='" + session.getAttribute("admin_id") + "'";
    int i = new DBConnection().getQuery(query);
   
%>
<font style="color: green">Successfully Updated.</font><script language='javascript'>location.href = "index.jsp"</script>
<%
 } else {
%>
<font style="color: red"> Failed to Update!</font>
<%
    }
%>