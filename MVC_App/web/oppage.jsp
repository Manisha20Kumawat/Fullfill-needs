<%@include  file="SecurityGuard.jsp" %>
<!--<%
    if(session == null)
    {
     response.sendRedirect("AuthPersonalLoginForm.jsp");
    }
%>-->
    
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
        
      
     </body>
</html>
  