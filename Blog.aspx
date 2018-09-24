<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- This Page displays a blog to the user, in which they cant comment on. -->
    <!-- whiteBoxSolid -->
    <div class="whiteBoxSolid">
        <asp:Label ID="lblBlogTitle" runat="server" Font-Size="Large" Text="Blog"></asp:Label>
        <br />
        <asp:Label ID="lblStatusBlog" runat="server"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtBlog" runat="server" Font-Size="Medium" Height="242px" TextMode="MultiLine" Width="553px" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <!-- Below Controls allow the user to enter there message and add to the blog. -->
        <asp:TextBox ID="txtEntry" runat="server" Font-Size="X-Large" Width="430px"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Height="25px" OnClick="btnSubmit_Click" Text="Submit" Width="92px" />
    </div>
    <!-- whiteBoxSolid -->
</asp:Content>

