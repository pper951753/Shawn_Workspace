<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/BS_Site.Master" AutoEventWireup="true" CodeBehind="BS_收費評估表.aspx.cs" Inherits="testModel01.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BS_HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BS_BodyContent" runat="server">
    <asp:FileUpload ID="FileUpload_收費評估表" runat="server" />
    <asp:Button ID="btn上傳收費評估表" runat="server" Text="確定上傳" OnClick="btn上傳收費評估表_Click" />
</asp:Content>
