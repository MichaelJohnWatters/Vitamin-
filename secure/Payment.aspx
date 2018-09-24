<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="secure_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- This page will allow the user input their card information -->
    <!-- whiteBoxSolid -->
    <div class="whiteBoxSolid">
        <asp:Label ID="lblStatus" runat="server" Height="16px"></asp:Label>
        <asp:Label ID="lblTitle" runat="server" Text="Payment"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblCard" runat="server" Text="Card No."></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtCard" runat="server" Width="211px" MaxLength="10"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCardNo" runat="server" ControlToValidate="txtCard" ErrorMessage="* required"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblCv" runat="server" Text="CV code"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtCv" runat="server" Width="209px" CssClass="auto-style1" MaxLength="3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCVcode" runat="server" ControlToValidate="txtCv" ErrorMessage="* required"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;<asp:Button ID="btnPayment" runat="server" OnClientClick="return areyousurePayment();" OnClick="btnPayment_Click" Text="Payment" Width="143px" />
    </div>
    <!-- whiteBoxSolid -->

</asp:Content>

