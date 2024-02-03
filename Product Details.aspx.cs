using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Product_Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        int a = Convert.ToInt32(btn.CommandArgument);
        Session["pid"] = a;
        Response.Redirect("~/User/UserLogin.aspx");
    }
}