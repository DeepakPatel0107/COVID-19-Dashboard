<%
    try {
        String home = "../index.jsp";

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Logout</title>");
        out.println("<meta http-equiv=\"refresh\" content=\"1;url=" + home + "\">");
        out.println("</head>");
        out.println("<body onunload=\"javascript:history.forward(1)\"><center>");
        out.println("<img src=\"../admin/assets/images/52420594-423d-4b8d-9d89-a073cf3dd005.png\" width=\"950\" height=\"400\">");
        HttpSession session1 = request.getSession();        
        session1.invalidate();        
%>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() {
        window.history.forward();
    }
</SCRIPT>

<%
        out.println(
                "<h3>Thanks for Visit, You have logged out successfully<br></h3>");
        out.println("<p>Redirecting to Login page....</p>");
        out.println("</center></body>");
        out.println("</html>");
    } finally {
        out.close();
    }

%>