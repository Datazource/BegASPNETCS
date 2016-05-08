<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Banner.ascx.cs" Inherits="Controls_Banner" %>
<asp:Panel ID="VerticalPanel" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <a href="http://p2p.wrox.com" target="_blank" runat="server" id="VerticalLink">  <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Banner120x240.gif" AlternateText="This is a sample banner" /></a>
</asp:Panel>
<asp:Panel ID="HorizontalPanel" runat="server">
    <a href="http://p2p.wrox.com" target="_blank" runat="server" id="HorizontalLink">  <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Banner486x60.gif" AlternateText="This is a sample banner" /></a>
</asp:Panel>


