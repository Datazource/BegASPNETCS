<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<% if (false)
    { %>
<script src="../Scripts/jquery-2.0.3-vsdoc.js"></script>
<% } %>
<style type="text/css"> 

    .auto-style1 {
        width: 100%;
    }

    .auto-style2 {
        height: 23px;
    }
</style>
<script type="text/javascript">
    function ValidatePhoneNumbers(source, args)
    {
        var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
        var phoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID %>');
        if (phoneHome.value != '' || phoneBusiness.value != '')
        {
            args.isValid = true;
        }
        else
        {
            args.isValid = false;
        }
    }
</script>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div id="TableWrapper">
            <table class="auto-style1" runat="server" id="FormTable">
                <tr>
                    <td colspan="3">HELLO XTREMAX PLEASE HIRE ME. :D</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ToolTip="Enter Your Name" CssClass="InputBox" ID="Name" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name" ControlToValidate="Name" CssClass="ErrorMessage" Text="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="EmailAddress" runat="server" CssClass="InputBox" ToolTip="Enter Your Email"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter an e-mail address">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email (Confirm)</td>
                    <td>
                        <asp:TextBox ID="ConfirmEmailAddress" runat="server" CssClass="InputBox" ToolTip="Enter Your Email COnfirm"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm the e-mail address">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Re-Type the Email address">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>
                        <asp:TextBox ID="PhoneHome" runat="server" CssClass="InputBox" ToolTip="Enter Your Phone"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your home or business phone number" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone (Business)</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="PhoneBusiness" runat="server" CssClass="InputBox" ToolTip="Enter Your Phone"></asp:TextBox>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>Comments</td>
                    <td>
                        <asp:TextBox ID="Comments" runat="server" Height="38px" TextMode="MultiLine"   CssClass="InputBox" ToolTip="Enter Your Comments"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a Comment">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="SendButton" runat="server" Text="Send" OnClick="SendButton_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors:" ShowMessageBox="True" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="Message" runat="server" Text="Message Sent" CssClass="Attention" Visible="false"></asp:Label>
        <p runat="server" id="MessageSentPara" visible="false">Thank you for your message. We'll get in touch with you if necessary.</p>
    </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class="PleaseWait">
            Please Wait ...
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>
<script src="../Scripts/jquery.updnWatermark.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function ()
    {
        $.updnWatermark.attachAll({ cssClass: 'Watermark' });
        $('form').bind('submit', function ()
        {
            if (Page_isValid)
            {
                $('#TableWrapper').slideUp(3000);
            }
        });
    });
    function pageLoad()
    {
        $('.Attention').animate({ width: '600px' }, 3000).animate({ width: '100px' }, 3000).fadeOut('slow');
    }
</script>