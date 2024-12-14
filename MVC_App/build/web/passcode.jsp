
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String a = request.getParameter("userId");
    String b = request.getParameter("oldpassword");
    String c = request.getParameter("newpassword");
    String d = request.getParameter("cnewpassword");
    
    
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","manisha");
           PreparedStatement st = con.prepareStatement("select * from authlogin where userId =? and password =?");
           
           st.setString(1,a);
           st.setString(2,b);
           
           ResultSet rs = st.executeQuery();
            if(rs.next()) 
            {
            if(c.equals(d))
             {
             PreparedStatement st1 = con.prepareStatement("update authlogin set password =? where userId =?");
           
             st1.setString(1,c);
             st1.setString(2,a);
             
             st1.executeUpdate();
             
             response.sendRedirect("homepage.html");
             }
             else
             {
              out.println("new password and confirm new password doesn't match");
             }
            }
           else
           {
             out.println("invalid id/password");
           }
           con.close();
           
%>
    
    
    

