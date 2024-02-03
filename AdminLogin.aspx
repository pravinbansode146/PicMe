<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 73%;
            margin-left: 227px;
            margin-right: 0px;
        }
        .style4
        {
            font-weight: 700;
            font-size: large;
            }
        .style5
        {
            text-align: center;
        }
        .style8
        {
            font-size: medium;
            text-align: left;
        }
        .style9
        {
            font-size: medium;
            text-align: center;
        }
        .style10
        {
            width: 1240px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="5" cellspacing="1" class="style1" width="1100px">
        <tr>
            <td style="text-align: center; background-color: #0099CC" class="style10">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/A016.png" 
                    Width="450px" />
                </td>
        </tr>
        <tr>
            <td class="style10">
                <table align="center" cellpadding="5">
                    <tr>
                        <td colspan="2" 
                            style="font-weight: 700; font-size: xx-large; text-align: center;">
                            <br />
                            Admin Login<br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Admin
                        </td>
                        <td class="style5">
                            <br />
                            <asp:TextBox ID="txtadmin" runat="server" Height="50px" Width="250px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Password</td>
                        <td class="style5">
                            <br />
                            <asp:TextBox ID="txtpassword" runat="server" Height="50px" Width="250px" 
                                TextMode="Password"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="justify" style="text-align: center">
                            <asp:Button ID="btnlogin" runat="server" Height="40px" 
                                style="font-weight: 700; text-align: center; background-color: #0099CC" 
                                Text="Log In" Width="100px" onclick="btnlogin_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style10">
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
                            <br />
                            Support- Pravin Dayanand Bansode
                            <br />
                            Indira Nagar Near Civil Hospital Sangli<br />
                            Sangli- 416416, Maharashtra.<br />
                            e-Mail Address - pravinbansode
                            <br />
                            Contact Us - +91 7666656710, 
                            7057541822</span><br class="style8" />
                            <span class="style8">Project By- Pravin Bansode, 
                            Radhika Bhandare, Sumit Desai &amp; Sonali Bansode.</span></td>
        </tr>
    </table>
    </form>
</body>
</html>
