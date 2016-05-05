<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlsDemo.aspx.cs" Inherits="Demos_ControlsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Your Name :
        <asp:TextBox ID="YourName" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit Information" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
        <asp:TextBox AccessKey="a" BackColor="Black" ForeColor="White" Font-Size="30px" BorderColor="Yellow" BorderStyle="Dashed" BorderWidth="4" CssClass="TextBox" Enabled="true" Height="40" Width="200" TabIndex="1" ToolTip="Hover text here" Visible="true" ID="TextBox1" runat="server" Text="Hello World"></asp:TextBox>
    </div>
    </form>
</body>
</html>
