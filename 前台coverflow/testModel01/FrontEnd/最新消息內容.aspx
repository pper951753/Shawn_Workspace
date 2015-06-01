<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd/Site.Master" AutoEventWireup="true" CodeBehind="最新消息內容.aspx.cs" Inherits="testModel01.WebForm14" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <form id="form1" runat="server">
        <div class="container">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tNews] WHERE ([fId] = @fId)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="fId" QueryStringField="fid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="fId" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <table class="table table-bordered table-condensed">
                        <tr>
                            <td class="info text-center h4">
                                <asp:Label ID="Label3" runat="server" Text="標題" Font-Bold="True" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">
                                <asp:Label ID="fSubjectLabel" runat="server" Text='<%# Eval("fSubject") %>' Font-Size="Medium" />
                            </td>
                        </tr>
                        <tr>
                            <td class="info text-center h4">
                                <asp:Label ID="Label4" runat="server" Text="內文" Font-Bold="True" Font-Size="Large"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="container">
                                    <asp:Label ID="fContentLabel" runat="server" Text='<%# Eval("fContent") %>' Font-Size="Medium" />
                                    <asp:Label ID="fDateLabel" runat="server" Text='<%# Eval("fDate") %>' CssClass=" pull-right text-muted" Font-Size="Small" />
                                </div>


                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="fIdLabel" runat="server" Text='<%# Eval("fId") %>' Visible="False" />                    
                </ItemTemplate>
            </asp:DataList>
            <br />
        </div>
    </form>
</asp:Content>
