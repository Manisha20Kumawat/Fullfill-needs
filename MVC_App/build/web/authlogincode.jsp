
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
    String id = request.getParameter("userId");
    String pass = request.getParameter("password");
    String postDetail = request.getParameter("post");
    
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","manisha");
           PreparedStatement st = con.prepareStatement("select * from authlogin where userId =? and password =?");
           
           st.setString(1,id);
           st.setString(2,pass);
           
           ResultSet rs = st.executeQuery();
            if(rs.next()) 
            {
            
            Cookie ck=new Cookie("MVC",id);
            ck.setMaxAge(100000);
            response.addCookie(ck);
            session.setAttribute("CALL",id);
            if(postDetail.equalsIgnoreCase("admin"))
             {
              response.sendRedirect("adminpage.jsp");
             }
            if(postDetail.equalsIgnoreCase("operator"))
             {
             response.sendRedirect("oppage.jsp");
             }

            }
           else
           {
             out.println("invalid id/password");
           }
           con.close();
           
%>
    
    
    

