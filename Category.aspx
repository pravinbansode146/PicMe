<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Admin_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            height: 28px;
        }
        .style10
        {
            width: 505px;
        }
        .style12
        {
            color: #FFFFFF;
        }
        .style13
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table align="center" cellpadding="5" cellspacing="0" width="60%">
        <tr>
            <td colspan="2" style="font-size: xx-large">
                Manage<span class="style12"> </span><span class="style13"> Category<hr />
                </span>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; text-align: justify;">
                &nbsp;&nbsp;&nbsp;
                Category Id</td>
            <td class="style10">
                <asp:TextBox ID="txtid" runat="server" BorderColor="#CCCCCC" Height="50px" 
                    Width="361px" opacity="8" 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="font-size: medium; text-align: justify;">
                &nbsp;&nbsp;&nbsp; Category Name</td>
            <td class="style10">
                <asp:TextBox ID="txtname" runat="server" BorderColor="#CCCCCC" Height="50px" 
                    Width="361px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style8" colspan="2">
                <br />
                <asp:Button ID="btnaddnew" runat="server" BorderColor="#CCCCCC" Height="30px" 
                    Text="Add New" Width="100px" onclick="btnaddnew_Click" BackColor="#0066CC" 
                    BorderStyle="None" Font-Bold="True" ForeColor="White" />
&nbsp;
&nbsp;<asp:Button ID="btnsave" runat="server" BorderColor="#CCCCCC" Height="30px" Text="Save" 
                    Width="100px" onclick="btnsave_Click" BackColor="#0066CC" 
                    BorderStyle="None" Font-Bold="True" ForeColor="White" />
&nbsp;&nbsp;
&nbsp;<asp:Button ID="btnupdate" runat="server" BorderColor="#CCCCCC" Height="30px" 
                    Text="Update" Width="100px" onclick="btnupdate_Click" BackColor="#0066CC" 
                    BorderStyle="None" Font-Bold="True" ForeColor="White" />
                &nbsp;
                &nbsp;<asp:Button ID="btndelete" runat="server" BorderColor="#CCCCCC" Height="30px" 
                    Text="Delete" Width="100px" onclick="btndelete_Click" BackColor="#0066CC" 
                    BorderStyle="None" Font-Bold="True" ForeColor="White" />
&nbsp;
&nbsp;<asp:Button ID="btnclear" runat="server" Height="30px" onclick="btnclear_Click" 
                    Text="Clear" Width="100px" BackColor="#0066CC" BorderStyle="None" 
                    Font-Bold="True" ForeColor="White" />
&nbsp;<br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="610px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="catid" HeaderText="catid" SortExpression="catid" />
                        <asp:BoundField DataField="catname" HeaderText="catname" 
                            SortExpression="catname" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Category]">
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</asp:Content>

