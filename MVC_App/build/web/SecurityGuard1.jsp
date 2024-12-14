<%
    response.addHeader("Pragma", "no-Cache");
    response.addHeader("Cache-Control", "no-Store");
    response.setHeader("Pragma", "no-Cache");
    response.setHeader("Cache-Control", "no-Store");
       String value=(String)session.getAttribute("CALL");
    if(value==null)
    {
    response.sendRedirect("loginpage.jsp");    
    }
    if(session==null)
    {
    response.sendRedirect("loginpage.jsp");
    }
%>