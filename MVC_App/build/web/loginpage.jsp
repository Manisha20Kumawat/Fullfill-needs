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
   
   if(id.equals(""))
    {
     %>
      <script>alert("id is required")</script>
  <%}
    else if(pass.equals(""))
    {
     %>
    <script>alert("password is required")</script>
  <%}
   else
    {
  
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
     %>
     <script>alert("invalid id/password")</script>
  <%}
    
   }
}

  
%>
<html>
    <style>
        .texttheme
        {
            background-color:pink;
            color:black;
            width:300px;
            border-radius:30px;
            height:30px;
        }
        a{
            text-decoration:none;
            color:#a52a2a;
            font-size:20px;
        }
        .btntheme
        {
            background-color:lightpink;
            color:black;
            font-size:15px;
            width:100px;
            height:50px;
            border-radius:30px;
        }
       .mytheme
        {
            height:50px;
            font-size:15px;
            font-family:arial;
            font-weight:bold;
        }
        .tdtheme:hover
        {
           background-color:rgba(145,100,234,1);
           height:50px;
           color:white;
           border-radius:10px;
        }
        .tdtheme
        {
            border-radius:40px;
            background-color:rgba(245,200,234,1);
        }
        h1{
            font-family:arial;
            text-align:center;
            color:black;
        }
        body{
            background-repeat:no-repeat;
        }
    </style>
    <body background="background1.jpg">
        <h1 style="text-align:left;box-shadow: 10px 10px 10px  #FFFFFF">FULL FILL NEEDS</h1>
        
        <table width = "100%" class="mytheme" style="box-shadow: 10px 10px 10px  #FFFFFF;margin-top:-10px">
            <tr align = "center" bgcolor = "lightblue">
                <td class = "tdtheme" width="15%"><a href="homepage.jsp">HOME</a></td>
                <td class = "tdtheme" width="15%">ABOUT</td>
                <td class = "tdtheme" width="15%"><a href ="googlemap.jsp">CONTACT</a></td>
                <td class = "tdtheme" width="15%">SERVICES</td>
                <td class = "tdtheme" width="15%">SOLUTIONS</td>
                <td class = "tdtheme" width="15%">QUERY</td>
                

            </tr>
        </table>
        <hr>
        <hr>
        <img src ="image1.jpg" width = "100%">
        <br><br>
        <%
         Cookie ck[]=request.getCookies();
         String myValue="";
         if(ck!=null)
          {
            for(int i=0;i<ck.length;i++)
            if(ck[i].getName().equals("MVC"))
            myValue=ck[i].getValue();
          }
        %>
        
        <form action ="" method="post">
            
        <table align = "center" cellspacing ="15"  style = "border:inset;border-radius:40px;background-color:rgba(255,255,255,0.5)" width="30%">
            
            <tr align ="center">
                <td style="font-size:30px;background-color:black;border-radius:20px"><font color="white">USER SIGN IN</font></td>
            </tr>
            
            <tr>
                <td>User id</td>
            </tr>
            <tr>
                <td><input type="text" name="useridtext" value="<%=myValue%>" class = "texttheme" placeholder="Enter username"></td>
            </tr>
            <tr>
                <td>Password</td>
            </tr>
            <tr>
                <td><input type="password" name="passwordtext" class = "texttheme" placeholder="Enter password"></td>
            </tr>
            <tr>
                 
                <td><input type = "submit" value = "LOGIN" name="button1" class="btntheme">
                    <a href="userpage.jsp">SIGN UP</a></td>
            </tr>
        </table>
        </form>
    </body>
</html>
