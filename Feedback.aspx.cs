using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class User_Feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();

    public void clear()
    {
        txtfname.Text = "";
        txtcontact.Text = "";
        txtemail.Text = "";
        txtmsg.Text = "";
        Image7.ImageUrl = "";
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnfupload_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile == true)
        {
            FileUpload2.SaveAs(Server.MapPath("~//Images//" + FileUpload2.FileName));
            Image7.ImageUrl = "~//Images//" + FileUpload2.FileName;
        }
    }
    protected void btnshare_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Feedback values('" + txtfname.Text + "'," + txtcontact.Text + ",'" + txtemail.Text + "','"+txtmsg.Text+"','" + Image7.ImageUrl + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Share", "<script language='javascript'>alert('Thank You For the Response')</script>");
        clear();
    }
}