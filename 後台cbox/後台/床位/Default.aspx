<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="床位_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 716px;
        }
        .auto-style3 {
            height: 474px;
        }
        .auto-style4 {
            width: 716px;
            height: 474px;
        }
        .auto-style7 {
            width: 119px;
            height: 20px;
        }
        .auto-style9 {
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                          <ContentTemplate>
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style7"></td>
                                    <td class="auto-style7">A</td>
                                    <td class="auto-style7">B</td>
                                    <td class="auto-style7">C</td>
                                    <td class="auto-style7">D</td>
                                    <td class="auto-style7">E</td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">101</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">102</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">103</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder3" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">104</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder4" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">105</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder5" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">106</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder6" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">107</td>
                                    <td class="auto-style9" colspan="5">
                                        <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                            <ContentTemplate>
                                                <asp:PlaceHolder ID="PlaceHolder7" runat="server"></asp:PlaceHolder>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </ContentTemplate>

                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                    </asp:UpdatePanel>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
