<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="Week11.NewAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Add New Account</h2>
    <asp:Table ID="Table1" runat="server" CellSpacing="25" Width="402px">
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtName" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="lblType" runat="server" Text="Type: "></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtType" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="lblAmount" runat="server" Text="Amount: "></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtAmount" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="lblCountry" runat="server" Text="Country: "></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtCountry" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><asp:Label ID="lblImage" runat="server" Text="Image: "></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="txtImage" runat="server"></asp:TextBox> 
                <asp:Button ID="Button1" runat="server" Text="Button" /></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_click"/><asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
</asp:Content>