<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageAdmin.aspx.cs" Inherits="Admin_ManageAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 100%;
        }
        .style11
        {
            width: 70%;
        }
        .style12
        {
            height: 75px;
            font-size: large;
            color: #FFFFFF;
        }
        .style13
        {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="5" cellspacing="0" class="style10">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table cellpadding="5" cellspacing="0" class="style11">
                    <tr>
                        <td class="style12" colspan="2" 
                            style="text-align: center; background-color: #0066CC">
                            <strong style="background-color: #0066CC">Manage Admin</strong></td>
                    </tr>
                    <tr>
                        <td>
                            Admin</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            New
                            Password</td>
                        <td class="style13">
                            <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Button ID="btnupdate" runat="server" ForeColor="White" 
                                onclick="btnupdate_Click" style="font-weight: 700; background-color: #0066CC" 
                                Text="Update" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

