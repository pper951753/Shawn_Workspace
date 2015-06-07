﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="testModel01.BackEnd.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.9.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <script type="text/javascript">
        $(document).ready(
            function ()
            {
                $("button").click(
                    $("#GridView1").attr({ "DataSource": $("#GridView2").attr("DataSource") })
                      )
            }

            )
        

    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();

            $("a").click(
         function afunction() {
             var path1 = $("img", this).attr("src")
             $("#img1").attr({ "src": path1 })
             return false;
         })
        });
</script>
</head>
<body>
    <form id="form1" runat="server">
  
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <!-- Button trigger modal -->
        
         <asp:GridView ID="GridView2" runat="server"></asp:GridView>
           <asp:GridView ID="GridView1" runat="server"></asp:GridView>

<button type="button" 
    class="btn btn-primary btn-lg" 
      >
  按鈕一
</button>
        <br/>

        <br/>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

    <asp:Button ID="Button1" runat="server" Text="按鈕2" 
   data-toggle="modal" data-target="#myModal" OnClick="Button1_Click" 
    />
    </ContentTemplate>
</asp:UpdatePanel>

<!-- Modal -->
       
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;s;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">抬頭</h4>
      </div>
      <div class="modal-body">
     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

        <!--
         <div style="width: 1235px; height: 847px; margin: 0 auto 0 auto">
        <table class="nav-justified" style="background-image: url(../pic/床位_地圖85趴.jpg); width: 100%">
            <tr>
                <td style="height: 35px; width: 108px;"></td>
                <td style="height: 35px; " colspan="2"></td>
                <td style="height: 35px; width: 88px;"></td>
                <td style="height: 35px; width: 88px;"></td>
                <td style="height: 35px; width: 88px;"></td>
                <td style="height: 35px; " colspan="2"></td>
                <td style="height: 35px; " colspan="2"></td>
                <td style="height: 35px; width: 88px;"></td>
                <td style="height: 35px; width: 88px;"></td>
                <td style="height: 35px; width: 88px;"></td>
                <td style="height: 35px; width: 88px;"></td>
                <td style="height: 35px; width: 88px;"></td>
                <td style="height: 35px; width: 88px;"></td>
                <td style="height: 35px"></td>
            </tr>
            <tr>
                <td style="height: 45px; width: 108px;"></td>
                <td style="height: 45px; " colspan="2">
                <button class="btn" value="123" style="background-color:rgba(100%,100%,100%, 1); height: 13px; width: 50px;"></button></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; " colspan="2"></td>
                <td style="height: 45px; " colspan="2"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px"></td>
            </tr>
            <tr>
                <td style="height: 45px; width: 108px;"></td>
                <td style="height: 45px; " colspan="2">45X88</td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; " colspan="2"></td>
                <td style="height: 45px; " colspan="2"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px"></td>
            </tr>
            <tr>
                <td style="height: 45px; width: 108px;"></td>
                <td style="height: 45px; " colspan="2">45X88</td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; " colspan="2"></td>
                <td style="height: 45px; " colspan="2"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px"></td>
            </tr>
            <tr>
                <td style="height: 61px; width: 108px;"></td>
                <td style="height: 61px; " colspan="2"></td>
                <td style="height: 61px; width: 88px;"></td>
                <td style="height: 61px; width: 88px;"></td>
                <td style="height: 61px; width: 88px;"></td>
                <td style="height: 61px; " colspan="2"></td>
                <td style="height: 61px; " colspan="2"></td>
                <td style="height: 61px; width: 88px;"></td>
                <td style="height: 61px; width: 88px;"></td>
                <td style="height: 61px; width: 88px;"></td>
                <td style="height: 61px; width: 88px;"></td>
                <td style="height: 61px; width: 88px;"></td>
                <td style="height: 61px; width: 88px;"></td>
                <td style="height: 61px"></td>
            </tr>
            <tr>
                <td style="height: 45px; width: 108px;"></td>
                <td style="width: 62px;" rowspan="2">62*90</td>
                <td style="width: 24px;" rowspan="2"></td>
                <td style="height: 45px; width: 88px;">45/88</td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; " colspan="2"></td>
                <td style="height: 45px; " colspan="2"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px"></td>
            </tr>
            <tr>
                <td style="height: 45px; width: 108px;"></td>
                <td style="height: 45px; width: 88px;">45*88</td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; " colspan="2"></td>
                <td style="height: 45px; " colspan="2"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;">這裡沒有XX</td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px; width: 88px;">儲藏室</td>
                <td style="height: 45px"></td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 108px; height: 45px;"></td>
                <td style="height: 45px; " colspan="2"></td>
                <td style="width: 88px; height: 45px"></td>
                <td style="width: 88px; height: 45px;"></td>
                <td style="width: 88px; height: 45px"></td>
                <td style="height: 45px" colspan="2"></td>
                <td style="height: 45px" colspan="2">45*88</td>
                <td style="width: 88px; height: 45px"></td>
                <td style="width: 88px; height: 45px"></td>
                <td style="width: 88px; height: 45px">&nbsp;</td>
                <td style="width: 88px; height: 45px"></td>
                <td style="width: 88px; height: 45px"></td>
                <td style="height: 45px; width: 88px;"></td>
                <td style="height: 45px"></td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 108px; height: 117px;"></td>
                <td style="height: 117px;" colspan="2"></td>
                <td style="width: 88px; height: 117px;"></td>
                <td style="width: 88px; height: 117px;"></td>
                <td style="width: 88px; height: 117px"></td>
                <td style="height: 117px" colspan="2"></td>
                <td style="height: 117px" colspan="2"></td>
                <td style="width: 88px; height: 117px"></td>
                <td style="width: 88px; height: 117px"></td>
                <td style="width: 88px; height: 117px"></td>
                <td style="width: 88px; height: 117px"></td>
                <td style="width: 88px; height: 117px"></td>
                <td style="height: 117px; width: 88px;"></td>
                <td style="height: 117px"></td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 108px; height: 88px;"></td>
                <td colspan="2" style="height: 88px"></td>
                <td style="width: 88px; height: 88px;"></td>
                <td style="width: 88px; height: 88px;"></td>
                <td style="width: 88px; height: 88px;"></td>
                <td style="width: 38px; height: 88px;"></td>
                <td style="width: 50px; height: 88px;">50*88</td>
                <td style="width: 38px; height: 88px;"></td>
                <td style="width: 50px; height: 88px;">50*88</td>
                <td style="width: 88px; height: 88px;"></td>
                <td style="width: 88px; height: 88px;"></td>
                <td style="height: 88px" colspan="2">
                    <table class="nav-justified">
                        <tr>
                            <td rowspan="3"></td>
                            <td rowspan="3"></td>
                            <td style="height: 6px"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td style="width: 88px; height: 88px;"></td>
                <td style="width: 88px; height: 88px;"></td>
                <td style="height: 88px"></td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 108px; height: 166px;"></td>
                <td style="height: 166px;" colspan="2"></td>
                <td style="width: 88px; height: 166px;"></td>
                <td style="width: 88px; height: 166px;"></td>
                <td style="width: 88px; height: 166px"></td>
                <td style="height: 166px" colspan="2"></td>
                <td style="height: 166px" colspan="2"></td>
                <td style="width: 88px; height: 166px"></td>
                <td style="width: 88px; height: 166px"></td>
                <td style="width: 88px; height: 166px"></td>
                <td style="width: 88px; height: 166px"></td>
                <td style="width: 88px; height: 166px"></td>
                <td style="height: 166px; width: 88px;"></td>
                <td style="height: 166px">&nbsp;</td>
            </tr>
        </table>
    </div>
        -->

    </form>
</body>
</html>
