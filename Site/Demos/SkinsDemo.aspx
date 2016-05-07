<%@ Page Title="Skins Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="SkinsDemo.aspx.cs" Inherits="Demos_SkinsDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Button ID="Button1"  runat="server" Text="Button" />
    <asp:Button ID="Button2" SkinID="RedButton" runat="server" Text="Button" />
</asp:Content>

