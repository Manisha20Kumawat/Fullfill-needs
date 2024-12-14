<%@include  file="SecurityGuard.jsp" %>
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
                <td class = "tdtheme" width="15%"><a href="viewallcomplain.jsp">COMPLAIN</a></td>
                <td class = "tdtheme" width="15%"><a href="contact.jsp">MAIL</a></td>
                <td class = "tdtheme" width="15%"><a href="viewallfeedback.jsp">FEEDBACK</a></td>
                <td class = "tdtheme" width="15%"><a href="viewallentry.jsp">ENTRY</a></td>
                <td class = "tdtheme" width="15%"><a href="PasswordSetting.jsp">SETTING</a></td>
                <td class = "tdtheme" width="15%"><a href="destroysession.jsp">LOGOUT</a></td>
                

            </tr>
        </table>
        
      <%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import ="java.util.ArrayList"%>
<%
     Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","manisha");
           PreparedStatement st = con.prepareStatement("select * from productinfo");
           
  ResultSet rs = st.executeQuery();
  
ArrayList list1 = new ArrayList();
ArrayList list2 = new ArrayList();
ArrayList list3 = new ArrayList();
ArrayList list4 = new ArrayList();
ArrayList list5 = new ArrayList();
ArrayList list6 = new ArrayList();

while(rs.next())
{
 list1.add(rs.getString(1));
 list2.add(rs.getString(2));
 list3.add(rs.getString(3));
 list4.add(rs.getString(4));
 list5.add(rs.getString(5));
 list6.add(rs.getString(6));
}
%>
<br><br>

<table width ="80%"align ="center">
    <tr bgcolor ="lightblue">
        <td>Username</td>
        <td>Password</td>
        <td>Product_id</td>
        <td>Product_Name</td>
        <td>Product_price</td>
        <td>Product_Details</td>
    </tr>
    <% 
        for(int i=0;i<list1.size();i++)
        {
        %>
        <tr>
            <td><%=list1.get(i)%></td>
            <td><%=list2.get(i)%></td>
            <td><%=list3.get(i)%></td>
            <td><%=list4.get(i)%></td>
            <td><%=list5.get(i)%></td>
            <td><%=list6.get(i)%></td>
        </tr>
        <%}%>
    }
</table>
    
    <h2>DELETE RECORD</h2>
    <form action="Deleteentry.jsp">
        Select Username 
        <tr align="center">
        <select name ="combo">
            <option>select user</option>
            <%for(int i=0;i<list1.size();i++)
            {%>
            <option><%=list1.get(i)%></option>
            <%}%>
        </select>
        <input type ="submit" value ="DELETE">
        </tr>
    </form>
     </body>
</html>
  