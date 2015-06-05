<%@ Page Title="收費標準" Language="C#" MasterPageFile="~/FrontEnd/Site.Master" AutoEventWireup="true" CodeBehind="收費標準.aspx.cs" Inherits="testModel01.WebForm4" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContent" runat="server">
    <%--<meta http-equiv="refresh" content="5"/>--%>
    <form id="form1" runat="server">

        <div class="container">
            <h3>康欣 - 收費標準</h3>
            <hr style="background-color: blue; height: 1px" />
        </div>
        <div class="container">
            <div id="text">
                <h2 style="color: #ff6600;"><strong>收費標準表<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Fees_table_1] WHERE [room] = @room" InsertCommand="INSERT INTO [Fees_table_1] ([room], [price], [care], [careprice]) VALUES (@room, @price, @care, @careprice)" SelectCommand="SELECT * FROM [Fees_table_1]" UpdateCommand="UPDATE [Fees_table_1] SET [price] = @price, [care] = @care, [careprice] = @careprice WHERE [room] = @room">
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
                </asp:SqlDataSource><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [note]"></asp:SqlDataSource></strong>
                </h2>

                <table style="background-color: #ff9933; width: 100%;">
                    <tbody>
                        <tr>
                            <td style="background-color: #ffffff;" colspan="4">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover" DataKeyNames="room" DataSourceID="SqlDataSource1" Width="100%">
                                    <Columns>
                                        <asp:BoundField DataField="room" HeaderText="住  房" ReadOnly="True" SortExpression="room">
                                            <HeaderStyle CssClass="info text-center" />
                                            <ItemStyle CssClass="text-center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="price" HeaderText="基本月費（含住房費、水電費、洗衣費、一般伙食費）" SortExpression="price">
                                            <HeaderStyle CssClass="info text-center" />
                                            <ItemStyle CssClass="text-center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="care" HeaderText="特殊照護費" SortExpression="care">
                                            <HeaderStyle CssClass="info text-center" />
                                            <ItemStyle CssClass="text-center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="careprice" HeaderText="費用" SortExpression="careprice">
                                            <HeaderStyle CssClass="info text-center" />
                                            <ItemStyle CssClass="text-center" />
                                        </asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                                <asp:GridView ID="GridView3" runat="server" CssClass="table table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Width="100%">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                                        <asp:BoundField DataField="content" HeaderText="備註" HtmlEncode="False" SortExpression="content">
                                            <HeaderStyle CssClass="info text-center" />
                                        </asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <hr />
        </div>

        <div class="container">
            <h2 style="color: #ff6600;"><strong>入住注意事項</strong></h2>
            <div>
                <asp:SqlDataSource ID="sqlAttention" runat="server" ConnectionString="<%$ ConnectionStrings:dbKSYYConnectionString %>" SelectCommand="SELECT * FROM [tAttention]"></asp:SqlDataSource>
                <asp:GridView ID="gvAttention" runat="server" AutoGenerateColumns="False" DataSourceID="sqlAttention" CssClass="table " ShowHeader="False" DataKeyNames="fId" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="fNo" HeaderText="fNo" SortExpression="fNo" />
                        <asp:BoundField DataField="fContent" HeaderText="fContent" SortExpression="fContent" HtmlEncode="False" />
                    </Columns>
                </asp:GridView>
            </div>
            <div style="background-color: #FFFFCC">
                <h4 class="attention-item4">◆入住必備日用品清單◆</h4>
                <asp:SqlDataSource ID="sqlCommodity" runat="server" ConnectionString="<%$ ConnectionStrings:dbKSYYConnectionString %>" SelectCommand="SELECT * FROM [tCommodity]"></asp:SqlDataSource>
                <asp:GridView ID="gvCommdoity" runat="server" AutoGenerateColumns="False" DataSourceID="sqlCommodity" CssClass="table " ShowHeader="False" DataKeyNames="fId" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="fNo" HeaderText="fNo" SortExpression="fNo" />
                        <asp:BoundField DataField="fContent" HeaderText="fContent" SortExpression="fContent" HtmlEncode="False" />
                    </Columns>
                </asp:GridView>
                <p class="attention-item4">以上用品依長輩之個別需要準備，請您於入住時即備妥並<span class="attention-item5"><strong>"寫上姓名"</strong></span>或由本機構代購，以方面作業！</p>
            </div>
            <hr />
        </div>

        <div class="container">
            <h2 style="color: #ff6600;"><strong>日常照護收費評估表</strong></h2>
            <div>
                <span>康欣老人長期照顧中心 住民日常照護收費評估表</span>
                <a href="../AssessFile/assess.doc">
                    <img title="下載住民日常照護收費評估表.doc" src="../AssessFile/word.png" width="80" /></a>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover table-striped" ShowHeader="False" Width="100%"></asp:GridView>
                        <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>
                    </ContentTemplate>
                </asp:UpdatePanel>


            </div>
            <hr />
        </div>

    </form>

</asp:Content>
