<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customerpanel.master" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="Customer_MyCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style29
        {
            height: 31px;
            text-align: center;
        }
        .style30
        {
            width: 70%;
        }
        .style31
        {
            text-align: center;
        }
        .style32
        {
            font-size: x-large;
        }
        .style33
        {
            text-align: center;
            font-size: x-large;
        }
        .style34
        {
            text-align: center;
            font-size: large;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="4" cellspacing="0" class="style27">
        <tr>
            <td class="style29">
                </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="4" cellspacing="0" class="style30" align="center">
                    <tr>
                        <td class="style33" colspan="5" align="center">
                            <strong>CART DETAILS</strong></td>
                    </tr>
                    <tr>
                        <td colspan="5" style="text-align: center" align="center">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource1" Width="1123px" DataKeyNames="pid">
                                <Columns>
                                    <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
                                    <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                                    <asp:BoundField DataField="pcat" HeaderText="pcat" SortExpression="pcat" />
                                    <asp:BoundField DataField="custname" HeaderText="custname" 
                                        SortExpression="custname" />
                                    <asp:BoundField DataField="quantity" HeaderText="quantity" 
                                        SortExpression="quantity" />
                                    <asp:BoundField DataField="pprice" HeaderText="pprice" 
                                        SortExpression="pprice" />
                                    <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Cartdetails] WHERE ([custname] = @custname)"
                                 DeleteCommand="delete from [Cartdetails] where [pid]=@pid">
                                <SelectParameters>
                                    <asp:SessionParameter Name="custname" SessionField="custname" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style33" align="center" colspan="5">
                            <strong>
                            <br />
                            ORDER DETAILS<br />
                            <br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="style34" align="center">
                            Order ID
                            : 
                            <asp:Label ID="lbloid" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style34">
                            Customer Name
                            :
                            <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style34">
                            Order Date
                            :
                            <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style34" colspan="2">
                            Total Amount
                            :
                            <asp:Label ID="lbltotal" runat="server" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center" colspan="5" class="style32" align="center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center" colspan="5" class="style32" align="center">
                            <strong>SHIPPING DETAILS<br />
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="style31" align="center">
                            <asp:TextBox ID="txtname" runat="server" placeholder=" Enter Name"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="Enter Customer Name" ControlToValidate="txtname" 
                                style="font-size: small"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style31">
                            <asp:TextBox ID="txtaddress" runat="server" placeholder=" Enter Address"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="Enter Address" ControlToValidate="txtaddress" 
                                style="font-size: small"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style31">
                            <asp:TextBox ID="txtcontact" runat="server" placeholder=" Enter Contact"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="Enter Contact No" ControlToValidate="txtcontact" 
                                style="font-size: small"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style31">
                            <asp:TextBox ID="txtpin" runat="server" placeholder=" Enter PINCODE"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ErrorMessage="Enter PINCODE" ControlToValidate="txtpin" 
                                style="font-size: small"></asp:RequiredFieldValidator>
                        </td>
                        <td class="style31">
                            <asp:TextBox ID="txtcity" runat="server" placeholder=" Enter City"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ErrorMessage="Enter City Name" ControlToValidate="txtcity" 
                                style="font-size: small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center" colspan="5" align="center">
                            
                            <br />
                            
                            <asp:Button ID="btnplaceorder" runat="server" onclick="btnplaceorder_Click" 
                                Text="Place Order" ForeColor="White" 
                                style="font-weight: 700; background-color: #0066FF" />
                            
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

