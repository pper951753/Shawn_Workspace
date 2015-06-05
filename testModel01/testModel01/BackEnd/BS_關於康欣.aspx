<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/BS_Site.Master" AutoEventWireup="true" CodeBehind="BS_關於康欣.aspx.cs" Inherits="testModel01.BackEnd.WebForm2" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BS_HeadContent" runat="server">
    <p style="font-size: xx-large; color: #0000CC">
        <strong>關於康欣</strong></p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BS_BodyContent" runat="server">
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [about] WHERE [Id] = @Id" InsertCommand="INSERT INTO [about] ([Id], [article]) VALUES (@Id, @article)" SelectCommand="SELECT * FROM [about]" UpdateCommand="UPDATE [about] SET [article] = @article WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="article" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="article" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%" CssClass="table table-bordered table-hover">
            <Columns>
                <asp:TemplateField HeaderText="關於我們">
                    <ItemTemplate>
                        <asp:Label ID="lb1" runat="server" Text='<%# Bind("article") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" Text='<%#Bind("article") %>'></CKEditor:CKEditorControl>
                   
                    </EditItemTemplate>
                    <HeaderStyle CssClass="info text-center" Font-Size="Medium" />
                    <ItemStyle Font-Size="Medium" />
                </asp:TemplateField>
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/pic/Cancel32x32.png" EditImageUrl="~/pic/reverse32x32.png" EditText="修改" HeaderText="修改" ShowEditButton="True" UpdateImageUrl="~/pic/save32x32.png" UpdateText="儲存">
                <HeaderStyle CssClass="info text-center" Font-Size="Medium" />
                <ItemStyle CssClass="text-center" Font-Size="Medium" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
  
</asp:Content>
