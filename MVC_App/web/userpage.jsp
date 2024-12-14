


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
            <tr align = "center"bgcolor = "lightblue">
                <td class = "tdtheme" width="15%"><a href="homepage.jsp">HOME</a></td>
                <td class = "tdtheme" width="15%">ABOUT</td>
                <td class = "tdtheme" width="15%"><a href ="googlemap.jsp">CONTACT</a></td>
                <td class = "tdtheme" width="15%"><a href ="services.jsp">SERVICES</a></td>
                <td class = "tdtheme" width="15%">SOLUTIONS</td>
                <td class = "tdtheme" width="15%">QUERY</td>
                <td class = "tdtheme" width="15%">CAREER</td>

            </tr>
        </table>
        <hr>
        <hr>
        <img src ="image1.jpg" width = "100%">
        <br><br>
        
        
        <!--<form action="newuser.jsp">-->
         <form action ="userpageLogicalCode.jsp">   
        <table align = "center" cellspacing ="15" style = "border:inset;border-radius:40px">
            
            <tr bgground="white"ALIGN="CENTER">
                <td colspan="4">USER SIGN UP</td>
            </tr>
            <tr>
                <td>User id</td>
                <td><input type="text" name="useridtext" class = "texttheme" placeholder="Enter username"></td>
                
                <td>Full Name</td>
                <td><input type="text" name="fullnametext" class = "texttheme"></td>
                
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="passwordtext" class = "texttheme"placeholder="Enter password"></td>
                
                <td>Contact</td>
                <td><input type="number" name="contacttext" class = "texttheme"></td>
           
            </tr>
            
            <tr>
                <td>Address</td>
                <td><textarea name="addresstext" class = "textareatheme"></textarea></td>
                
                <td>City</td>
                <td><select name="citytext" class = "texttheme">
                        <option>select city</option>
                        <option>indore</option>
                        <option>bhopal</option>
                        <option>ujjain</option>
                    </select>
                </td>
           
            </tr>
                <tr align ="center">
                <td colspan ="3">
                
                <td><input type = "submit" value = "SIGNUP" class="signintheme">
                <input type = "reset" value = "CLEAR" class="signintheme"></td>
            </tr>
        </table>
        </form>
    </body>
</html>