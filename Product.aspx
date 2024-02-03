<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="User_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 90%;
            
        }
    .style7
    {
        width: 791px;
        text-align: center;
            font-family: "Ink Free";
        }
        .style11
        {
            font-size: medium;
            color: #000000;
            width: 446px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="3" class="style1" 
    style="height: 909px; width: 78%;">
        <tr>
            <td align="center">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatColumns="4" RepeatDirection="Horizontal" Width="60%" 
                    style="text-align: center" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged">
                    <ItemTemplate>
                        <table align="center" cellpadding="10" cellspacing="5" class="style6">
                            <tr>
                                <td class="style7">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        CommandArgument='<%# Eval("pname") %>' Height="147px" 
                                        ImageUrl='<%# Eval("pimage") %>' Width="218px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    <asp:Label ID="Label1" runat="server" style="font-family: 'Ink Free'" 
                                        Text='<%# Eval("pname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    Rs -<asp:Label ID="Label2" runat="server" Text='<%# Eval("pprice") %>' 
                                        style="font-family: 'Ink Free'"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    <asp:Button ID="Button1" runat="server" Text="Add To Cart" 
                                        style="font-weight: 700; color: #FFFFFF; background-color: #3399FF" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Product]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

