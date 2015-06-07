<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="testModel01.pic.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.9.1.js"></script>

      <script type="text/Javascript">
          $(function() {
              $("a").onclick(
                  function () {
                      var path1 = $("img", this).attr("src");
                      $("#img1").attr({ "src": $("img", this).attr("src") });
                  });
          });

  </script>
</head>
<body>
    <form id="form1" runat="server">

<a id="img2" >        
            <img src="ADD.png" />
        </a>

        
        <br/><br/>
        <img id="img1" src="Cancel32x32.png" />

    </form>
</body>
</html>
