<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/BS_Site.Master" AutoEventWireup="true" CodeBehind="BS_活動剪影後台.aspx.cs" Inherits="testModel01.WebForm10" %>


<asp:Content ID="Content1" ContentPlaceHolderID="BS_HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BS_BodyContent" runat="server">
    <link href="../Content/image-picker.css" rel="stylesheet" />
    <style type="text/css">
        .col-xd-my20 {
            width: 20%;
            padding-left: 15px;
            padding-right: 15px;

              display: inline-block;
  max-width: 100%;
  height: auto;
  padding: 4px;

  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #fff;
  border-radius: 4px;

  -webkit-transition: all .2s ease-in-out;
       -o-transition: all .2s ease-in-out;
          transition: all .2s ease-in-out;
        }
        .myimg_maxwid {
       max-width:180px;
             }
    </style>
    <script src="../Scripts/image-picker.js"></script>
    <!----------------------------------------------------------------------------------------------->
           <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />   <br />   <br />   <br />   <br />   <br />
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server"> 
        <ContentTemplate>            
                <asp:ListView ID="ListView_outlook" runat="server">
                    <ItemTemplate>
                 <div class="  col-xd-my20  " align="center" >
                        <asp:ImageButton ID="ImageButton1" runat="server"
                             ImageUrl='<%# Eval("f庭院照片_s")%>'
                            height="100"    
                          BorderWidth="3"
                             
                             OnClick="ImageButton1_Click"
                            CssClass=" img-thumbnail"
                             OnLoad="ImageButton1_Load"
                             
                             />
                     </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table id="Table1" runat="server">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="Tr2" runat="server" style="">
                                            <th id="Th1" runat="server"></th>
                                            <th id="Th2" runat="server"></th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr3" runat="server">
                                <td id="Td2" runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
        </ContentTemplate>
    </asp:UpdatePanel>








       <br />   <br />   <br />   <br />   <br />   <br />   <br />   <br />   <br />   <br />   <br />   <br />

    <h1 style="text-align: center">相簿編輯</h1>
    <br />
    <br />
    <br />
    <div align="center">
        <h2>刪除相片</h2>
    </div>    
    <br />
        
               <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />

               <asp:Button ID="Button2" runat="server" Text="刪除"
        OnClientClick="if (confirm('確定要刪除嗎？')==false) {return false;}" OnClick="Button4_Click" />
    <br />
            <br /><br />
    
    <br /><br />

  
                <asp:ListView ID="ListView_inside" runat="server">
                    <ItemTemplate>



                        <div class="  img-thumbnail col-xd-my20 " align="center">
                            <div align="left">
                                <asp:CheckBox runat="server" Text='<%# Eval("f內部照片_s")  %>' />
                            </div>
                            <div align="center">
                                <a href='<%# Eval("f內部照片_s") %>'
                                    data-lightbox='<%# Eval("f內部照片_l") %>'
                                    data-title='<%# Eval("f內部照片_l") %>'>
                                    <img src='<%# Eval("f內部照片_s") %>' height="120" />
                                </a>
                            </div>
                        </div>


                    </ItemTemplate>

                    <LayoutTemplate>
                        <table id="Table1" runat="server">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="Tr2" runat="server" style="">
                                            <th id="Th1" runat="server"></th>
                                            <th id="Th2" runat="server"></th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr3" runat="server">
                                <td id="Td2" runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
        
        





    <br />
    <br />
    &nbsp;&nbsp;&nbsp; 
    <div align="center">
        <h2>新增相片</h2>
    </div>

    <br />




    <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />
    <br />
    <asp:Button ID="Btn_上傳_外觀" runat="server" Text="上傳至外觀" OnClick="Btn_上傳_外觀_Click" />

</asp:Content>
