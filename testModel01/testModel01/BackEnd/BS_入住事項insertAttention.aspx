<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BS_入住事項insertAttention.aspx.cs" Inherits="testModel01.BackEnd.WebForm3" ValidateRequest="false" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                <h4 class="modal-title" id="myModalLabel">新增中..</h4>
            </div>
            <div class="modal-body">
                <table class="table table table-bordered table-condensed" style="width: 100%" runat="server" id="table1">
                    <tr>
                        <td class="info text-center h4">
                            <asp:Label ID="Label1" runat="server" Style="font-family: 微軟正黑體; font-size: large" Text="1.編號"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtNo" runat="server" Style="font-family: 微軟正黑體; font-size: large" Width="100%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="info text-center h4">
                            <asp:Label ID="Label2" runat="server" Style="font-family: 微軟正黑體; font-size: large" Text="2.內容"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox name="fContentTextBox" ID="fContentTextBox" runat="server" Text='<%# Bind("fContent") %>' TextMode="MultiLine" Font-Names="微軟正黑體" Font-Size="Medium" Rows="15" />
                            <asp:Literal runat="server" ID="fContentTextBoxJavascript" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="modal-footer">
                <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-primary" OnClick="InsertButton_Click" Text="新增" OnClientClick="return confirm('確定要新增?')" />
                <asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-primary" OnClick="InsertCancelButton_Click" Text="取消" />
            </div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbKSYYConnectionString %>" DeleteCommand="DELETE FROM [tAttention] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tAttention] ([fNo], [fContent]) VALUES (@fNo, @fContent)" SelectCommand="SELECT * FROM [tAttention]" UpdateCommand="UPDATE [tAttention] SET [fNo] = @fNo, [fContent] = @fContent, [fColor] = @fColor WHERE [fId] = @fId">
                <DeleteParameters>
                    <asp:Parameter Name="fId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtNo" Name="fNo" PropertyName="text" Type="String" />
                    <asp:ControlParameter ControlID="fContentTextBox" Name="fContent" PropertyName="text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fNo" Type="String" />
                    <asp:Parameter Name="fContent" Type="String" />
                    <asp:Parameter Name="fColor" Type="Boolean" />
                    <asp:Parameter Name="fId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
