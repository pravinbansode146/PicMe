<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="CustomerLogin.aspx.cs" Inherits="User_CustomerLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style22
    {
        text-align: center;
        height: 51px;
        color: #000000;
        font-size: x-large;
    }
    .style23
    {
        font-size: medium;
    }
    .style24
    {
        font-family: Arial, Helvetica, sans-serif;
    }
    .style25
    {
        color: #CC0099;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
<table align="center" cellpadding="5" style="text-align: center" 
    cellspacing="2" width="50%">
    <tr>
        <td colspan="2" class="style22" 
                style="font-weight: 700; ">
                Customer Login
                <hr />
            <span class="style23" 
                    style="color: rgb(20, 20, 20); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                If you are already registered, please log in.<br /></span>
        </td>
    </tr>
    <tr>
        <td style="font-family: Arial, Helvetica, sans-serif">
                User Name</td>
        <td>
            <asp:TextBox ID="txtuser" runat="server" Height="40px" Width="350px" 
                    style="font-family: 'Ink Free'" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-family: Arial, Helvetica, sans-serif">
                Password</td>
        <td>
            <asp:TextBox ID="txtpassword" runat="server" Height="40px" TextMode="Password" 
                    Width="350px" style="font-family: 'Ink Free'"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center; font-family: 'Ink Free';">
            <br />&nbsp;<asp:Button ID="btnsubmit" runat="server" Text="Log In" Width="200px" 
                    BackColor="Black" ForeColor="#FFFFFF" 
                    
                    style="text-align: center; border-radius:15px; font-weight: 700; background-color: #000000; font-family: Arial, Helvetica, sans-serif;" 
                    Height="40px" BorderStyle="None" onclick="btnsubmit_Click" />
            <br />
            <br />
            <span style="color: rgb(117, 117, 117); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(242, 242, 242); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Registering for this site allows you to access your order status and history. 
                Just fill in the above fields, and we&#39;ll get a new account set up for you in no 
                time. We will only ask you for information necessary to make the purchase 
                process faster and easier.</span><br />
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#CC0099" 
                NavigateUrl="~/User/Customer Registration.aspx" 
                style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: 700; color: #003366">Don&#39;t have an account - Create Account</asp:HyperLink>
            <br />
            <br />
            <br />
        </td>
    </tr>
</table>
<br />
</asp:Content>

