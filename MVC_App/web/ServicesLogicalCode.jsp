
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String id = request.getParameter("useridtext");
    String pass = request.getParameter("passwordtext");
    String service = request.getParameter("servicetext");
   
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","manisha");
           PreparedStatement st = con.prepareStatement("insert into Service values(?,?,?)");
           
           st.setString(1,id);
           st.setString(2,pass);
           st.setString(3,service);
           
           st.executeUpdate();
           response.sendRedirect("ServicesForm.jsp");
           con.close();
           %>
    
    
    

