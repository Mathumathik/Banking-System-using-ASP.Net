<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AccountDetails.aspx.cs" Inherits="ASPmini.AccountDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 52px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <center> <h1>        Account Transaction</h1>

        <asp:Label ID="Label2" runat="server" Text="Enter Account Number :"></asp:Label>
    <asp:TextBox ID="txtAccountNo" runat="server" Width="187px" CssClass="auto-style4" style="margin-left: 46px" OnTextChanged="txtAccountNo_TextChanged"></asp:TextBox>
        <br />
              <br /> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="Label1" runat="server" Text="Customer Name :"></asp:Label> 
        <asp:TextBox ID="txtName" runat="server" Width="187px" CssClass="auto-style4" style="margin-left: 43px"></asp:TextBox>
        <br />
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="Label12" runat="server" Text="Main Balance:"></asp:Label>   &nbsp;&nbsp;  
        <asp:TextBox ID="txtbal" runat="server" Width="187px" CssClass="auto-style4" style="margin-left: 43px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Account Type :"></asp:Label>   
        <asp:DropDownList ID="drpAccountType" runat="server" AutoPostBack="True" Width="166px" CssClass="auto-style1">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Saving</asp:ListItem>
            <asp:ListItem>FD</asp:ListItem>
            <asp:ListItem>RD</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" Text="Transaction Type :"></asp:Label>   
        &nbsp;   
        <asp:DropDownList ID="drpTransactionType" runat="server" AutoPostBack="True" Width="166px" CssClass="auto-style1">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Credit</asp:ListItem>
            <asp:ListItem>Debit</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        &nbsp;<br />     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
        <asp:Label ID="Label9" runat="server" Text="Amount :"></asp:Label>
    <asp:TextBox ID="txtamt" runat="server" CssClass="auto-style1" Width="195px" style="margin-left: 34px"></asp:TextBox><br /><br />
        <asp:Button ID="butSubmit" runat="server" Text="Submit" OnClick="butSubmit_Click" />
    </center>
 </asp:Content>
