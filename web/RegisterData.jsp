

<%@page import="Db.GetQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Db.DBConnection"%>
 
<%
   
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
    String password = request.getParameter("pass");
    
    String email1="";
     String query = "select * from userdetails";
    ResultSet rs = new GetQuery().getResultSetQuery(query);
    while (rs.next()) {
        email1 = rs.getString("email");
       
    }
        if (email.equals(email1)) {
            %>

<script>alert("<%=email %> is Already Registered. Please Try Another Email ID" );</script>
<%
          
        } else {
            String query1 = "insert into userdetails (name,email,password,mobile) values('" + name + "','" + email + "','" + password + "','" + mobile + "')";
   int i= new DBConnection().getQuery(query1);
     
    if (i > 0) {
%>
<font style="color: green">Registered Successfully</font><script language='javascript'>location.href = "index.jsp"</script>
<script>alert("<%=name%> Registered Successfully with Email ID : <%=email%> " );</script>
<%

} else {
%>
<font style="color: red"> Registration Failed!</font>
<%
    }
   }
   
%>


