<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BS_NewsContent.aspx.cs" Inherits="testModel01.BackEnd.BS_NewsContent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/BackEndUI.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.9.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>

</head>
<body>
    <form id="form2" runat="server">
        <div class="container-NewsEdit">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tNews] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tNews] ([fDate], [fSubject], [fContent]) VALUES (@fDate, @fSubject, @fContent)" SelectCommand="SELECT * FROM [tNews] WHERE ([fId] = @fId)" UpdateCommand="UPDATE [tNews] SET [fDate] = @fDate, [fSubject] = @fSubject, [fContent] = @fContent WHERE [fId] = @fId">
                <DeleteParameters>
                    <asp:Parameter Name="fId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fDate" Type="String" />
                    <asp:Parameter Name="fSubject" Type="String" />
                    <asp:Parameter Name="fContent" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="fId" QueryStringField="fid" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fDate" Type="String" />
                    <asp:Parameter Name="fSubject" Type="String" />
                    <asp:Parameter Name="fContent" Type="String" />
                    <asp:Parameter Name="fId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:DataList ID="DataList1" runat="server"
                DataKeyField="fId"
                DataSourceID="SqlDataSource2"
                OnEditCommand="DataList1_EditCommand"
                OnCancelCommand="DataList1_CancelCommand"
                OnUpdateCommand="DataList1_UpdateCommand"
                Width="100%">
                <ItemTemplate>
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">編輯中..</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table table-bordered table-condensed" style="width: 100%">
                            <tr>
                                <td class="info text-center h4">
                                    <asp:Label ID="Label5" runat="server" Text="標題" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtSubject" runat="server" Text='<%# Eval("fSubject") %>' CssClass="form-control" Font-Names="微軟正黑體" Font-Size="Medium"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="info text-center h4">
                                    <asp:Label ID="Label6" runat="server" Text="內文" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtContent" runat="server" Text='<%# Eval("fContent") %>' CssClass="form-control" Font-Names="微軟正黑體" Font-Size="Medium" Rows="15" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update" CssClass="btn btn-primary" OnClientClick="return confirm('確定要更新嗎?')">更新</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="cancel" CssClass="btn btn-primary" data-dismiss="modal">取消</asp:LinkButton>
                        <asp:TextBox ID="txtDate" runat="server" Text='<%# Eval("fDate") %>' Visible="False"></asp:TextBox>
                    </div>
                </ItemTemplate>
                <EditItemTemplate>
                </EditItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
