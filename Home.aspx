<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 100%;
        }
        .style6
        {
            width: 100%;
        }
    
#wowslider-container1 .ws_images {
	box-shadow: 0px 2px 5px 0 rgba(0, 0, 0, 0.26);
	-webkit-transition: box-shadow .5s cubic-bezier(.4,0,.2,1);
	transition: box-shadow .5s cubic-bezier(.4,0,.2,1);
}

#wowslider-container1 .ws_images{
	position: relative;
	left:0;
	top:0;
	height:100%;
	max-height:360px;
	max-width: 830px;
	vertical-align: top;
	border:none;
	overflow: hidden;
}
#wowslider-container1 .ws_images > ul{
	animation: wsBasic 12s infinite;
	-moz-animation: wsBasic 12s infinite;
	-webkit-animation: wsBasic 12s infinite;
}
#wowslider-container1 .ws_images ul{
	position:relative;
	width: 10000%; 
	height:100%;
	left:0;
	list-style:none;
	margin:0;
	padding:0;
	border-spacing:0;
	overflow: visible;
	/*table-layout:fixed;*/
}
#wowslider-container1 .ws_images ul li{
	position: relative;
	width:1%;
	height:100%;
	line-height:0; /*opera*/
	overflow: hidden;
	float:left;
	/*font-size:0;*/
	padding:0 0 0 0 !important;
	margin:0 0 0 0 !important;
}

	#wowslider-container1 .ws_controls,
	#wowslider-container1 .ws_bullets,
	#wowslider-container1 .ws_thumbs{
		display: none
	}
#wowslider-container1  .ws_bullets {
	bottom:10px;
	left:50%;
}
#wowslider-container1 .ws_bullets { 
	padding: 10px; 
}

#wowslider-container1  .ws_bullets { 
	float: left;
	position:absolute;
	z-index:70;
}

#wowslider-container1  .ws_script{
	display:none;
}
    .style7
    {
        width: 791px;
        text-align: center;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="5" cellspacing="0" class="style10">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
    <table cellpadding="5" cellspacing="0" class="style6">
        <tr>
            <td>
    <table align="center" cellpadding="3" class="style1" 
    style="height: 909px; width: 80%;">
        <tr>
            <td align="center">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatColumns="4" RepeatDirection="Horizontal" Width="77%" 
                    style="text-align: center">
                    <ItemTemplate>
                        <table align="center" cellpadding="10" cellspacing="5" class="style6">
                            <tr>
                                <td class="style7">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                        CommandArgument='<%# Eval("pname") %>' Height="172px" 
                                        ImageUrl='<%# Eval("pimage") %>' Width="237px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    Rs -<asp:Label ID="Label2" runat="server" Text='<%# Eval("pprice") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [pname], [pprice], [pimage] FROM [Product]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center">
                ©pic2022<br />
                <asp:ImageButton ID="ImageButton2" runat="server" Height="19px" 
                    ImageUrl="~/Images/Map g.png" 
                    PostBackUrl="http://maps.app.goo.gl/g6yUL2WuQzu3fZgF6" 
                    style="text-align: justify" Width="25px" />
                <span class="style8"><strong>Map Us on Google</strong></span></td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
</asp:Content>

