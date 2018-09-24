<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        border: 2px solid black;
        margin: auto;
        width: 331px;
        padding: 20px 20px 20px 20px;
        background-color: white;
        border-radius: 25px;
        min-height: 200px;
        opacity: 0.9;
    }
</style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- This page allows the User to login to the site, using a login control -->
    <!--auto-style1-->
    <div class="auto-style1">
        <asp:Login ID="Login1" runat="server" Height="179px" Width="331px" OnAuthenticate="Login1_Authenticate">
        </asp:Login>
        <br />
    </div><!--auto-style1-->
</asp:Content>

