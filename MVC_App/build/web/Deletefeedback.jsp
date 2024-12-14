
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String a = request.getParameter("combo");
   
    
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","manisha");
           PreparedStatement st = con.prepareStatement("delete from feedbackinfo where username=?");
           
           st.setString(1,a);
           
           st.executeUpdate();
           response.sendRedirect("viewallfeedback.jsp");
           con.close();
%>
    
    
    

