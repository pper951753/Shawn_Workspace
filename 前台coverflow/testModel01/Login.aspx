<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="testModel01.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/loginBackground.css" rel="stylesheet" />
    <link href="Content/loginUI01.css" rel="stylesheet" />
    <link href="Content/loginUI02.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/loginBackground.js"></script>    
</head>
<body>
    <div id="wrap">
        <img class="bgfade" src="loginImg/1.jpg">
        <img class="bgfade" src="loginImg/2.jpg">
        <img class="bgfade" src="loginImg/3.jpg">
        <img class="bgfade" src="loginImg/4.jpg">
        <img class="bgfade" src="loginImg/5.jpg">
    </div>
    <div class="container">
        <form class="form-signin" role="form">
            <h4 class="form-signin-heading">請輸入帳號及密碼登入</h4>
            <label for="inputAccount" class="sr-only">帳號</label>
            <input type="text" id="inputAccount" class="form-control" placeholder="帳號" required="" autofocus="">
            <label for="inputPassword" class="sr-only">密碼</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="密碼" required=""><div class="checkbox">
                <label>
                    <input type="checkbox" value="remember-me">
                    記住我
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">登入</button>
        </form>
    </div>
</body>
</html>
