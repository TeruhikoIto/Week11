<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Week11.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Account</h3>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="343px" Width="555px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
            <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WorkshopConnectionString %>" DeleteCommand="DELETE FROM [tblAccount] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tblAccount] ([ID], [name], [type], [amount], [country]) VALUES (@ID, @name, @type, @amount, @country)" SelectCommand="SELECT * FROM [tblAccount]" UpdateCommand="UPDATE [tblAccount] SET [name] = @name, [type] = @type, [amount] = @amount, [country] = @country WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="amount" Type="Double" />
            <asp:Parameter Name="country" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="amount" Type="Double" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
