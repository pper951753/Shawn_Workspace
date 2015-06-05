<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/BS_Site.Master" AutoEventWireup="true" CodeBehind="BS_入住事項.aspx.cs" Inherits="testModel01.BackEnd.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BS_HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BS_BodyContent" runat="server">
    <div>
        <h2 style="color: #FF6600">入住事項修改</h2>
        <asp:SqlDataSource ID="sqlAttention" runat="server" ConnectionString="<%$ ConnectionStrings:dbKSYYConnectionString %>" DeleteCommand="DELETE FROM [tAttention] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tAttention] ([fNo], [fContent], [fColor]) VALUES (@fNo, @fContent, @fColor)" SelectCommand="SELECT * FROM [tAttention]" UpdateCommand="UPDATE [tAttention] SET [fNo] = @fNo, [fContent] = @fContent, [fColor] = @fColor WHERE [fId] = @fId">
            <DeleteParameters>
                <asp:Parameter Name="fId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fNo" Type="String" />
                <asp:Parameter Name="fContent" Type="String" />
                <asp:Parameter Name="fColor" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fNo" Type="String" />
                <asp:Parameter Name="fContent" Type="String" />
                <asp:Parameter Name="fColor" Type="Boolean" />
                <asp:Parameter Name="fId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="gvAttention" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover" DataKeyNames="fId" DataSourceID="sqlAttention" Font-Names="微軟正黑體" Width="100%">
            <Columns>
                <asp:BoundField DataField="fId" HeaderText="fId" InsertVisible="False" ReadOnly="True" SortExpression="fId" Visible="false" />

                <asp:BoundField DataField="fNo" HeaderText="編號" SortExpression="fNo" HtmlEncode="False">
                    <HeaderStyle CssClass="info text-center" Font-Bold="True" Font-Size="Large" />
                    <ItemStyle CssClass="text-left" Font-Size="Medium" />
                </asp:BoundField>

                <asp:BoundField DataField="fContent" HeaderText="內容" SortExpression="fContent" HtmlEncode="False">
                    <HeaderStyle CssClass="info text-center" Font-Bold="True" Font-Size="Large" />
                    <ItemStyle CssClass="text-left" Font-Size="Medium" />
                </asp:BoundField>

                <asp:TemplateField HeaderText="編輯">
                    <HeaderStyle CssClass="info text-center" Font-Bold="True" Font-Size="Larger" />
                    <ItemStyle CssClass="text-center" Font-Size="Medium" />
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("fId", "BS_入住事項editAttention.aspx?fId={0}") %>' Text='<%# Eval("fContent") %>' ImageUrl="~/pic/reverse32x32.png" ToolTip="點我編輯" data-toggle="modal" data-target="#myModal"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="刪除">
                    <HeaderStyle CssClass="info text-center" Font-Bold="True" Font-Size="Larger" />
                    <ItemStyle CssClass="text-center" Font-Size="Medium" />
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Delete" ImageUrl="~/pic/delete32x32.png" OnClientClick="return confirm('確定要刪除?')" ToolTip="點我刪除" />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
    </div>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            </div>
        </div>
    </div>

    <a href="BS_入住事項insertAttention.aspx" role="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalinsert">新增</a>
    <div class="modal fade" id="myModalinsert" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
            </div>
        </div>
    </div>
    <div>
        <h2 style="color: #FF6600">日用品清單修改</h2>
        <asp:SqlDataSource ID="sqlCommodity" runat="server" ConnectionString="<%$ ConnectionStrings:dbKSYYConnectionString %>" DeleteCommand="DELETE FROM [tCommodity] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tCommodity] ([fNo], [fContent], [fColor]) VALUES (@fNo, @fContent, @fColor)" SelectCommand="SELECT * FROM [tCommodity]" UpdateCommand="UPDATE [tCommodity] SET [fNo] = @fNo, [fContent] = @fContent, [fColor] = @fColor WHERE [fId] = @fId">
            <DeleteParameters>
                <asp:Parameter Name="fId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fNo" Type="String" />
                <asp:Parameter Name="fContent" Type="String" />
                <asp:Parameter Name="fColor" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fNo" Type="String" />
                <asp:Parameter Name="fContent" Type="String" />
                <asp:Parameter Name="fColor" Type="Boolean" />
                <asp:Parameter Name="fId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="gvCommodity" runat="server" AutoGenerateColumns="False" DataKeyNames="fId" CssClass="table table-bordered table-hover" DataSourceID="sqlCommodity" Font-Names="微軟正黑體" Width="100%">
            <Columns>
                <asp:BoundField DataField="fId" HeaderText="fId" InsertVisible="False" ReadOnly="True" SortExpression="fId" Visible="false" />
                <asp:BoundField DataField="fNo" HeaderText="編號" SortExpression="fNo" HtmlEncode="False">
                    <HeaderStyle CssClass="info text-center" Font-Bold="True" Font-Size="Large" />
                    <ItemStyle CssClass="text-left" Font-Size="Medium" />
                </asp:BoundField>

                <asp:BoundField DataField="fContent" HeaderText="內容" SortExpression="fContent" HtmlEncode="False">
                    <HeaderStyle CssClass="info text-center" Font-Bold="True" Font-Size="Large" />
                    <ItemStyle CssClass="text-left" Font-Size="Medium" />
                </asp:BoundField>

                <asp:TemplateField HeaderText="編輯">
                    <HeaderStyle CssClass="info text-center" Font-Bold="True" Font-Size="Larger" />
                    <ItemStyle CssClass="text-center" Font-Size="Medium" />
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("fId", "BS_入住事項editCommodity.aspx?fId={0}") %>' Text='<%# Eval("fContent") %>' ImageUrl="~/pic/reverse32x32.png" ToolTip="點我編輯" data-toggle="modal" data-target="#myModa2"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="刪除">
                    <HeaderStyle CssClass="info text-center" Font-Bold="True" Font-Size="Larger" />
                    <ItemStyle CssClass="text-center" Font-Size="Medium" />
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Delete" ImageUrl="~/pic/delete32x32.png" OnClientClick="return confirm('確定要刪除?')" ToolTip="點我刪除" />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>

        <div class="modal fade" id="myModa2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                </div>
            </div>
        </div>

        <a href="BS_入住事項insertCommodity.aspx" role="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalinsert2">新增</a>
        <div class="modal fade" id="myModalinsert2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
