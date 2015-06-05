<%@ Page Title="最新消息" Language="C#" MasterPageFile="~/FrontEnd/Site.Master" AutoEventWireup="true" CodeBehind="最新消息.aspx.cs" Inherits="testModel01.WebForm2" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContent" runat="server">

    <form id="form1" runat="server">

    <div class="container">
        <h3 style="font-family: 微軟正黑體">最新消息</h3>
        <hr style="background-color:blue; height:1px"/>
    </div>
    <div class="container ">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="fId" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-hover" AllowPaging="True" PageSize="4" Width="100%">
            <Columns>
                <asp:BoundField DataField="fId" HeaderText="fId" InsertVisible="False" ReadOnly="True" SortExpression="fId" Visible="False" />
                <asp:BoundField DataField="fDate" HeaderText="發布日期" SortExpression="fDate" >
                <HeaderStyle CssClass="info text-center" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large" />
                <ItemStyle CssClass="text-center" Font-Bold="False" Font-Names="微軟正黑體" Font-Size="Medium" />
                </asp:BoundField>
                <asp:BoundField DataField="fSubject" HeaderText="fSubject" SortExpression="fSubject" Visible="False" />
                <asp:BoundField DataField="fContent" HeaderText="fContent" SortExpression="fContent" Visible="False" />
                <asp:HyperLinkField DataNavigateUrlFields="fid" DataTextField="fSubject" HeaderText="檢視內文" DataNavigateUrlFormatString="最新消息內容.aspx?fid={0}" >
                <HeaderStyle CssClass="info text-center" Font-Names="微軟正黑體" Font-Size="Large" />
                <ItemStyle CssClass="text-center" Font-Names="微軟正黑體" Font-Size="Medium" />
                </asp:HyperLinkField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tNews]"></asp:SqlDataSource>
        <hr />
    </div>

    </form>

</asp:Content>
