<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="secureAdmin_Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 347px;
        }
        .auto-style3 {
            width: 127px;
        }
        .auto-style4 {
            width: 127px;
            height: 26px;
        }
        .auto-style5 {
            width: 347px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- This page is used to display and create the manager page to administrate the site -->
    <!-- whiteBoxSolid -->
    <div class="whiteBoxSolid">
    <table style="width:100%;">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblTitle" runat="server" Text="Content Manager Homepage"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblTextFirst" runat="server" Text="First Paragraph"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:FileUpload ID="fuTextOne" runat="server" Width="313px" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnAddTextOne" runat="server" OnClick="btnAddTextOne_Click" Text="Submit" Width="111px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblTextSecond" runat="server" Text="Second Paragraph"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:FileUpload ID="fuTextTwo" runat="server" Width="311px" />
            </td>
            <td>
                <asp:Button ID="btnAddTextTwo" runat="server" OnClick="btnAddTextTwo_Click" Text="Submit" Width="109px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblUpdated" runat="server"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
    <!-- whiteBoxSolid -->

</asp:Content>

