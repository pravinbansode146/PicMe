using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Customer_MyCart : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    SqlDataReader dr;
    DataTable dt = new DataTable();

    string z = "Inprocess";
    string s, s1, s2;
    string st, st1, st2, status = "Inprocess", cat, category;

    int a;
    int p;
    int b;
    string pp;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count (oid) from [Order]";
        cmd.Connection=cn;
        int x=Convert.ToInt32(cmd.ExecuteScalar());
        x++;
        lbloid.Text=x.ToString();
        cn.Close();

        lblname.Text= Session["custname"].ToString();
        lbldate.Text =System.DateTime.Now.ToShortDateString();
        
        cn.Open();
        cmd.CommandText = "select sum(total) from Cartdetails where custname='"+lblname.Text +"'";
        double amt=Convert.ToDouble(cmd.ExecuteScalar());
        cmd.Connection=cn;
        lbltotal.Text =amt.ToString();
        cn.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //DropDownList q = sender as DropDownList;

        //GridViewRow row = (GridViewRow)q.NamingContainer;
        //int price= Convert.ToInt32(row.Cells[3].Text);
        //Label lbltot = row.FindControl("lbltotal") as Label;
        //String s= Convert.ToString(price*Convert.ToInt32(q.SelectedItem.Text));
        //lbltot.Text=s;
    }

    protected void btnplaceorder_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            int id = Convert.ToInt32(GridView1.Rows[i].Cells[0].Text);
            int oid = Convert.ToInt32(lbloid.Text); 
            string name = Session["custname"].ToString();
            int p = Convert.ToInt32(GridView1.Rows[i].Cells[5].Text);
            int q = Convert.ToInt32(GridView1.Rows[i].Cells[4].Text);
            int t = Convert.ToInt32(GridView1.Rows[i].Cells[6].Text);

            cn.Open();
            cmd.CommandText = "insert into orderdetails values(" + oid + "," + id + ",'" + name + "'," + p + "," + q + "," + t + ")";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
        }
            cn.Open();
            cmd.CommandText = "insert into [order] values(" + lbloid.Text + ",'" + lbldate.Text + "','" + lblname.Text + "','" + txtname.Text + "','" + txtaddress.Text + "'," + txtcontact.Text + ",'" + txtcity.Text + "'," + txtpin.Text + "," + lbltotal.Text + ",'" + status + "')";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript (Page.GetType(), "save", "<Script language='javascript'>alert('Redirecting To Payment Page')</Script>");
           
            Session["id"] = lbloid.Text;
            Session["total"] = lbltotal.Text;
            Response.Redirect("~//Customer//Payment.aspx");
    }
    public void Clear()
    {
    

    }
}