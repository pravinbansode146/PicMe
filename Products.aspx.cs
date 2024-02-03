using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cat1;
        Button btn = sender as Button;
        cat1 = btn.CommandArgument;
        Session["cat"] = cat1.ToString();
        DataList2.Visible = true;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = sender as ImageButton;
        int a = Convert.ToInt32(btn.CommandArgument);
        Session["pid"] = a;
        Response.Redirect("~/Customer/Productdetails.aspx");

    }
}