<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customerpanel.master" AutoEventWireup="true" CodeFile="Productdetails.aspx.cs" Inherits="Customer_Productdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style12
        {
            width: 192px;
        }
        .style22
    {
        color: #CCCCCC;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<table align="center" cellpadding="5" class="style6" 
        style="border: thin solid #C0C0C0;border-radius:10px;" width="80%">
    <tr>
        <td class="style14" colspan="2">
                &nbsp;</td>
    </tr>
    <tr>
        <td valign="top">
        </td>
        <td valign="top" class="style12">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT DISTINCT * FROM [Product] WHERE ([pid] = @pid)">
                <SelectParameters>
                    <asp:SessionParameter Name="pid" SessionField="pid" Type="Int64" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatColumns="1" Width="100%" 
                    style="text-align: center" CellPadding="5" 
                  >
                <ItemTemplate>
                    <table align="center" cellpadding="3" cellspacing="0">
                        <tr>
                            <td class="style13">
                                <asp:ImageButton ID="ImageButton1" runat="server" style=""
                                        CommandArgument='<%# Eval("pname") %>' Height="300px" 
                                        ImageUrl='<%# Eval("pimage") %>' Width="500px" BorderStyle="Solid" 
                                        BorderWidth="1px" BorderColor="#CCCCCC" />
                            </td>
                            <td class="style13" style="padding: 30px; text-align: justify" valign="top">
                                <asp:Label ID="lblname" runat="server" Height="35px" 
                                        style="color: #003366; font-weight: 700; font-size: x-large;" 
                                        Text='<%# Eval("pname") %>' Width="400px"></asp:Label>
                                <br />
                                <br />
                                Brand:&nbsp;&nbsp;<asp:Label ID="lblbrand" runat="server" 
                                    Text='<%# Eval("pcompany") %>'></asp:Label>
                                &nbsp;<asp:Label ID="lblcat" runat="server" Text='<%# Eval("pcat") %>' 
                                    Visible="False"></asp:Label>
                                <asp:Label ID="lblid" runat="server" Text='<%# Eval("pid") %>' Visible="False"></asp:Label>
                                <br />
                                <br />
                                MRP:&nbsp;&nbsp;<asp:Image ID="Image6" runat="server" Height="15px" ImageUrl="~/Images/rs.png" 
                                        Width="15px" />
                                <asp:Label ID="lblprice" runat="server" style="color: #CC3300" 
                                        Text='<%# Eval("pprice") %>'></asp:Label>
                                <br />
                                <span class="style22">Inclusive All Taxes</span><br />
                                <br />
                                <asp:Label ID="Label4" runat="server" Height="80px" 
                                        Text='<%# Eval("pspecification") %>' Width="400px"></asp:Label>
                                <br />
                                Quantity<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    ForeColor="Black" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                    style="font-weight: 700">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;Total=&nbsp;
                                <asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label>
                                <br />
                                <br />
                                <asp:Button ID="Button2" runat="server" BackColor="#CC0099" BorderStyle="None" 
                                        CommandArgument='<%# Eval("pid") %>' ForeColor="White" Height="35px" 
                                        style="font-weight: 700; font-family: Arial, Helvetica, sans-serif" 
                                        Text="ADD TO CART" Width="400px" onclick="Button2_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style13">
                                    &nbsp;</td>
                            <td class="style13">
                                    &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style13">
                                    &nbsp;</td>
                            <td class="style13">
                                    &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
</asp:Content>

