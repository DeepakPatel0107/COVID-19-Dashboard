
<%@page import="Db.DBConnection"%>
<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     session.getAttribute("admin_id");
    String name = request.getParameter("name");
    String father = request.getParameter("father");
    String mother = request.getParameter("mother");
    String dob = request.getParameter("dob");
    String mobile = request.getParameter("mobile");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String pincode = request.getParameter("pincode");

   
   
   
    
         String query = "update userdetails set name='" + name + "',father='" + father + "',mother='" + mother + "',dob='" + dob + "',mobile='" + mobile + "',address='" + address + "',city='" + city + "',state='" + state + "',pincode='" + pincode + "' where email='" + session.getAttribute("admin_id") + "'";
    int i = new DBConnection().getQuery(query);
   if(i>0)
   {
       
   
%>
<font style="color: green">Successfully Updated.</font>
<%
}else
{
%>
<font style="color: red"> Failed to Update!</font>
<%
 }  
%>