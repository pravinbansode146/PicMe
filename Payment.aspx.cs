using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Customer_Payment : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();


    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count (pid) from payment";
        cmd.Connection = cn;
        int x = Convert.ToInt32(cmd.ExecuteScalar());
        x++;
        lblpid.Text = x.ToString();
        cn.Close();

        lbloid.Text=Session["id"].ToString();
        lblcname.Text=Session["custname"].ToString();
        lblpdate.Text=System.DateTime.Now.ToShortDateString();
        lbltotalamt.Text = Session["total"].ToString();
        double t= Convert.ToDouble(lbltotalamt.Text);
        double GST=Convert.ToDouble (lblgst.Text);
        int net=Convert.ToInt32 ( t + (t*GST)/100);
        lblnetamt.Text = net.ToString();
    }
    protected void btnconforder_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into payment values(" + lblpid.Text + "," + lbloid.Text + ",'" + lblpdate.Text + "','" + lblcname.Text + "'," + lblgst.Text + "," + lblnetamt.Text + ",@p1," + lbltotalamt.Text + ")";
        if (RadioButton1.Checked == true)
            cmd.Parameters.AddWithValue("@p1", RadioButton1.Text);
        else
            cmd.Parameters.AddWithValue("@p1", RadioButton2.Text);
        
        cmd.Connection =cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        
        cn.Open();
        cmd.CommandText = "delete from cartdetails where custname='"+lblcname.Text+"'";
        cmd.Connection=cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<Script language='javascript'>alert('Order Placed Successfuly')</Script>");
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            Panel1.Visible = false;
        }
  
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            Panel1.Visible = true;
        }
  
    }
}