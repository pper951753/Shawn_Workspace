<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="床位.aspx.cs" Inherits="testModel01.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 850px;
        }

        .auto-style3 {
            height: 474px;
        }

        .auto-style4 {
            width: 850px;
            height: 474px;
        }

        .auto-style7 {
            width: 119px;
            height: 20px;
            text-align: center;
        }

        .auto-style9 {
            height: 50px;
        }
        .auto-style10 {
            width: 100px;
            height: 20px;
        }
        .auto-style11 {
            height: 50px;
            width: 100px;
        }
        .auto-style12 {
            width: 100px;
        }
        .auto-style13 {
            width: 170px;
            height: 20px;
            text-align: center;
        }
        .auto-style14 {
            width: 200px;
        }
        .auto-style15 {
            height: 474px;
            width: 200px;
        }
        .auto-style16 {
            width: 850px;
        }
        .auto-style17 {
            height: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style4">
                    <div>
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style10"></td>
                                    <td class="auto-style13">A</td>
                                    <td class="auto-style17">B</td>
                                    <td class="auto-style17">C</td>
                                    <td class="auto-style17">D</td>
                                    <td class="auto-style7">E</td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">101</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">102</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">103</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder3" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">104</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder4" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">105</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder5" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">106</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder6" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style11">107</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder7" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style12">&nbsp;</td>
                                </tr>
                            </table>
                        </div>

                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">
                    <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                    </asp:UpdatePanel>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>

</html>
