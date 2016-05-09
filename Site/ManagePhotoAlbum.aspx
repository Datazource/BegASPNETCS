﻿<%@ Page Title="Manage Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="ManagePhotoAlbum.aspx.cs" Inherits="_ManagePhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="EntityDataSource1" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting">
          
        <InsertItemTemplate>
            <li style=""> Description: <asp:RequiredFieldValidator ID="reqDesc" ControlToValidate="DescriptionTextBox" runat="server" ErrorMessage="Enter a description."></asp:RequiredFieldValidator>
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />ToolTip: <asp:RequiredFieldValidator ErrorMessage="Enter a tool tip." ControlToValidate="ToolTipTextBox" runat="server" />
                <asp:TextBox ID="ToolTipTextBox" runat="server" Text='<%# Bind("ToolTip") %>' />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br /> <asp:CustomValidator ErrorMessage="Select a valid .jpg" ControlToValidate="FileUpload1" runat="server" ID="cusValImage" />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CausesValidation="False" />
            </li>
        </InsertItemTemplate>
       
        <ItemTemplate>
            <li style=""> 
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                ToolTip:
                <asp:Label ID="ToolTipLabel" runat="server" Text='<%# Eval("ToolTip") %>' />
                <br /> 
                <asp:Image ID="ImageUrl" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' />
                <br /> 
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CausesValidation="False" />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul  class="ItemContainer">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="">
            </div>
        </LayoutTemplate> 
    </asp:ListView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PlanetWroxEntities" DefaultContainerName="PlanetWroxEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EntitySetName="Pictures" Where="it.PhotoAlbumId = @photoAlbumId" OnInserting="EntityDataSource1_Inserting">
        <WhereParameters>
            <asp:QueryStringParameter Name="PhotoAlbumId" QueryStringField="PhotoAlbumId" Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>
</asp:Content>

