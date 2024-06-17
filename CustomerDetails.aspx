<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="ASPmini.CustomerDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>  Customer Details</h1>

 

    <asp:Button ID="btnAddCustomer" runat="server" Text="Add Customer" OnClientClick="window.open('Addcustomer.aspx');" />
       
   
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
             <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="AccountNumber" HeaderText="AccountNumber" SortExpression="AccountNumber" />
            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
            <asp:BoundField DataField="AccountType" HeaderText="AccountType" SortExpression="AccountType" />
            <asp:BoundField DataField="TransactionType" HeaderText="TransactionType" SortExpression="TransactionType" />
            <asp:BoundField DataField="Credit" HeaderText="Credit" SortExpression="Credit" />
            <asp:BoundField DataField="Debit" HeaderText="Debit" SortExpression="Debit" />
            <asp:BoundField DataField="TransactionDate" HeaderText="TransactionDate" SortExpression="TransactionDate" />
            <asp:BoundField DataField="MainBalance" HeaderText="MainBalance" SortExpression="MainBalance" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            
           
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPProjectConnectionString10 %>" DeleteCommand="DELETE FROM [AccountTransaction] WHERE [ID] = @ID" InsertCommand="INSERT INTO [AccountTransaction] ([CustomerName], [AccountType], [TransactionType], [Credit], [Debit], [TransactionDate], [MainBalance], [AccountNumber]) VALUES (@CustomerName, @AccountType, @TransactionType, @Credit, @Debit, @TransactionDate, @MainBalance, @AccountNumber)" SelectCommand="SELECT * FROM [AccountTransaction]" UpdateCommand="UPDATE [AccountTransaction] SET [CustomerName] = @CustomerName, [AccountType] = @AccountType, [TransactionType] = @TransactionType, [Credit] = @Credit, [Debit] = @Debit, [TransactionDate] = @TransactionDate, [MainBalance] = @MainBalance, [AccountNumber] = @AccountNumber WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="AccountType" Type="String" />
            <asp:Parameter Name="TransactionType" Type="String" />
            <asp:Parameter Name="Credit" Type="Int32" />
            <asp:Parameter Name="Debit" Type="Int32" />
            <asp:Parameter DbType="Date" Name="TransactionDate" />
            <asp:Parameter Name="MainBalance" Type="Int32" />
            <asp:Parameter Name="AccountNumber" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="AccountType" Type="String" />
            <asp:Parameter Name="TransactionType" Type="String" />
            <asp:Parameter Name="Credit" Type="Int32" />
            <asp:Parameter Name="Debit" Type="Int32" />
            <asp:Parameter DbType="Date" Name="TransactionDate" />
            <asp:Parameter Name="MainBalance" Type="Int32" />
            <asp:Parameter Name="AccountNumber" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
    
</asp:Content>
