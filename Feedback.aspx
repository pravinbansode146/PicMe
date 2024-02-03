<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="User_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style25
        {
            width: 100%;
        }
        .style29
        {
            width: 100%;
        }
        .style30
        {
            font-size: x-large;
            text-align: center;
            width: 878px;
        }
        .style32
        {
            width: 878px;
        }
        .style31
        {
            height: 65px;
            width: 878px;
        }
        .style33
        {
            width: 878px;
            text-align: center;
        }
        .style34
        {
            text-align: center;
        }
    .style35
    {
        text-decoration: underline;
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="4" cellspacing="1" class="style25">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
            <table cellpadding="4" class="style29">
                <tr>
                    <td class="style30">
                        <strong><em style="text-align: center">FEEDBACK</em></strong></td>
                    <td rowspan="8" class="style34">
                        <asp:Image ID="Image6" runat="server" Height="370px" 
                            ImageUrl="~/Image/FeedaBack.png" Width="297px" style="text-align: right" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        Give Your Suggestions For Better
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        Customer Satisfaction</td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style32">
                        <asp:TextBox ID="txtfname" runat="server" placeholder="Your Name" Height="40px" 
                            style="text-align: center" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style32">
                        <asp:TextBox ID="txtcontact" runat="server" placeholder="Enter Contact No" 
                            Height="40px" Width="350px" style="text-align: center"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style31" style="text-align: center">
                        <asp:TextBox ID="txtemail" runat="server" placeholder="Enter Email Address " 
                            Height="40px" Width="350px" style="text-align: center"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style32">
                        <asp:TextBox ID="txtmsg" runat="server" placeholder="Share Your Thoughts" 
                            Height="40px" TextMode="MultiLine" 
                            Width="350px" style="text-align: center"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style33">
                        <asp:Image ID="Image7" runat="server" Height="129px" style="text-align: center" 
                            Width="137px" />
                        <br />
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                        <br />
                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style32">
                        <asp:Button ID="btnfupload" runat="server" 
                            style="font-weight: 700; color: #FFFFFF; background-color: #3399FF" 
                            Text="Upload" Height="40px" Width="100px" onclick="btnfupload_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="style32">
                        <asp:Button ID="btnshare" runat="server" Height="40px" 
                            style="font-weight: 700; color: #FFFFFF; background-color: #3399FF" 
                            Text="Share" Width="150px" onclick="btnshare_Click" />
                    </td>
                </tr>
            </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <span class="style35"><strong><em>REAL Client Testimonials...</em></strong></span><br />
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatColumns="3">
                    <ItemTemplate>
                        <table align="center" cellpadding="3" cellspacing="1" class="style25">
                            <tr>
                                <td>
                                    <asp:Image ID="Image8" runat="server" Height="282px" 
                                        ImageUrl='<%# Eval("image") %>' Width="307px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("fname") %>' 
                                        style="font-weight: 700; text-decoration: underline; color: #FF0000;"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("fmsg") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT DISTINCT [fname], [fmsg], [image] FROM [Feedback]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

