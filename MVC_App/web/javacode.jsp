<%@page  import="java.sql.DriverManager"%>
<%@page  import="java.sql.PreparedStatement"%>
<%@page  import="java.sql.ResultSet"%>
<%@page  import="java.sql.Connection"%>
<%
 String btn1=request.getParameter("button1");
 if(btn1!=null && btn1.equals("LOGIN"))
 {
   String id=request.getParameter("useridtext");
   String pass=request.getParameter("passwordtext");
   
   Class.forName("com.mysql.jdbc.Driver");     
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","manisha");
   PreparedStatement st=con.prepareStatement("select *  from userlogin  where User_id =? and Password=?");
   
    st.setString(1,id);
    st.setString(2,pass);
    ResultSet rs = st.executeQuery();
    if(rs.next())
    {
     Cookie ck = new Cookie("MVC",id);
     ck.setMaxAge(100000);
     response.addCookie(ck);
     session.setAttribute("CALL",id);
     response.sendRedirect("userpage.jsp");
    }
   else
   {
    response.sendRedirect("loginpage.jsp");
   }
}
  
%>