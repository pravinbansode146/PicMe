<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customerpanel.master" AutoEventWireup="true" CodeFile="Edit Profile.aspx.cs" Inherits="Customer_Edit_Profile" %>

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
        <td style="text-align: center">
            <asp:Image ID="Image6" runat="server" Height="200px" 
                ImageUrl="~/Image/Admin-Profile-PNG-Clipart.png" Width="200px" />
        </td>
    </tr>
    <tr>
        <td>
            <table cellpadding="5" cellspacing="0" class="style3">
                <tr>
                    <td align="center">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                            DataSourceID="SqlDataSource1" Height="271px" Width="533px">
                            <Fields>
                                <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                                <asp:BoundField DataField="uaddress" HeaderText="uaddress" 
                                    SortExpression="uaddress" />
                                <asp:BoundField DataField="uemail" HeaderText="uemail" 
                                    SortExpression="uemail" />
                                <asp:BoundField DataField="umobile" HeaderText="umobile" 
                                    SortExpression="umobile" />
                                <asp:BoundField DataField="ugender" HeaderText="ugender" 
                                    SortExpression="ugender" />
                                <asp:BoundField DataField="upassword" HeaderText="upassword" 
                                    SortExpression="upassword" />
                                <asp:CommandField ShowEditButton="True" />
                            </Fields>
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Registration] WHERE ([uname] = @uname)"
                             UpdateCommand ="Update [Registration] set[uname]=@uname, [uaddress]=@uaddress,[uemail]=@uemail,[umobile]=@umobile,[ugender]=@ugender,[upassword]=@upassword where [uname]=@uname">
                            <SelectParameters>
                                <asp:SessionParameter Name="uname" SessionField="custname" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

