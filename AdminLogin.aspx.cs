using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Admin_AdminLogin : System.Web.UI.Page
{

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        PicDataSet ds = new PicDataSet();
        DataTable dt = new DataTable();

        cn.Open();
        cmd.CommandText = "select Admin, Password from Adminlogin where Admin='"+txtadmin.Text+"' and Password='"+txtpassword.Text+"'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        int Count = dt.Rows.Count;
        if (Count > 0)
        {
            Response.Redirect("~/Admin/Home.aspx");
        }
        else 
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script lenguage='javascript'>alert('Invalid username and passward')</script>");

        }
        cn.Close();
    }
}