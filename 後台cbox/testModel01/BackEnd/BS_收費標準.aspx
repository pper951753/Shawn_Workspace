<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/BS_Site.Master" AutoEventWireup="true" CodeBehind="BS_收費標準.aspx.cs" Inherits="testModel01.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BS_HeadContent" runat="server">
    <p style="color: #0000CC; font-size: xx-large">
    <strong>收費標準表</strong></p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BS_BodyContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" Height="344px" Width="727px" AutoGenerateColumns="False" CssClass="table" DataKeyNames="room" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="room" HeaderText="住  房" ReadOnly="True" SortExpression="room">
            <FooterStyle Font-Size="Medium" Width="40px" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="基本月費（含住房費、水電費、洗衣費、一般伙食費）" SortExpression="price">
            <FooterStyle Font-Size="Medium" Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="care" HeaderText="特殊照護費" SortExpression="care">
            <FooterStyle Font-Size="Medium" Height="400px" />
            </asp:BoundField>
            <asp:BoundField DataField="careprice" HeaderText="費用" SortExpression="careprice">
            <FooterStyle Font-Size="Medium" Height="170px" />
            </asp:BoundField>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Fees_table_1]" DeleteCommand="DELETE FROM [Fees_table_1] WHERE [room] = @room" InsertCommand="INSERT INTO [Fees_table_1] ([room], [price], [care], [careprice]) VALUES (@room, @price, @care, @careprice)" UpdateCommand="UPDATE [Fees_table_1] SET [price] = @price, [care] = @care, [careprice] = @careprice WHERE [room] = @room">
    <DeleteParameters>
        <asp:Parameter Name="room" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="room" Type="String" />
        <asp:Parameter Name="price" Type="String" />
        <asp:Parameter Name="care" Type="String" />
        <asp:Parameter Name="careprice" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="price" Type="String" />
        <asp:Parameter Name="care" Type="String" />
        <asp:Parameter Name="careprice" Type="String" />
        <asp:Parameter Name="room" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
