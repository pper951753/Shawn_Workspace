<%@ Page Title="關於康欣" Language="C#" MasterPageFile="~/FrontEnd/Site.Master" AutoEventWireup="true" CodeBehind="關於康欣.aspx.cs" Inherits="testModel01.WebForm3" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContent" runat="server">

    <form id="form1" runat="server">

    <div class="container">
        <h3>康欣 - 關於康欣</h3>
        <hr style="background-color: blue; height: 1px" />
    </div>
    <div class="container">
        <table border="0" style="text-align: left; width: 98%; color: rgb(51, 51, 51); font-family: 新細明體, Verdana, Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: 1px; line-height: normal; orphans: initial; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
            <tr style="padding: 0px; margin: 0px;">
                <td style="padding: 0px; margin: 0px; width: 100%">
                    <div id="text" style="font-size: 10.5pt; font-family: 微軟正黑體, 新細明體, Verdana, Arial, Helvetica, sans-serif; line-height: 1.5; color: rgb(49, 49, 49); word-spacing: 1px; margin: 0px; padding: 0px; text-align: left;">
                        <p class="auto-style4">
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
                        </p>
                        <p class="auto-style4">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" Visible="False" />
                                    <asp:BoundField DataField="article" HeaderText="關於我們" HtmlEncode="False" SortExpression="article">
                                    <HeaderStyle CssClass="info" Font-Size="Medium" />
                                    <ItemStyle CssClass="text" Font-Size="Medium" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                        </p>
                    </div>
                </td>
            </tr>
        </table>
        <hr />
    </div>
    <div class="container">
        <h4>位置圖</h4>
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <style type="text/css">
            #user_gmap {
                width: 1100px;
                height: 400px;
                margin: 20px auto 0px;
                border: solid 1px #111;
            }

            #user_glink {
                width: 1100px;
                text-align: right;
                font-size: 10px;
                font-weight: normal;
                padding: 0px;
                height: 20px;
                margin: 0px auto;
            }
            .auto-style4 {
                color: rgb(255, 0, 0);
            }
        </style>
        <script type="text/javascript">
            google.maps.event.addDomListener(window, 'load', function () {
                var mapdiv = document.getElementById('user_gmap');
                var myOptions = {
                    zoom: 15,
                    center: new google.maps.LatLng(22.7885764, 120.3434107),
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    scaleControl: true
                };
                var map = new google.maps.Map(mapdiv, myOptions);
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(22.7885764, 120.3434107),
                    map: map,
                    title: '康欣老人長期照顧中心(養護型)'
                });
                var infowindow = new google.maps.InfoWindow({
                    content: '<strong>康欣老人長期照顧中心(養護型)</strong><br />電話：(07)614-1273<br />傳真：(07)614-0136<br />E-mail：t18428603@yahoo.com.tw<br />地址：高雄市燕巢區安招里安東街188號',
                    size: new google.maps.Size(200, 200)
                });
                google.maps.event.addListener(marker, 'click', function () {
                    infowindow.open(map, marker);
                });
                infowindow.open(map, marker);
            });
        </script>
        <div id="user_gmap"></div>
        <hr />
    </div>

    </form>

</asp:Content>
