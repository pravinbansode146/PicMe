<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Contact Us.aspx.cs" Inherits="User_Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
    {
        width: 100%;
    }
    .style9
        {
            font-size: medium;
            color: #000000;
        }
        .style8
        {
            font-size: medium;
            text-align: justify;
            color: #000000;
        }
        .style11
    {
        height: 199px;
        text-align: left;
            width: 634px;
        }
        .style6
        {
            width: 94%;
            text-align: center;
            font-family: "Ink Free";
        }
        .style7
        {
            text-align: center;
            font-weight: 700;
            font-size: x-large;
            font-family: Century;
        }
        .style13
        {
            font-size: medium;
            text-align: left;
            color: #000000;
            width: 312px;
            font-family: Century;
        }
        .style21
        {
            height: 199px;
            text-align: left;
            width: 941px;
            font-size: large;
        }
        .style25
        {
            font-family: Century;
        }
        .style26
        {
            height: 199px;
            text-align: right;
            width: 48%;
            font-size: large;
        }
        .style27
        {
            width: 743px;
        }
        .style28
        {
            text-align: right;
        }
        .style29
        {
            width: 100%;
        }
        .style30
        {
            font-size: x-large;
            text-align: center;
            width: 591px;
        }
        .style31
        {
            height: 65px;
            width: 591px;
        }
        .style32
        {
            width: 591px;
        }
        .style33
        {
            width: 591px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="5" cellspacing="0" style="text-align: center">
    <tr>
        <td class="style26">
            <asp:ImageButton ID="ImageButton6" runat="server" Height="293px" 
                ImageUrl="~/Images/support 2.png" Width="281px" />
        </td>
        <td class="style27">
    <table align="center" cellpadding="5" cellspacing="0" class="style6">
        <tr>
            <td class="style7" colspan="2">
                Enquiry</td>
        </tr>
        <tr>
            <td class="style13">
                Name </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="40px" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Mobile No </td>
            <td>
                <asp:TextBox ID="txtmobileno" runat="server" Height="40px" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Message</td>
            <td>
                <asp:TextBox ID="txtmessage" runat="server" Height="115px" TextMode="MultiLine" 
                    Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <span class="style25">&nbsp;
                
                </span>
                
                <asp:Button ID="btnsubmit" runat="server" BackColor="#0066FF" ForeColor="White" 
                    Height="40px" Text="Submit" Width="120px" onclick="btnsubmit_Click" 
                    CssClass="style25" />
                
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;</td>
        </tr>
    </table>
        </td>
    </tr>
    <tr>
        <td class="style28" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style28" colspan="2">
            <span class="style9">Reach Out to</span><span class="style8"> us<br />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="28px" 
                        ImageUrl="~/Images/A015.png" Width="40px" />
            <asp:ImageButton ID="ImageButton2" runat="server" Height="28px" 
                        ImageUrl="~/Images/A014.png" Width="40px" 
                        PostBackUrl="https://instagram.com/siya_jewellery_and_cosmetics?igshid=YmMyMTA2M2Y=" />
            <asp:ImageButton ID="ImageButton3" runat="server" Height="28px" 
                        ImageUrl="~/Images/A013.png" Width="40px" />
            <asp:ImageButton ID="ImageButton4" runat="server" Height="28px" 
                        ImageUrl="~/Images/A012.png" Width="40px" />
            <br />Support- Pallavi Cosmetics &amp; Imitation Jewellery Shoppy
                    <br />Indira Nagar Near Civil Hospital Sangli<br />Sangli- 416416, Maharashtra.<br />
            e-mail Address - pallavimane146@gmail.com
                    <br />Contact Us - +91 7666656710, 9356569102</span><br class="style8" />
            <span class="style8">Project By- Pravin Bansode, 
                            Radhika Bhandare, Sumit Desai &amp; Sonali Bansode.</span></td>
    </tr>
</table>
</asp:Content>

