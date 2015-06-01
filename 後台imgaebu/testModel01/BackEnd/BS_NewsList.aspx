<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/BS_Site.Master" AutoEventWireup="true" CodeBehind="BS_NewsList.aspx.cs" Inherits="testModel01.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BS_HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BS_BodyContent" runat="server">
    <div class="">
        
        <br />
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover" DataKeyNames="fId" DataSourceID="SqlDataSource1" Font-Names="微軟正黑體" Width="100%">
            <Columns>
                <asp:BoundField DataField="fId" HeaderText="fId" InsertVisible="False" ReadOnly="True" SortExpression="fId" Visible="False" />
                <asp:BoundField DataField="fDate" HeaderText="發布日期" SortExpression="fDate" >
                <HeaderStyle CssClass="info text-center" Font-Bold="True" Font-Size="Large" />
                <ItemStyle CssClass="text-center" Font-Size="Medium" />
                </asp:BoundField>
                <asp:BoundField DataField="fSubject" HeaderText="fSubject" SortExpression="fSubject" Visible="False" />
                <asp:BoundField DataField="fContent" HeaderText="fContent" SortExpression="fContent" Visible="False" />
                <asp:HyperLinkField DataNavigateUrlFields="fid" DataNavigateUrlFormatString="BS_NewsContent.aspx?fid={0}" DataTextField="fSubject" HeaderText="檢視消息內容" >
                <HeaderStyle CssClass="info text-center" Font-Bold="True" Font-Size="Larger" />
                <ItemStyle CssClass="text-center" Font-Size="Medium" />
                </asp:HyperLinkField>
            </Columns>
        </asp:GridView>
        
        <asp:Label ID="Label3" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="1.發布日期"></asp:Label>
        <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" Font-Names="微軟正黑體" Font-Size="Medium"></asp:TextBox>
        <br />
        
        <asp:Label ID="Label1" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="2.標題"></asp:Label>
        <br />
        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" Font-Names="微軟正黑體" Font-Size="Medium"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" style="font-family: 微軟正黑體; font-size: large" Text="3.內文"></asp:Label>
        <br />
        <asp:TextBox ID="txtContent" runat="server" rows= "10" TextMode="MultiLine" CssClass="form-control" Font-Names="微軟正黑體" Font-Size="Medium"

></asp:TextBox>
        
        <br />
        
        <asp:Button ID="btnInsert" runat="server" CssClass="btn btn-primary btn-lg" OnClick="btnInsert_Click" Text="新增消息公告" OnClientClick="return confirm('確定要新增消息嗎?')" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tNews] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tNews] ([fDate], [fSubject], [fContent]) VALUES (@fDate, @fSubject, @fContent)" SelectCommand="SELECT * FROM [tNews]" UpdateCommand="UPDATE [tNews] SET [fDate] = @fDate, [fSubject] = @fSubject, [fContent] = @fContent WHERE [fId] = @fId">
            <DeleteParameters>
                <asp:Parameter Name="fId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtDate" Name="fDate" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtSubject" Name="fSubject" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtContent" Name="fContent" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fDate" Type="String" />
                <asp:Parameter Name="fSubject" Type="String" />
                <asp:Parameter Name="fContent" Type="String" />
                <asp:Parameter Name="fId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        
    </div>    
</asp:Content>
