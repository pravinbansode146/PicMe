<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customerpanel.master" AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="Customer_MyOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="5" cellspacing="0" class="style3">
        <tr>
            <td>
                <table cellpadding="4" cellspacing="0" class="style3">
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                                GridLines="Vertical" DataKeyNames="oid">
                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" />
                                    <asp:BoundField DataField="oid" HeaderText="oid" SortExpression="oid" />
                                    <asp:BoundField DataField="odate" HeaderText="odate" SortExpression="odate" />
                                    <asp:BoundField DataField="custname" HeaderText="custname" 
                                        SortExpression="custname" />
                                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                    <asp:BoundField DataField="address" HeaderText="address" 
                                        SortExpression="address" />
                                    <asp:BoundField DataField="contact" HeaderText="contact" 
                                        SortExpression="contact" />
                                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                    <asp:BoundField DataField="picode" HeaderText="picode" 
                                        SortExpression="picode" />
                                    <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                                    <asp:BoundField DataField="ostatus" HeaderText="ostatus" 
                                        SortExpression="ostatus" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT DISTINCT * FROM [Order] WHERE ([custname] = @custname)"
                                
                                 DeleteCommand ="delete from [Order] where [oid]=@oid"
                                >
                                <SelectParameters>
                                    <asp:SessionParameter Name="custname" SessionField="custname" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

