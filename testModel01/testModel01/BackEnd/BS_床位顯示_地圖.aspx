﻿<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/BS_Site.Master" AutoEventWireup="true" CodeBehind="BS_床位顯示_地圖.aspx.cs" Inherits="testModel01.BackEnd.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BS_HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BS_BodyContent" runat="server">


     <div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
         aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            </div>
        </div>
    </div>
    <!------------------------------------------------------------------------------------------------>
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

 
                                      <asp:HyperLink ID="HyperLink1" runat="server"  
                        NavigateUrl="WebForm6.aspx"
                        Text="123" ToolTip="點我編輯"
                         data-toggle="modal"   data-target="#myModal"></asp:HyperLink>
 
                    <button class="btn" value="123" style="background-color:rgba(100%,100%,100%, 1); 
                        height: 13px; width: 50px;"></button>

                </td>
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

</asp:Content>
