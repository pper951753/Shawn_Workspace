<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BS_收費標準表Content.aspx.cs" Inherits="testModel01.BackEnd.WebForm5" ValidateRequest="false" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/BackEndUI.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.9.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>

    <script src="../ckeditor/ckeditor.js"></script>
</head>
<body>
    <form id="form4" runat="server">
        <div class="container-NewsEdit">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">編輯中..</h4>
            </div>
            <div class="modal-body">
                <table class="table table table-bordered table-condensed" style="width: 100%" runat="server" id="table2">
                    <tr>
                        <td class="info text-center h4">
                            <asp:Label ID="Label1" runat="server" Style="font-family: 微軟正黑體; font-size: large" Text="住  房"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtNo" runat="server" Style="font-family: 微軟正黑體; font-size: large" Width="100%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="info text-center h4">
                            <asp:Label ID="Label2" runat="server" Style="font-family: 微軟正黑體; font-size: large" Text="基本月費（含住房費、水電費、洗衣費、一般伙食費）"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtNo1" runat="server" Style="font-family: 微軟正黑體; font-size: large" Width="100%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="info text-center h4">
                            <asp:Label ID="Label3" runat="server" Style="font-family: 微軟正黑體; font-size: large" Text="特殊照護費"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtNo2" runat="server" Style="font-family: 微軟正黑體; font-size: large" Width="100%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="info text-center h4">
                            <asp:Label ID="Label4" runat="server" Style="font-family: 微軟正黑體; font-size: large" Text="費  用"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtNo3" runat="server" Style="font-family: 微軟正黑體; font-size: large" Width="100%"></asp:TextBox>
                        </td>
                    </tr>
                   
                </table>
            </div>
            <div class="modal-footer">
                <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-primary" OnClick="InsertButton_Click" Text="新增" OnClientClick="return confirm('確定要新增?')" />
                <asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-primary" OnClick="InsertCancelButton_Click" Text="取消" />
            </div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Fees_table_1]" DeleteCommand="DELETE FROM [Fees_table_1] WHERE [id] = @id" InsertCommand="INSERT INTO [Fees_table_1] ([room], [price], [care], [careprice]) VALUES (@room, @price, @care, @careprice)" UpdateCommand="UPDATE [Fees_table_1] SET [room] = @room, [price] = @price, [care] = @care, [careprice] = @careprice WHERE [id] = @id" >
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtNo" Name="room" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtNo1" Name="price" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtNo2" Name="care" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtNo3" Name="careprice" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="room" Type="String" />
                    <asp:Parameter Name="price" Type="String" />
                    <asp:Parameter Name="care" Type="String" />
                    <asp:Parameter Name="careprice" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
