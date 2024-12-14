
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
                
            </tr>
        </table>
        <hr>
        <hr>
        <img src ="image1.jpg" width = "100%">
        <br><br>
        
                
        <form action ="loginpage.jsp">
        <table align = "center" cellspacing ="15"  style = "border:inset;border-radius:40px;background-color:rgba(255,255,255,0.5)" width="30%">
            
            <tr align ="center">
                <td class ="tdtheme" bgcolor="pink"><a href="loginpage.jsp">CHARITY</a></td>
                <td class ="tdtheme" bgcolor="pink"><a href="loginpage.jsp">BORROW</a></td>
            </tr>
            <tr align ="center">
                <td class ="tdtheme" bgcolor="pink"><a href="loginpage.jsp">SELL</a></td>
                <td class ="tdtheme" bgcolor="pink"><a href="loginpage.jsp">LOAN</a></td>
            </tr>
            <!--<tr align ="center">
                <td style="font-size:30px;background-color:black;border-radius:20px"><font color="white">USER SIGN IN</font></td>
            </tr>-->
            
        </table>
        </form>
    </body>
</html>