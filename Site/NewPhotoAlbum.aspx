<%@ Page Title="Create New Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="NewPhotoAlbum.aspx.cs" Inherits="_NewPhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1" DataKeyNames="Id" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <li style="">Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                ToolTip:
                <asp:Label ID="ToolTipLabel" runat="server" Text='<%# Eval("ToolTip") %>' />
                <br />
                ImageUrl:
                <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
                <br />
                PhotoAlbumId:
                <asp:Label ID="PhotoAlbumIdLabel" runat="server" Text='<%# Eval("PhotoAlbumId") %>' />
                <br />
                PhotoAlbum:
                <asp:Label ID="PhotoAlbumLabel" runat="server" Text='<%# Eval("PhotoAlbum") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="">Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                ToolTip:
                <asp:TextBox ID="ToolTipTextBox" runat="server" Text='<%# Bind("ToolTip") %>' />
                <br />
                ImageUrl:
                <asp:TextBox ID="ImageUrlTextBox" runat="server" Text='<%# Bind("ImageUrl") %>' />
                <br />
                PhotoAlbumId:
                <asp:TextBox ID="PhotoAlbumIdTextBox" runat="server" Text='<%# Bind("PhotoAlbumId") %>' />
                <br />
                PhotoAlbum:
                <asp:TextBox ID="PhotoAlbumTextBox" runat="server" Text='<%# Bind("PhotoAlbum") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">Id:
                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />ToolTip:
                <asp:TextBox ID="ToolTipTextBox" runat="server" Text='<%# Bind("ToolTip") %>' />
                <br />ImageUrl:
                <asp:TextBox ID="ImageUrlTextBox" runat="server" Text='<%# Bind("ImageUrl") %>' />
                <br />PhotoAlbumId:
                <asp:TextBox ID="PhotoAlbumIdTextBox" runat="server" Text='<%# Bind("PhotoAlbumId") %>' />
                <br />PhotoAlbum:
                <asp:TextBox ID="PhotoAlbumTextBox" runat="server" Text='<%# Bind("PhotoAlbum") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="">Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                ToolTip:
                <asp:Label ID="ToolTipLabel" runat="server" Text='<%# Eval("ToolTip") %>' />
                <br />
                ImageUrl:
                <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
                <br />
                PhotoAlbumId:
                <asp:Label ID="PhotoAlbumIdLabel" runat="server" Text='<%# Eval("PhotoAlbumId") %>' />
                <br />
                PhotoAlbum:
                <asp:Label ID="PhotoAlbumLabel" runat="server" Text='<%# Eval("PhotoAlbum") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="">Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                ToolTip:
                <asp:Label ID="ToolTipLabel" runat="server" Text='<%# Eval("ToolTip") %>' />
                <br />
                ImageUrl:
                <asp:Label ID="ImageUrlLabel" runat="server" Text='<%# Eval("ImageUrl") %>' />
                <br />
                PhotoAlbumId:
                <asp:Label ID="PhotoAlbumIdLabel" runat="server" Text='<%# Eval("PhotoAlbumId") %>' />
                <br />
                PhotoAlbum:
                <asp:Label ID="PhotoAlbumLabel" runat="server" Text='<%# Eval("PhotoAlbum") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PlanetWroxEntities" DefaultContainerName="PlanetWroxEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Pictures" Where="it.PhotoAlbumId = @photoAlbumId">
        <WhereParameters>
            <asp:QueryStringParameter Name="PhotoAlbumId" QueryStringField="PhotoAlbumId" Type="Int32" />
        </WhereParameters>
    </asp:EntityDataSource>
</asp:Content>

