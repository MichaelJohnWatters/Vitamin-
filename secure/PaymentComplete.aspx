<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="PaymentComplete.aspx.cs" Inherits="secure_PaymentComplete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- This page is used to create the complete payment screen receipt -->
    <!-- WhiteboxSolid -->
    <div class="whiteBoxSolid">

        <asp:Label ID="lblTitle" runat="server" Text="Thanks! Order Complete!"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblStatus" runat="server" CssClass="auto-style1"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblTitleDetails" runat="server" Text="Your Details"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblCardNo" runat="server" Text="Card No."></asp:Label>
         &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblQueryCardNo" runat="server" Text="??????????"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblCvCode" runat="server" Text="Cv Code"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblQueryCvCode" runat="server" Text="???"></asp:Label>

        <br />
        <br />
        <asp:Label ID="lblOrderSummary" runat="server" ></asp:Label>

        <br />
        <asp:Panel ID="pnlOrders" runat="server">
        </asp:Panel>
        <br />
        <asp:Label ID="lblTotalCost" runat="server" ></asp:Label>
        <br />
        <br />

    </div>

</asp:Content>

