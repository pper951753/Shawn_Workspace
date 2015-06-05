<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/BS_Site.Master" AutoEventWireup="true" CodeBehind="BS_收費標準表.aspx.cs" Inherits="testModel01.WebForm12" ValidateRequest="false" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BS_HeadContent" runat="server">
    <p style="color: #0000CC; font-size: xx-large">
        <strong>收費標準表</strong>
    </p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BS_BodyContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="100%" >
        <Columns>
            
            <asp:BoundField DataField="room" HeaderText="住  房" ReadOnly="True" SortExpression="room">
            <HeaderStyle CssClass="info text-center" Font-Size="Medium" />
            <ItemStyle CssClass="text-center" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="基本月費（含住房費、水電費、洗衣費、一般伙食費）" SortExpression="price">
            <HeaderStyle CssClass="info text-center" Font-Size="Medium" />
            <ItemStyle CssClass="text-center" />
            </asp:BoundField>
            <asp:BoundField DataField="care" HeaderText="特殊照護費" SortExpression="care">
            <HeaderStyle CssClass="info text-center" Font-Size="Medium" />
            <ItemStyle CssClass="text-center" />
            </asp:BoundField>
            <asp:BoundField DataField="careprice" HeaderText="費  用" SortExpression="careprice">
            <HeaderStyle CssClass="info text-center" Font-Size="Medium" />
            <ItemStyle CssClass="text-center" />
            </asp:BoundField>
            

            <asp:TemplateField HeaderText="修改">
                    <HeaderStyle CssClass="info text-center" Font-Bold="True" Font-Size="Larger" />
                    <ItemStyle CssClass="text-center" Font-Size="Medium" />
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("room", "BS_收費標準表Content.aspx?room={0}") %>' Text='<%# Eval("room") %>' ImageUrl="~/pic/reverse32x32.png" ToolTip="點我修改" data-toggle="modal" data-target="#myModal"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="刪除">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Delete" OnClientClick="return confirm('確認刪除？')" ImageUrl="~/pic/delete32x32.png"  ToolTip="點我刪除" />
                </ItemTemplate>
                <HeaderStyle CssClass="info text-center" Font-Size="Medium" />
                <ItemStyle CssClass="text-center" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <a href="BS_收費標準表Content.aspx" role="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalinsert">新增</a>
    <div class="modal fade" id="myModalinsert" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Fees_table_1]" DeleteCommand="DELETE FROM [Fees_table_1] WHERE [id] = @id" InsertCommand="INSERT INTO [Fees_table_1] ([room], [price], [care], [careprice]) VALUES (@room, @price, @care, @careprice)" UpdateCommand="UPDATE [Fees_table_1] SET [room] = @room, [price] = @price, [care] = @care, [careprice] = @careprice WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="room" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="care" Type="String" />
            <asp:Parameter Name="careprice" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="room" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="care" Type="String" />
            <asp:Parameter Name="careprice" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [note] WHERE [Id] = @Id" InsertCommand="INSERT INTO [note] ([content]) VALUES (@content)" SelectCommand="SELECT * FROM [note]" UpdateCommand="UPDATE [note] SET [content] = @content WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="CKEditorControl2" Name="content" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="content" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover" DataKeyNames="Id" DataSourceID="SqlDataSource2" OnRowEditing="GridView2_RowEditing" OnRowUpdated="GridView2_RowUpdated" OnRowUpdating="GridView2_RowUpdating" Width="100%">
        <Columns>
            <asp:TemplateField HeaderText="備註">
                <ItemTemplate>
                    <asp:Label ID="lb1" runat="server"  Text='<%#Bind("content") %>'></asp:Label>               
                         </ItemTemplate>
                <EditItemTemplate>
                    
                    <CKEditor:CKEditorControl ID="description" runat="server" Text='<%#Bind("content") %>'>'</CKEditor:CKEditorControl>
                </EditItemTemplate>
                
                <FooterStyle BackColor="#D7EBF7" />
                <HeaderStyle Font-Size="Medium" CssClass="info text-center" />
                
                <ItemStyle Font-Size="Medium" />
                
            </asp:TemplateField>

            <asp:CommandField ButtonType="Image" CancelImageUrl="~/pic/Cancel32x32.png" EditImageUrl="~/pic/reverse32x32.png" EditText="修改" HeaderText="修改" ShowEditButton="True" UpdateImageUrl="~/pic/save32x32.png" UpdateText="儲存">
            <HeaderStyle CssClass="info text-center" Font-Size="Medium" />
            <ItemStyle CssClass="text-center" Font-Size="Medium" />
            </asp:CommandField>

        </Columns>
        
    </asp:GridView>
</asp:Content>
