<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="Shop.aspx.cs" Inherits="Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        .auto-style1 {
            float: left;
            width: 351px;
        }

        .auto-style2 {
            float: left;
            width: 361px;
        }

        .auto-style3 {
            float: left;
            width: 376px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- This page displays the shopping cart for the user with all the items they can
        purchase in the shop -->
    <!--whitebox-->
    <div class="whiteBox">
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
        <asp:LinkButton ID="lbnCart" runat="server" OnClick="cart_Click">Cart(0)</asp:LinkButton>
    </div>
    <!--whitebox-->
    <div class="shopBox">
        <!-- First Item-->
        <div class="whiteBoxSolid">
            <div class="shopImage">
                <img src="Images/shopItem1.jpg" width="200" height="200" />
            </div>
            <p class="shopText">
                Name: Nature Made, Vitamin C<br />
                <br />
                Price: £7.00<br />
                <br />
                Amount: 300 capsules
                <br />
                <br />
                Description: Vitamin  is good for you.<br />
                It can help lower chances of heart diesease,depression
                <br />
                and arthrithis<br />
            </p>
            <asp:Button CssClass="shopButton" ID="itemButton1" runat="server" Text="Add to Cart" OnClick="itemButton1_Click" />
        </div>
        <!--whiteBoxSolid-->

        <!-- Second Item-->
        <div class="whiteBoxSolid">
            <div class="shopImage">
                <img src="Images/shopItem2.jpg" width="200" height="200" />
            </div>
            <p class="shopText">
                Name: Nature Made, Omega 3<br />
                <br />
                Price: £7.00<br />
                <br />
                Amount: 100 capsules
                <br />
                <br />
                Description: Omega 3 fatty acids is a good type of fat.<br />
                It can help lower chances of heart diesease ,depression
                <br />
                and arthrithis<br />
            </p>
            <asp:Button CssClass="shopButton" ID="itemButton2" runat="server" Text="Add to Cart" OnClick="itemButton2_Click" />
        </div>
        <!--whiteBoxSolid-->

        <!-- thrid Item-->
        <div class="whiteBoxSolid">
            <div class="shopImage">
                <img src="Images/shopItem3.jpg" width="200" height="200" />
            </div>
            <p class="shopText">
                Name: Nu u, Fish oil Omega 3<br />
                <br />
                Price: £10.00<br />
                <br />
                Amount: 365 capsules
                <br />
                <br />
                Description: Omega 3 fatty acids is a good type of fat.<br />
                It can help lower chances of heart diesease ,depression
                <br />
                and arthrithis<br />
            </p>
            <asp:Button CssClass="shopButton" ID="itemButton3" runat="server" Text="Add to Cart" OnClick="itemButton3_Click" />
        </div>
        <!--whiteBoxSolid-->

        <!-- fourth Item-->
        <div class="whiteBoxSolid">
            <div class="shopImage">
                <img src="Images/shopItem4.jpg" width="200" height="200" />
            </div>
            <p class="shopText">
                Name: Ester, Fish oil Omega 3<br />
                <br />
                Price: £10.00<br />
                <br />
                Amount: 100 capsules
                <br />
                <br />
                Description: Omega 3 fatty acids is a good type of fat.<br />
                It can help lower chances of heart diesease ,depression
                <br />
                and arthrithis<br />
            </p>
            <asp:Button CssClass="shopButton" ID="itemButton4" runat="server" Text="Add to Cart" OnClick="itemButton4_Click" />
        </div>
        <!--whiteBoxSolid-->
        <!-- fifth Item-->
        <div class="whiteBoxSolid">
            <div class="shopImage">
                <img src="Images/shopItem5.jpg" width="200" height="200" />
            </div>
            <p class="shopText">
                Name: Solgar Vitamin C<br />
                <br />
                Price: £9.00<br />
                <br />
                Amount: 100 capsules
                <br />
                <br />
                Description: Vitamin C is good for you.<br />
                It can help lower chances of heart diesease ,depression
                <br />
                and arthrithis<br />
            </p>
            <asp:Button CssClass="shopButton" ID="itemButton5" runat="server" Text="Add to Cart" OnClick="itemButton5_Click" />
        </div>
        <!--whiteBoxSolid-->
        <!-- sixth Item-->
        <div class="whiteBoxSolid">
            <div class="shopImage">
                <img src="Images/shopItem6.jpg" width="200" height="200" />
            </div>
            <p class="shopText">
                Name: Nature Made, Vitamin D<br />
                <br />
                Price: £15.00<br />
                <br />
                Amount: 90 capsules
                <br />
                <br />
                Description: Vitamin D is good for you.<br />
                It can help lower chances of Skin illness ,Skin cancer
                <br />
                and other problems<br />
            </p>
            <asp:Button CssClass="shopButton" ID="itemButton6" runat="server" Text="Add to Cart" OnClick="itemButton6_Click" />
        </div>
        <!--whiteBoxSolid-->
        <!-- seventh Item-->
        <div class="whiteBoxSolid">
            <div class="shopImage">
                <img src="Images/shopItem7.jpg" width="200" height="200" />
            </div>
            <p class="auto-style1">
                Name: Nature Made Super B-Complex<br />
                <br />
                Price: £14.00<br />
                <br />
                Amount: 140 capsules
                <br />
                <br />
                Description: Vitamin B is good for you.<br />
                It can help lower chances of bad things.<br />
            </p>
            <asp:Button CssClass="shopButton" ID="itemButton7" runat="server" Text="Add to Cart" OnClick="itemButton7_Click" />
        </div>
        <!--whiteBoxSolid-->
        <!-- eigth Item-->
        <div class="whiteBoxSolid">
            <div class="shopImage">
                <img src="Images/shopItem8.jpeg" width="200" height="200" />
            </div>
            <p class="auto-style2">
                Name: KirkLand, Vitamin E<br />
                <br />
                Price: £14.00<br />
                <br />
                Amount: 500 Soft Gels
                <br />
                <br />
                Description: Vitamin E is good for you.<br />
                It can help lower chances of bad things.<br />
            </p>
            <asp:Button CssClass="shopButton" ID="itemButton8" runat="server" Text="Add to Cart" OnClick="itemButton8_Click" />
        </div>
        <!--whiteBoxSolid-->
        <!-- ninth Item-->
        <div class="whiteBoxSolid">
            <div class="shopImage">
                <img src="Images/shopItem9.jpg" width="200" height="200" />
            </div>
            <p class="auto-style3">
                Name: Nathans Natural, Vitamin C<br />
                <br />
                Price: £9.00<br />
                <br />
                Amount: 180 Tablets
                <br />
                <br />
                Description: Vitamin C is good for you.<br />
                It can help lower chances of bad things.<br />
            </p>
            <asp:Button CssClass="shopButton" ID="itemButton9" runat="server" Text="Add to Cart" OnClick="itemButton9_Click" />
        </div>
        <!--whiteBoxSolid-->
    </div>
    <!--shopBox-->
</asp:Content>

