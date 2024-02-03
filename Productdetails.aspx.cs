using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Customer_Productdetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int count = DataList2.Items.Count;
        for (int i = 0; i < count; i++)
        {
            Label lbl = DataList2.Items[i].FindControl("lblprice") as Label;

            double p = Convert.ToDouble(lbl.Text);
            DropDownList d = DataList2.Items[i].FindControl("DropDownList1") as DropDownList;

            int q = Convert.ToInt32(d.Text);
            double t = (p * q);

            Label lbltot = DataList2.Items[i].FindControl("lbltotal") as Label;
            lbltot.Text = t.ToString();

            Label pid = DataList2.Items[i].FindControl("lblid") as Label;
            int id = Convert.ToInt32(pid.Text);

            Label cat = DataList2.Items[i].FindControl("lblcat") as Label;
            string c = cat.Text;

            Label name = DataList2.Items[i].FindControl("lblname") as Label;
            string n = name.Text;

            string s = Session["custname"].ToString();

            cn.Open();
            cmd.CommandText = "insert into cartdetails values(" + id + ",'" +  n+ "','" + c + "','" + s + "'," + q + "," + p + "," + t + ")";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Insert", "<Script language='javascript'>alert('Product Added To Cart Successfully!!!')</Script>");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int count = DataList2.Items.Count;
        for (int i = 0; i < count; i++)
        {
            Label lbl = DataList2.Items[i].FindControl("lblprice") as Label;

            double p = Convert.ToDouble(lbl.Text);
            DropDownList d = DataList2.Items[i].FindControl("DropDownList1") as DropDownList;
            double q = Convert.ToDouble(d.Text);
            double t = (p * q);
            Label lbltot = DataList2.Items[i].FindControl("lbltotal") as Label;
            lbltot.Text = t.ToString();

        }
    }
}