
<html>
<script>
    function  test()
    {
        if(frm.userId.value==0)
            alert("id is required");
        if(frm.pass.value==0)
            alert("password  is required");
    }
</script>

<body>
<form name="frm">
<input type="text"  name="userId">
<input type="password" name="pass">
<input type="submit" value="signin"  onClick="test()">
</form>
    </body>
    </html>