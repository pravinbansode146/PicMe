<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewOrder.aspx.cs" Inherits="Admin_ViewOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="4" class="style10">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1019px">
                <Columns>
                    <asp:BoundField DataField="oid" HeaderText="oid" SortExpression="oid" />
                    <asp:BoundField DataField="odate" HeaderText="odate" SortExpression="odate" />
                    <asp:BoundField DataField="custname" HeaderText="custname" 
                        SortExpression="custname" />
                    <asp:BoundField DataField="contact" HeaderText="contact" 
                        SortExpression="contact" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="address" 
                        SortExpression="address" />
                    <asp:BoundField DataField="picode" HeaderText="picode" 
                        SortExpression="picode" />
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [oid], [odate], [custname], [contact], [name], [address], [picode], [city], [total] FROM [Order]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

