<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd/Site.Master" AutoEventWireup="true" CodeBehind="最新消息內容.aspx.cs" Inherits="testModel01.WebForm14" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <form id="form1" runat="server">
        <div class="container">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tNews] WHERE ([fId] = @fId)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="fId" QueryStringField="fid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" CssClass="table" DataKeyNames="fId" DataSourceID="SqlDataSource1" Font-Names="微軟正黑體">
                <EditItemTemplate>
                    fId:
                    <asp:Label ID="fIdLabel1" runat="server" Text='<%# Eval("fId") %>' />
                    <br />
                    fDate:
                    <asp:TextBox ID="fDateTextBox" runat="server" Text='<%# Bind("fDate") %>' />
                    <br />
                    fSubject:
                    <asp:TextBox ID="fSubjectTextBox" runat="server" Text='<%# Bind("fSubject") %>' />
                    <br />
                    fContent:
                    <asp:TextBox ID="fContentTextBox" runat="server" Text='<%# Bind("fContent") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
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
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="內文"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="container">
                                    <asp:Label ID="fContentLabel" runat="server" Text='<%# Bind("fContent") %>' Font-Size="Medium" />                                    
                                </div>
                                <div class="container text-right text-muted">
                                    <asp:Label ID="fDateLabel" runat="server" Font-Size="Small" Text='<%# Bind("fDate") %>'/>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="fIdLabel" runat="server" Text='<%# Eval("fId") %>' Visible="False" />


                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</asp:Content>
