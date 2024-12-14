
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String id = request.getParameter("useridtext");
    String pass = request.getParameter("passwordtext");
    String comid = request.getParameter("complaintidtext");
    String comdet = request.getParameter("complaintdetailtext");
    String date = request.getParameter("datetext");
    String time = request.getParameter("timetext");
    
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","manisha");
           PreparedStatement st = con.prepareStatement("insert into complain values(?,?,?,?,?,?)");
           
           st.setString(1,id);
           st.setString(2,pass);
           st.setString(3,comid);
           st.setString(4,comdet);
           st.setString(5,date);
           st.setString(6,time);
           
           st.executeUpdate();
           response.sendRedirect("newuser.jsp");
           con.close();
           %>
    
    
    

