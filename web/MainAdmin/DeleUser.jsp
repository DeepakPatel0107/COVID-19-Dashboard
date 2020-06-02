
<%@page import="Db.GetQuery"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
String email=request.getParameter("email");
boolean st=new GetQuery().getinsertUpdateQuery("delete from userdetails where email='"+email+"'");
if(st==true)
{
    %>
    <script>alert("successfully deleted!");</script>
    <%
}
else
{
%>
    <script>alert("Error in deletion!");</script>
    <%
}



%>