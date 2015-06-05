<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BS_NewsContent.aspx.cs" Inherits="testModel01.BackEnd.BS_NewsContent" ValidateRequest="false" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/BackEndUI.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.9.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>

    <script src="../ckeditor/ckeditor.js"></script>

</head>
<body>
    <form id="form2" runat="server">
        <div class="container-NewsEdit">
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
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="fId" DataSourceID="SqlDataSource1" DefaultMode="Edit" Width="100%" OnItemCommand="FormView1_ItemCommand" OnItemUpdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">編輯中..</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table table-bordered table-condensed" style="width: 100%">
                            <tr>
                                <td class="info text-center h4">
                                    <asp:Label ID="lblSubject" runat="server" Text="標題" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="fSubjectTextBox" runat="server" Text='<%# Bind("fSubject") %>' CssClass="form-control" Font-Names="微軟正黑體" Font-Size="Medium" />
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
                    <asp:Label ID="fIdLabel1" runat="server" Text='<%# Eval("fId") %>' Visible="False" />
                    <asp:TextBox ID="fDateTextBox" runat="server" Text='<%# Bind("fDate") %>' Visible="False" />
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
                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    fId:
                    <asp:Label ID="fIdLabel" runat="server" Text='<%# Eval("fId") %>' />
                    <br />
                    fDate:
                    <asp:Label ID="fDateLabel" runat="server" Text='<%# Bind("fDate") %>' />
                    <br />
                    fSubject:
                    <asp:Label ID="fSubjectLabel" runat="server" Text='<%# Bind("fSubject") %>' />
                    <br />
                    fContent:
                    <asp:Label ID="fContentLabel" runat="server" Text='<%# Bind("fContent") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                    <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
