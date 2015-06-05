<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BS_入住事項editAttention.aspx.cs" Inherits="testModel01.BackEnd.BS_入住事項editAttention" ValidateRequest="false" %>

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
    <form id="form3" runat="server">
        <div class="container-NewsEdit">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbKSYYConnectionString %>" DeleteCommand="DELETE FROM [tAttention] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tAttention] ([fNo], [fContent], [fColor]) VALUES (@fNo, @fContent, @fColor)" SelectCommand="SELECT * FROM [tAttention] WHERE ([fId] = @fId)" UpdateCommand="UPDATE [tAttention] SET [fNo] = @fNo, [fContent] = @fContent, [fColor] = @fColor WHERE [fId] = @fId">
                <DeleteParameters>
                    <asp:Parameter Name="fId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fNo" Type="String" />
                    <asp:Parameter Name="fContent" Type="String" />
                    <asp:Parameter Name="fColor" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="fId" QueryStringField="fId" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fNo" Type="String" />
                    <asp:Parameter Name="fContent" Type="String" />
                    <asp:Parameter Name="fColor" Type="Boolean" />
                    <asp:Parameter Name="fId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="fId" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemCommand="FormView1_ItemCommand" OnItemUpdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">編輯中..</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table table-bordered table-condensed" style="width: 100%">
                            <tr>
                                <td class="info text-center h4">
                                    <asp:Label ID="lblSubject" runat="server" Text="編號" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="fSubjectTextBox" runat="server" Text='<%# Bind("fNo") %>' CssClass="form-control" Font-Names="微軟正黑體" Font-Size="Medium" />
                                </td>
                            </tr>
                            <tr>
                                <td class="info text-center h4">
                                    <asp:Label ID="lblContent" runat="server" Text="內文" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
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
                        <asp:LinkButton ID="UpdateButton" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Update" Text="更新" />
                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </div>
                    
                </EditItemTemplate>
                <InsertItemTemplate>
                    fNo:
                <asp:TextBox ID="fNoTextBox" runat="server" Text='<%# Bind("fNo") %>' />
                    <br />
                    fContent:
                <asp:TextBox ID="fContentTextBox" runat="server" Text='<%# Bind("fContent") %>' />
                    <br />
                    fColor:
                <asp:CheckBox ID="fColorCheckBox" runat="server" Checked='<%# Bind("fColor") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    fId:
                <asp:Label ID="fIdLabel" runat="server" Text='<%# Eval("fId") %>' />
                    <br />
                    fNo:
                <asp:Label ID="fNoLabel" runat="server" Text='<%# Bind("fNo") %>' />
                    <br />
                    fContent:
                <asp:Label ID="fContentLabel" runat="server" Text='<%# Bind("fContent") %>' />
                    <br />
                    fColor:
                <asp:CheckBox ID="fColorCheckBox" runat="server" Checked='<%# Bind("fColor") %>' Enabled="false" />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
