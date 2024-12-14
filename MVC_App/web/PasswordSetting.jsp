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
        
        
        <form action ="passcode.jsp">
        <table width = "100%" class="mytheme" style="box-shadow: 10px 10px 10px  #FFFFFF;margin-top:-10px">
            <tr align = "center" bgcolor = "lightblue">
                <td class = "tdtheme" width="15%"><a href="homepage.jsp">HOME</a></td>
                <td class = "tdtheme" width="15%">ABOUT</td>
                <td class = "tdtheme" width="15%"><a href ="googlemap.jsp">CONTACT</a></td>
                <td class = "tdtheme" width="15%">SERVICES</td>
                <td class = "tdtheme" width="15%">SOLUTIONS</td>
                <td class = "tdtheme" width="15%">QUERY</td>
                <td class = "tdtheme" width="15%"><a href="PasswordSetting.jsp">SETTING</a></td>
                

            </tr>
        </table>
        <hr>
        <hr>
        <img src ="image1.jpg" width = "100%">
        <br><br>
        <table align = "center" cellspacing ="15"  style = "border:inset;border-radius:40px;background-color:rgba(255,255,255,0.5)" width="30%">
            
            <tr align ="center">
                <td style="font-size:30px;background-color:black;border-radius:20px"><font color="white">CHANGE THE PASSWORD</font></td>
            </tr>
            <tr>
                <td>User id</td>
            </tr>
            <tr>
                <td><input type="text"  name ="userId" class = "texttheme" placeholder="Enter username" ></td>
            </tr>
            <tr>
                <td> Old Password</td>
            </tr>
            <tr>
                <td><input type="password" name ="oldpassword"  class = "texttheme" placeholder="Enter password"></td>
            </tr>
             <tr>
                <td> New Password</td>
            </tr>
            <tr>
                <td><input type="password" name ="newpassword"  class = "texttheme" placeholder="Enter password"></td>
            </tr>
             <tr>
                <td> Confirm New Password</td>
            </tr>
            <tr>
                <td><input type="password" name ="cnewpassword"  class = "texttheme" placeholder="Enter password"></td>
            </tr>
            <tr>
                <td><input type = "submit" value = "CHANGE" class="signintheme" name ="button2-signin"></td>
            </tr>
        </table>
        </form>
    </body>
</html>
