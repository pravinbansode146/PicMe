<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="User_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style12
        {
            width: 192px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" class="" 
        style="border: thin solid #C0C0C0;border-radius:10px;" width="80%">
        <tr>
            <td class="style14" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td valign="top">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [catname] FROM [Category]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    SelectCommand="SELECT DISTINCT * FROM [Product] WHERE ([pname] LIKE '%' + @pname + '%')">
                    <SelectParameters>
                        <asp:SessionParameter Name="pname" SessionField="search" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td valign="top" class="">
                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatColumns="4" RepeatDirection="Horizontal" Width="100%" 
                    style="text-align: center" CellPadding="5" 
                   >
                    <ItemTemplate>
                        <table align="center" cellpadding="3" cellspacing="0">
                            <tr>
                                <td class="style13">
                                    <asp:ImageButton ID="ImageButton1" runat="server" style=""
                                        CommandArgument='<%# Eval("pid") %>' Height="200px" 
                                        ImageUrl='<%# Eval("pimage") %>' Width="200px" BorderStyle="Solid" 
                                        BorderWidth="1px" BorderColor="#CCCCCC" onclick="ImageButton1_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>' 
                                        style="color: #003366; font-weight: 700;" Height="35px" Width="217px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    <asp:Image ID="Image6" runat="server" Height="15px" ImageUrl="~/Images/rs.png" 
                                        Width="15px" />
                                    <asp:Label ID="Label2" runat="server" style="color: #CC3300" 
                                        Text='<%# Eval("pprice") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>

