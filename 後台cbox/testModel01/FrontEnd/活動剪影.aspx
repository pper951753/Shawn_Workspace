<%@ Page Title="活動剪影" Language="C#" MasterPageFile="~/FrontEnd/Site.Master" AutoEventWireup="true" CodeBehind="活動剪影.aspx.cs" Inherits="testModel01.WebForm6" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContent" runat="server">

    <link href="../Content/lightbox.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .col-xd-my20 {
                    width:20%;
        padding-left:15px;
        padding-right:15px;
        }
    </style>
    <script src="../Scripts/lightbox.js"></script> 

    <form id="form1" runat="server">
    <div class="container">
        <h3>康欣 - 活動剪影</h3>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

         <hr style="background-color:blue; height:1px"/>
    </div>
    <div class="container" id="outlook">
        <h4>庭院環境</h4>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
            <ContentTemplate>
                <asp:ListView ID="ListView_outlook" runat="server" DataKeyNames="fid"  >                   
                <ItemTemplate >
                      <div class=" col-xd-my20 img-thumbnail" align="center">
                        <a href='<%# Eval("f庭院照片_s") %>'
                            data-lightbox='<%# Eval("f庭院照片_l") %>'
                            data-title='<%# Eval("f庭院照片_l") %>'>
                            <img src='<%# Eval("f庭院照片_s") %>' height="120" />
                           </a>               
                           </div> 
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server"></th>
                                            <th runat="server"></th>
                                            <th runat="server"></th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
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
        <hr />
    </div>
    <div class="container"  id="inside">
        <h4>內部設施</h4>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                  <ContentTemplate>
                <asp:ListView ID="ListView_inside" runat="server" DataKeyNames="fid" >
                <ItemTemplate>
                      <div class=" col-xd-my20 img-thumbnail" align="center">
                        <a href='<%# Eval("f內部照片_s") %>'
                            data-lightbox='<%# Eval("f內部照片_l") %>'
                            data-title='<%# Eval("f內部照片_l") %>'>
                            <img src='<%# Eval("f內部照片_s") %>'  class="img-thumbnail" height="120"/>
                           </a>     
                              
                           </div>    
               
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server"></th>
                                            <th runat="server"></th>
                                            <th runat="server"></th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
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

        <hr />
    </div>
     <div class="container"  id="birthday">
        <h4>慶生剪影</h4>
       <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                  <ContentTemplate>
                <asp:ListView ID="ListView_birthday" runat="server" DataKeyNames="fid" >
                <ItemTemplate>
                      <div class=" col-xd-my20 img-thumbnail" align="center">
                        <a href='<%# Eval("f慶生照片_s") %>'
                            data-lightbox='<%# Eval("f慶生照片_l") %>'
                            data-title='<%# Eval("f慶生照片_l") %>'>
                            <img src='<%# Eval("f慶生照片_s") %>' height="120" class="img-thumbnail"/>
                           </a>               
                           </div>    
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server"></th>
                                            <th runat="server"></th>
                                            <th runat="server"></th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
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
        <hr />
    </div>
    <div class="container"  id="washfoot">
        <h4>泡腳</h4>
         <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                 <ContentTemplate>
                <asp:ListView ID="ListView_washfoot" runat="server" DataKeyNames="fid" >
                <ItemTemplate>
                      <div class=" col-xd-my20 img-thumbnail" align="center">
                        <a href='<%# Eval("f泡腳照片_s") %>'
                            data-lightbox='<%# Eval("f泡腳照片_l") %>'
                            data-title='<%# Eval("f泡腳照片_l") %>'>
                            <img src='<%# Eval("f泡腳照片_s") %>' height="120" class="img-thumbnail"/>
                           </a>               
                           </div>    
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server"></th>
                                            <th runat="server"></th>
                                            <th runat="server"></th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
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
        <hr />
    </div>
    <div class="container"  id="rehab">
        <h4>復健</h4>
         <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                     <ContentTemplate>
                <asp:ListView ID="ListView_rehab" runat="server" DataKeyNames="fid" >
                <ItemTemplate>
                      <div class=" col-xd-my20 img-thumbnail" align="center">
                        <a href='<%# Eval("f復健照片_s") %>'
                            data-lightbox='<%# Eval("f復健照片_l") %>'
                            data-title='<%# Eval("f復健照片_l") %>'>
                            <img src='<%# Eval("f復健照片_s") %>' height="120" class="img-thumbnail"/>
                           </a>               
                           </div>    
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server"></th>
                                            <th runat="server"></th>
                                            <th runat="server"></th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
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
     
        <hr />
    </div>
        <div class="container"  id="haircut">
        <h4>義剪</h4>
         <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                  <ContentTemplate>
                <asp:ListView ID="ListView_cuthair" runat="server" DataKeyNames="fid" >
                <ItemTemplate>
                      <div class=" col-xd-my20 img-thumbnail" align="center">
                        <a href='<%# Eval("f義剪照片_s") %>'
                            data-lightbox='<%# Eval("f義剪照片_l") %>'
                            data-title='<%# Eval("f義剪照片_l") %>'>
                            <img src='<%# Eval("f義剪照片_s") %>' height="120" class="img-thumbnail"/>
                           </a>               
                           </div>    
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server"></th>
                                            <th runat="server"></th>
                                            <th runat="server"></th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
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

        <hr />
    </div>
       <div class="container"  id="others">
        <h4>其他活動</h4>
         <asp:UpdatePanel ID="UpdatePanel7" runat="server"></asp:UpdatePanel>
     
        <hr />
    </div>
        </form>
</asp:Content>
