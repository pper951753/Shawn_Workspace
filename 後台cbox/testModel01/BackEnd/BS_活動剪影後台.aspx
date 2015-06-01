<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/BS_Site.Master" AutoEventWireup="true" CodeBehind="BS_活動剪影後台.aspx.cs" Inherits="testModel01.WebForm10" %>


<asp:Content ID="Content1" ContentPlaceHolderID="BS_HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BS_BodyContent" runat="server">
    <style type="text/css">
        .col-xd-my20 {
            width: 20%;
            padding-left: 15px;
            padding-right: 15px;
        }
           .clear{
                margin-bottom: 10px;
            }
    </style>

       <!----------------------------------------------------------------------------------->  

    <h1 style="text-align: center">相簿編輯</h1>
    <br />
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
       <!----------------------------------------------------------------------------------->  
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.1/jquery.min.js"></script> 
 
    
    <script src="Multi-Column-Select/Multi-Column-Select.js"></script>
    
    <script>
     $(document).ready(function(){
        $('#selectcontrol').MultiColumnSelect({
            menuclass : 'mcs', 
            openmenuClass : 'mcs-open',
            openmenuText : 'Choose an Option...',
            containerClass : 'mcs-container',
            itemClass : 'mcs-item',
            duration : 200,
            onOpen: function() {
                // some action
            },
            onClose: function() {
                // some action
            },
            onItemSelect: function() {
                // some action
              
            }
        });
        
        $('#selectcontrolm').MultiColumnSelect({
            multiple: true,
            menuclass : 'mcs', 
            openmenuClass : 'mcs-open',
            openmenuText : 'Choose an Option...',
            containerClass : 'mcs-container',
            itemClass : 'mcs-item',
	    idprefix : 'yourOwnID-',
            hideclass : 'hidden',
            openclass : 'open',
            duration : 200,
            hideselect : false,
                     
        });
        
        // $('#selectcontrolm').MultiColumnSelectDestroy();
        $('#selectcontrolm').MultiColumnSelectAddItem('New','New Item');
       
     });  
    </script>
    


    <div id="selectcontrolm" >
      
    <a class="mcs-open mcs open">Choose an Option...</a>
        <div class="Multi mcs-container" style="display: block;">
            <a class=" mcs-item" >Audi22</a>
            <a class="mcs-item" >Bugatti</a>
            <a class="mcs-item"  >Chrysler</a>
            <a class="mcs-item" >Daihatsu</a>
            <a class="mcs-item"  >Ford</a>
            <a class="mcs-item"  >General Motors</a>
            <a class="mcs-item" >Honda</a>
            <a class="mcs-item" >Infiniti</a>
        </div>

    </div>















    
       <!----------------------------------------------------------------------------------->  

    <br />
    <div align="center">
        <h2>刪除相片</h2>
    </div>    
    <br />
        
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            
               <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br/>
      <asp:Button ID="Button1" runat="server" OnClick="Button4_Click" Text="Button" />
    
</ContentTemplate>
    </asp:UpdatePanel>

    <br />

    <asp:CheckBox ID="CheckBox2" runat="server" Text="newone" OnCheckedChanged="CheckBox1_CheckedChanged" />
 
               <asp:Button ID="Button2" runat="server" Text="刪除"
        OnClientClick="if (confirm('確定要刪除嗎？')==false) {return false;}" OnClick="Button4_Click" />
    <br />
            <br /><br />
    
    <br /><br />

    <asp:Panel ID="Panel1" runat="server">
<asp:ListView ID="ListView_outlook" runat="server">
                    <ItemTemplate>
                        <div class="  img-thumbnail col-xd-my20 " align="center">
                            <div align="left">
                                <asp:CheckBox ID="CheckBox1" runat="server" 
                                    Text='<%# Eval("f庭院照片_s")  %>'  
                                     OnCheckedChanged="CheckBox1_CheckedChanged"  />
                            </div>
                            <div align="center">
                                <a href='<%# Eval("f庭院照片_s") %>'
                                    data-lightbox='<%# Eval("f庭院照片_l") %>'
                                    data-title='<%# Eval("f庭院照片_l") %>'>
                                    <img src='<%# Eval("f庭院照片_s") %>' height="120" />
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

    </asp:Panel>
                
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
