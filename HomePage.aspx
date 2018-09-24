<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script></script>
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- This page displays the home page. -->
    <!-- whiteBox-->
    <div class="whiteBox">
        <h2>
            <asp:Label ID="lblStatus" runat="server" CssClass="auto-style1"></asp:Label>
        </h2>
        <asp:Label ID="lblHomeTextOne" runat="server" Text=""></asp:Label>
    </div>
    <div class="whiteBox">
        <asp:Label ID="lblHomeTextTwo" runat="server" Text=""></asp:Label>
    </div>
    <!-- whiteBox-->
</asp:Content>

