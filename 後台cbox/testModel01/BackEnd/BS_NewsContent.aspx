<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BS_NewsContent.aspx.cs" Inherits="BS_NewsContent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="">

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tNews] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tNews] ([fDate], [fSubject], [fContent]) VALUES (@fDate, @fSubject, @fContent)" SelectCommand="SELECT * FROM [tNews] WHERE ([fId] = @fId)" UpdateCommand="UPDATE [tNews] SET [fDate] = @fDate, [fSubject] = @fSubject, [fContent] = @fContent WHERE [fId] = @fId">
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
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="fId" DataSourceID="SqlDataSource1" CssClass="table" Font-Names="微軟正黑體">
                <EditItemTemplate>
                    <table class="table">
                        <tr>
                            <td class="info text-center h4">
                                <asp:Label ID="Label3" runat="server" Text="標題" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="fSubjectTextBox" runat="server" Text='<%# Bind("fSubject") %>' CssClass="form-control" Width="100%" Font-Names="微軟正黑體" Font-Size="Medium"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="info text-center h4">
                                <asp:Label ID="Label4" runat="server" Text="內文" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="fContentTextBox" runat="server" Text='<%# Bind("fContent") %>' rows= "15" TextMode="MultiLine" CssClass="form-control" Width="100%" Font-Names="微軟正黑體" Font-Size="Medium" />
                            </td>
                        </tr>
                    </table>
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-primary btn-sm" Text="更新" Font-Names="微軟正黑體" Font-Size="Medium" OnClientClick="return confirm('確定要更新嗎?')" />
                    &nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-primary btn-sm" Text="取消" Font-Names="微軟正黑體" Font-Size="Medium" />
                    <br />
                <asp:Label ID="fIdLabel1" runat="server" Text='<%# Eval("fId") %>' Visible="False" />
                    <br />
                    &nbsp;<asp:TextBox ID="fDateTextBox" runat="server" Text='<%# Bind("fDate") %>' Visible="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    fDate:
                <asp:TextBox ID="fDateTextBox" runat="server" Text='<%# Bind("fDate") %>' />
                    <br />
                    fSubject:
                <asp:TextBox ID="fSubjectTextBox" runat="server" Text='<%# Bind("fSubject") %>' />
                    <br />
                    fContent:
                <asp:TextBox ID="fContentTextBox" runat="server" Text='<%# Bind("fContent") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table class="table table-bordered table-condensed">
                        <tr>
                            <td class="info text-center h4">
                                <asp:Label ID="Label1" runat="server" Text="標題" Font-Bold="True" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">
                                <asp:Label ID="fSubjectLabel" runat="server" Text='<%# Bind("fSubject") %>' Font-Size="Medium" />
                            </td>
                        </tr>
                        <tr>
                            <td class="info text-center h4">
                                <asp:Label ID="Label2" runat="server" Text="內文" Font-Bold="True" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="container">
                                    <asp:Label ID="fContentLabel" runat="server" Text='<%# Bind("fContent") %>' Font-Size="Medium" />
                                </div>
                                <div class="container text-right text-muted">
                                    <asp:Label ID="fDateLabel" runat="server" Text='<%# Bind("fDate") %>' Font-Size="Small" />
                                </div>
                            </td>
                        </tr>
                    </table>
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯消息" CssClass="btn btn-primary btn-sm" Font-Size="Medium" />
                    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="BS_NewsList.aspx" CssClass="btn btn-primary btn-sm" Font-Size="Medium">返回消息列表頁面</asp:LinkButton>
                    <asp:Label ID="fIdLabel" runat="server" Text='<%# Eval("fId") %>' Visible="False" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" Visible="False" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" Visible="False" />
                </ItemTemplate>
            </asp:FormView>

        </div>
    </form>
</body>
</html>
