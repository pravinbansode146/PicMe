using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class User_ProductCategoryaspx : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cat1;
        Button btn = sender as Button;
        cat1= btn.CommandArgument;
        Session["cat"] = cat1.ToString();
        DataList2.Visible = true;
    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //Button btn = sender as Button;
        //int a = Convert.ToInt32(btn.CommandArgument);
        //Session["pid"] = a;

        //cn.Open();
        //cmd.CommandText = "insert Into Cart value(" + a + ")";
        //cmd.Connection = cn;
        //cmd.ExecuteNonQuery();
        //cn.Close();
        //ClientScript.RegisterStartupScript(Page.GetType(), "Submit", "<script language='javascript'>alert('Added to Cart')</script>");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn = sender as ImageButton;
        int a = Convert.ToInt32(btn.CommandArgument);
        Session["pid"] = a;
        Response.Redirect("~/User/Product Details.aspx");

    }
}