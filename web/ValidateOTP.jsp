
<%@page import="Db.DBConnection"%>
<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
    String user_id = request.getParameter("u_id");
   
    boolean st = false;
   
   
    String query = "select * from otp where sendto='"+ session.getAttribute("admin_id")+"'";
    ResultSet rs = new GetQuery().getResultSetQuery(query);
    while (rs.next()) {
        String otp = rs.getString("otp");
      
       
        if (otp.equals(user_id)) {
            st = true;
            break;
        } else {
            st = false;
        }
    }
    
    
    
    
    
     if(st==true)
    {
         
   
%>
<font style="color: green">OTP Verified Successfully.</font><script language='javascript'>location.href = "updatePassword.jsp"</script>
<%
 } else {
%>
<font style="color: red">Check OTP Again or May be Expired!</font>
<%
    }
%>