<%@ Page Language="C#" AutoEventWireup="true" CodeFile="State.aspx.cs" Inherits="Demos_State" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" EnableViewState="False" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="SetDate" runat="server" OnClick="SetDate_Click" Text="Set Date" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
                <td>
                    <asp:Button ID="PlainPostBack" runat="server" Text="Plain Post Back" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
