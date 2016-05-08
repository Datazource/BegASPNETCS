<%@ Page Title="Web Service Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="WebServices.aspx.cs" Inherits="Demos_WebServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/WebServices/NameService.asmx" />
        </Services>
    </asp:ScriptManagerProxy>
    <input id="YourName" type="text" />
    <input id="SayHello" type="button" value="button" onclick="helloWorld();" />
    <script type="text/javascript">
        function helloWorld()
        {
            var yourName = $get('YourName').value;
            NameService.HelloWorld(yourName, HelloWorldCallback);
        }

        function HelloWorldCallback(result)
        {
            alert(result);
        }
    </script>
    <input id="SayHelloPageMethod" type="button" value="Say Hello with a Page Method" onclick="$addHandler($get('SayHelloPageMethod'), 'click', HelloWorldPageMethod);" />
    <script type="text/javascript">
        function HelloWorldPageMethod()
        {
            var yourName = $get('YourName').value;
            PageMethods.HelloWorld(yourName, HelloWorldCallback);
        }
    </script>
</asp:Content>