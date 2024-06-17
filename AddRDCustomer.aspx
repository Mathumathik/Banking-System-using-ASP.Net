<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddRDCustomer.aspx.cs" Inherits="ASPmini.AddRDCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 46px;
        }
        .auto-style2 {
            margin-left: 44px;
        }
        .auto-style3 {
            margin-left: 25px;
        }
        .auto-style4 {
            margin-left: 35px;
        }
        .auto-style5 {
            margin-left: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br />

         <center> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Account Number :"></asp:Label>
    <asp:TextBox ID="txtNumber" runat="server" Width="187px" CssClass="auto-style4" OnTextChanged="txtNumber_TextChanged"></asp:TextBox>
        <br />
        &nbsp;&nbsp;
        <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label8" runat="server" Text="Customer Name :"></asp:Label>
    <asp:TextBox ID="txtCustomerName" runat="server" Width="187px" CssClass="auto-style4"></asp:TextBox>
        <br />
        &nbsp;&nbsp;
        <br />
&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Account Type: "></asp:Label>
        &nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style3" Height="16px" Width="197px">
            <asp:ListItem>select</asp:ListItem>
            <asp:ListItem>Current</asp:ListItem>
            <asp:ListItem>Saving</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Opening Balence: "></asp:Label>
        &nbsp;
    <asp:TextBox ID="txtOpeningBal" runat="server" Width="187px" CssClass="auto-style4"></asp:TextBox>
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Gender :"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtGender" runat="server" CssClass="auto-style5" Width="198px" ></asp:TextBox><br /><br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Phono Number :"></asp:Label>
    <asp:TextBox ID="txtPhone" runat="server" CssClass="auto-style2" Height="23px" Width="197px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /><br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Address :"></asp:Label>
    <asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style1" Width="198px"></asp:TextBox><br /><br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="Email :"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style1" Width="195px"></asp:TextBox><br /><br /><br />
    
     <asp:Button ID="Button1" runat="server" Text="Submit" OnClientClick="window.open('RecurringDeposir.aspx');" OnClick="Button1_Click1" />
   </center>
</asp:Content>
