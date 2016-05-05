<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TableDemo.aspx.cs" Inherits="Demos_TableDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
        }
        .auto-style3 {
            width: 200px;
            height: 80px;
        }
        .auto-style4 {
            height: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Bulleted list</td>
                <td>Numbered list</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <ul>
                        <li>PHP</li>
                        <li>Java</li>
                        <li>C# ASP.net</li>
                    </ul>
                </td>
                <td class="auto-style4">
                    <ol>
                        <li>90%</li>
                        <li>85%</li>
                        <li>80%</li>
                    </ol>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Text Link</td>
                <td><a href="../Default.aspx">Go To the Homepage of Planet Wrox </a></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
