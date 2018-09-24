<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTemplate.master" AutoEventWireup="true" CodeFile="Calorie.aspx.cs" Inherits="Calorie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 15px;
        }
        .auto-style2 {
            margin-left: 24px;
        }
        .auto-style3 {
            border: 2px solid black;
            margin: auto;
            width: 456px;
            padding: 20px 20px 20px 20px;
            background-color: white;
            border-radius: 25px;
            min-height: 200px;
            opacity: 0.9;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- This page displays the calorie counter page where users can Track there calories,
        consumed and used for the day. -->
    <!-- auto-style3 -->
    <div class="auto-style3">
        <asp:Label ID="lblStatus" runat="server"></asp:Label>
        <asp:Label ID="lblTitle" runat="server" Text="Calorie Counter"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblSex" runat="server" Text="Sex: " ></asp:Label>
        <asp:RadioButton ID="rbMale" runat="server" GroupName="sex" Text="Male"  />
&nbsp;<asp:RadioButton ID="rbFemale" runat="server" GroupName="sex" Text="Female" />
&nbsp;<br />
        <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
&nbsp;<asp:TextBox ID="txtAge" runat="server" CssClass="auto-style1" Width="84px">0</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblRemainingCal" runat="server" Text="Remaining Calories: "></asp:Label>
        <asp:Label ID="lblKcalLeft" runat="server" Text="0"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="*required Age" InitialValue="0"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblHeight" runat="server" Text="Height"></asp:Label>
&nbsp;<asp:TextBox ID="txtHeight" runat="server" Width="81px">0</asp:TextBox>
        <asp:Label ID="lblcm" runat="server" Text="cm"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblEaten" runat="server" Text="Eaten:"></asp:Label>
        <asp:TextBox ID="txtEaten" runat="server" CssClass="auto-style2" Width="96px">0</asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfvHeight" runat="server" ControlToValidate="txtHeight" ErrorMessage="*required height" InitialValue="0"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblWeight" runat="server" Text="Weight"></asp:Label>
&nbsp;<asp:TextBox ID="txtWeight" runat="server" Width="76px">0</asp:TextBox>
        <asp:Label ID="lblkg" runat="server" Text="kg"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblExercise" runat="server" Text="Exercise:"></asp:Label>
&nbsp;<asp:TextBox ID="txtExercise" runat="server" Width="100px">0</asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfvWeight" runat="server" ControlToValidate="txtWeight" ErrorMessage="*required weight" InitialValue="0"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="lblCalc" runat="server" OnClick="lblCalc_Click" Text="Set Calories" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="lblFinalCalories" runat="server" Text="Calculate" OnClick="lblFinalCalories_Click" />
        <br />
        <strong>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;!!!!BUY IN STORE!!!!</strong><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:AdRotator ID="adrAdvert" runat="server" AdvertisementFile="~/Adverts.xml" Height="200px" Width="200px" />
        <strong>&nbsp;</strong>
    </div>
    <!-- auto-style3 -->
</asp:Content>

