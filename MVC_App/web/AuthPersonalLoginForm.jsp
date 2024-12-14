
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%
     int VALUE1=0;
     int VALUE2=0;
     int VALUE3=0;
    
   String btn1=request.getParameter("button1");
   if(btn1!=null && btn1.equals("SIGNIN"))
   {
   
    String id = request.getParameter("userId");
    String pass = request.getParameter("password");
    String postDetail = request.getParameter("post");
    
    if(id.equals(""))
    {
     VALUE1=1;
    }
    else if(pass.equals(""))
    {
     VALUE2=1;
    }
    else
    {
    
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
             VALUE3=1;
           }
           con.close();
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
            <table align ="center" cellspacing ="10" cellpadding ="5" style ="border:inset;border-radius:40px;border-color:red">
            <tr align = "center" bgcolor = "lightblue">
                <td colspan ="3"> AUTHORIZED PERSON SIGN IN</td>
            </tr>
            <tr>
                <td colspan="2">
                    <%
                      if(btn1!=null && VALUE3==1)
                      {
                       %>
                         <font color="red">invalid id/password</font>
                       <%}

                       else if(btn1!=null && VALUE1==1)
                      {%>
                            <font color="red">id is required</font>
                      <%}

                      else if(btn1!=null && VALUE2==1)
                      {%>
                            <font color="red">password  is required</font>
                      <%}%>
                </td>
            </tr>
            <tr>
                <td>Id</td>
                <td><input type="text" name="userId" value="<%=myValue%>" class = "texttheme" placeholder="Enter id here"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" class = "texttheme"placeholder="Enter password here"></td>
            </tr>
            
            <tr align ="center">
                
                <td colspan ="2">
               
                    <select name="post">
                        <option>select post</option>
                        <option>ADMIN</option>
                        <option>OPERATOR</option>
                    </select>
                </td>
           
            </tr>
                <tr align ="center">
                <td colspan ="2">
                
                <input type = "submit" value = "SIGNIN" name="button1" class="btntheme">
                <input type = "reset" value = "CLEAR" class="signintheme"></td>
            </tr>
        </table>
        </form>
        </body>
</html>