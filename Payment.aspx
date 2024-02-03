<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customerpanel.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Customer_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style29
        {
            width: 40%;
            border: 1px solid #000000;
        }
        .style30
        {
            font-size: large;
            text-decoration: underline;
        }
        .style33
        {
            width: 194px;
        }
        .style34
        {
            width: 66%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="4" class="style27">
        <tr>
            <td class="style30" style="text-align: center">
                <strong>Payment Details</strong></td>
        </tr>
        <tr>
            <td>
                <table align="center" cellpadding="5" cellspacing="1" class="style29">
                    <tr>
                        <td class="style33">
                            Payment ID
                        </td>
                        <td class="style34">
                            <asp:Label ID="lblpid" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style33">
                            Order ID
                        </td>
                        <td class="style34">
                            <asp:Label ID="lbloid" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style33">
                            Payment Date</td>
                        <td class="style34">
                            <asp:Label ID="lblpdate" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style33">
                            Customer Name</td>
                        <td class="style34">
                            <asp:Label ID="lblcname" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style33">
                            Total Amount</td>
                        <td class="style34">
&nbsp;<asp:Label ID="lbltotalamt" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style33">
                            GST
                        </td>
                        <td class="style34">
                            <asp:Label ID="lblgst" runat="server" Text="3"></asp:Label>
                        &nbsp; %</td>
                    </tr>
                    <tr>
                        <td class="style33">
                            Net Amount</td>
                        <td class="style34">
                            <asp:Label ID="lblnetamt" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            Select Payment Mode
                            <asp:RadioButton ID="RadioButton1" runat="server" 
                                oncheckedchanged="RadioButton1_CheckedChanged" Text="COD" 
                                AutoPostBack="True" GroupName="q" />
                            <asp:RadioButton ID="RadioButton2" runat="server" 
                                oncheckedchanged="RadioButton2_CheckedChanged" Text="UPI or Scan QR code" 
                                AutoPostBack="True" GroupName="q" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Panel ID="Panel1" runat="server" Height="238px" Width="641px" 
                                Visible="False">
                                <br />
                                <asp:Image ID="Image6" runat="server" Height="204px" Width="246px" 
                                    ImageUrl="~/Images/Scan QR.jpg" />
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Button ID="btnconforder" runat="server" onclick="btnconforder_Click" 
                                style="background-color: #FF66FF" Text="Confirm Order" />
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

