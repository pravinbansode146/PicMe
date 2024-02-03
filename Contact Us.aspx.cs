using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_Contact_Us : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();

    public void clear()
           {
                txtname.Text ="";
                txtmobileno.Text ="";
                txtmessage.Text ="";
            }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="insert Enquiry values('"+txtname.Text+"',"+txtmobileno.Text+",'"+txtmessage.Text+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        ClientScript.RegisterStartupScript (Page.GetType(), "Enquiry","<script language='JavaScript'>alert('Thank You For Visiting Us')/script>");
    }
}