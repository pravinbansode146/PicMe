using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class User_CustomerLogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    PicDataSet ds = new PicDataSet();
    DataTable dt = new DataTable();
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select uname,upassword from Registration where uname='" + txtuser.Text + "' and upassword='" + txtpassword.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        int Count = dt.Rows.Count;
        if (Count > 0)
        {
            Session["custname"] = txtuser.Text;
            Response.Redirect("~/Customer/home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script lenguage='javascript'>alert('Invalid username and passward')</script>");

        }
        cn.Close();


    }
}