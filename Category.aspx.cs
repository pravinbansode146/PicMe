using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_Category : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Pic\\App_Data\\Pic.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnaddnew_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="select count(catid) from Category";
        cmd.Connection = cn;
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        txtid.Text=i.ToString();
        cn.Close();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Category values (" + txtid.Text + ",'" + txtname.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType (),"Save","<Script language='javascript'>alert('Data Saved Successfully') </Script>");
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "update Category set catname='"+txtname.Text +"'where catid="+txtid.Text +"";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text=GridView1.SelectedRow.Cells[1].Text;
        txtname.Text=GridView1.SelectedRow.Cells[2].Text;
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from Category where catid=" + txtid.Text + "";
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "Delete", "<Script language='javascript'>confirm('Are you Sure') </Script>");

    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtid.Text = "";
        txtname.Text = "";
    }
    
}