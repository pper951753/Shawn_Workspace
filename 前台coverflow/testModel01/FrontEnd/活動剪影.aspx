<%@ Page Title="活動剪影" Language="C#" MasterPageFile="~/FrontEnd/Site.Master" AutoEventWireup="true" CodeBehind="活動剪影.aspx.cs" Inherits="testModel01.WebForm6" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    
    <link href="../Content/lightbox.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .mydiv_1 {
                    width:20%; margin-bottom:30px;
        padding-left:15px; padding-right:15px;
             display:  inline-block;
  background-color: rgba(100%, 100%, 100%, 0);
        }
        .myimag_1 {
            border-radius:10px;
            border-color:rgba(112, 225, 233, 0.30);
            border-width:6px;
            border-style:ridge;

            max-width:220px;
             max-height:140px;
              	-moz-box-shadow: 3px 6px 30px -4px #152f5c;
	-webkit-box-shadow: 3px 6px 30px -4px #152f5c;
        }
        .myButton {
            margin-top:10px;
	-moz-box-shadow: 3px 6px 30px -4px #152f5c;
	-webkit-box-shadow: 3px 6px 30px -4px #152f5c;
	box-shadow: 3px 6px 30px -4px #152f5c;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #d5f4fa), color-stop(1, #78d4f0));
	background:-moz-linear-gradient(top, #d5f4fa 5%, #78d4f0 100%);
	background:-webkit-linear-gradient(top, #d5f4fa 5%, #78d4f0 100%);
	background:-o-linear-gradient(top, #d5f4fa 5%, #78d4f0 100%);
	background:-ms-linear-gradient(top, #d5f4fa 5%, #78d4f0 100%);
	background:linear-gradient(to bottom, #d5f4fa 5%, #78d4f0 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#d5f4fa', endColorstr='#78d4f0',GradientType=0);
	background-color:#d5f4fa;
	-moz-border-radius:17px;
	-webkit-border-radius:17px;
	border-radius:17px;
	border:3px  ridge #d3f2d4;
	display:inline-block;
	cursor:pointer;
	color:#050505;
	font-family:Arial;
	font-size:13px;
	font-weight:bold;
	padding:6px 15px;
	text-decoration:none;
}
    </style>
    <script src="../Scripts/lightbox.js"></script> 

</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContent" runat="server">

    <form id="form1" runat="server">
    <div class="container">
        <h3>康欣 - 活動剪影</h3>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

         <hr style="background-color:blue; height:1px"/>
    </div>
    
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                 <h4>庭院環境</h4>
                <asp:ListView ID="ListView_outlook" runat="server" DataKeyNames="fid" >                   
                <ItemTemplate>
                      <div class=" mydiv_1 " align="center">
                        <a href='<%# Eval("f庭院照片_s") %>'
                            data-lightbox='<%# Eval("f庭院照片_l") %>'
                            data-title='<%# Eval("f庭院照片_l") %>'>
                            <img src='<%# Eval("f庭院照片_s") %>'  class="myimag_1" />
                           </a>               
                           </div> 
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="" >
                                       <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField  ButtonCssClass="myButton" 
                                                ButtonType="Button" 
                                                 ShowFirstPageButton="True"
                                                 ShowNextPageButton="False" 
                                                ShowPreviousPageButton="False"   />
                                            <asp:NumericPagerField   />
                                            <asp:NextPreviousPagerField  ButtonCssClass="myButton" ButtonType="Button"
                                                 ShowLastPageButton="True" ShowNextPageButton="False"
                                                 ShowPreviousPageButton="False" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>

                        </table>
                    </LayoutTemplate>
                
                </asp:ListView>
                            <hr/>
            </ContentTemplate>
    
        </asp:UpdatePanel>
    
   
    <div class="container"  id="inside">
        <h4>內部設施</h4>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                  <ContentTemplate>
                <asp:ListView ID="ListView_inside" runat="server" DataKeyNames="fid" >
                <ItemTemplate>
                      <div class=" mydiv_1 " align="center">
                        <a href='<%# Eval("f內部照片_s") %>'
                            data-lightbox='<%# Eval("f內部照片_l") %>'
                            data-title='<%# Eval("f內部照片_l") %>'>
                            <img src='<%# Eval("f內部照片_s") %>'  class="myimag_1"/>
                           </a>     
                              
                           </div>    
               
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                       
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField  ButtonCssClass="myButton" ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField  ButtonCssClass="myButton" ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
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
                      <div class=" mydiv_1 " align="center">
                        <a href='<%# Eval("f慶生照片_s") %>'
                            data-lightbox='<%# Eval("f慶生照片_l") %>'
                            data-title='<%# Eval("f慶生照片_l") %>'>
                            <img src='<%# Eval("f慶生照片_s") %>'  class="myimag_1"/>
                           </a>               
                           </div>    
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                             
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField  ButtonCssClass="myButton" ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField  ButtonCssClass="myButton" ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
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
                      <div class=" mydiv_1 " align="center">
                        <a href='<%# Eval("f泡腳照片_s") %>'
                            data-lightbox='<%# Eval("f泡腳照片_l") %>'
                            data-title='<%# Eval("f泡腳照片_l") %>'>
                            <img src='<%# Eval("f泡腳照片_s") %>'  class="myimag_1"/>
                           </a>               
                           </div>    
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                             
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField  ButtonCssClass="myButton" ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            <asp:NumericPagerField />
                                            <asp:NextPreviousPagerField  ButtonCssClass="myButton" ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
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
                      <div class=" mydiv_1" align="center">
                        <a href='<%# Eval("f復健照片_s") %>'
                            data-lightbox='<%# Eval("f復健照片_l") %>'
                            data-title='<%# Eval("f復健照片_l") %>'>
                            <img src='<%# Eval("f復健照片_s") %>'  class="myimag_1"/>
                           </a>               
                           </div>    
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" >
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField  ButtonCssClass="myButton" ButtonType="Button"
                                                ShowFirstPageButton="True"
                                                ShowNextPageButton="false"
                                                ShowPreviousPageButton="False"  />
                                            <asp:NumericPagerField   />
                                            <asp:NextPreviousPagerField  ButtonCssClass="myButton" ButtonType="Button"
                                                 ShowLastPageButton="True" 
                                                ShowNextPageButton="false"
                                                ShowPreviousPageButton="False" />
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

        
        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
            <ContentTemplate>
                 <h4>庭院環境</h4>
                <asp:ListView ID="ListView_cuthair" runat="server" DataKeyNames="fid" >                   
                <ItemTemplate>
                      <div class=" mydiv_1 " align="center">
                        <a href='<%# Eval("f義剪照片_s") %>'
                            data-lightbox='<%# Eval("f義剪照片_l") %>'
                            data-title='<%# Eval("f義剪照片_l") %>'>
                            <img src='<%# Eval("f義剪照片_s") %>'  class="myimag_1" />
                           </a>               
                           </div> 
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="" >
                                       <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField  ButtonCssClass="myButton" 
                                                ButtonType="Button" 
                                                 ShowFirstPageButton="True"
                                                 ShowNextPageButton="False" 
                                                ShowPreviousPageButton="False"   />
                                            <asp:NumericPagerField   />
                                            <asp:NextPreviousPagerField  ButtonCssClass="myButton" ButtonType="Button"
                                                 ShowLastPageButton="True" ShowNextPageButton="False"
                                                 ShowPreviousPageButton="False" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>

                        </table>
                    </LayoutTemplate>
                
                </asp:ListView>
                            <hr/>
            </ContentTemplate>
    
        </asp:UpdatePanel>
    
        
        <br/>
        123
       <div class="container"  id="others">
        <h4>其他活動</h4>
         <asp:UpdatePanel ID="UpdatePanel7" runat="server"></asp:UpdatePanel>
     
        <hr />
    </div>
        </form>
</asp:Content>
