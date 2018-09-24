<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- This page is used to create the shoppingCart page for the site. -->
    <!-- WhiteboxSolid -->
    <div class="whiteBoxSolid">
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
        <asp:Label ID="lblOrderSummary" runat="server" ></asp:Label>
        <br />
        <asp:Panel ID="pnlOrders" runat="server">
        </asp:Panel>
        <br />
        <asp:Label ID="lblTotalCost" runat="server" ></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnClear" runat="server"  OnClientClick="return areyousure();" OnClick="btnClear_Click" Text="Empty Basket" />
        <asp:Button ID="btnPurchase" runat="server" OnClientClick="return areyousurePurchase();" OnClick="btnPurchase_Click" Text="Purchase"  />
        <br />
   </div><!-- WhiteboxSolid-->
</asp:Content>

