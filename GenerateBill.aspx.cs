using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

public partial class Report_GenerateBill : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    DataTable dt = new DataTable();
    ReportDocument crpt = new ReportDocument();

    protected void Page_Load(object sender, EventArgs e)
    {
        //cn.Open();
        //SqlDataAdapter da = new SqlDataAdapter("Select dbo.payment.oid, dbo.payment.pdate, dbo.payment.cname, dbo.payment.GST, dbo.payment.Netamount, dbo.payment.paymentmode, dbo.payment.totalamount, dbo.Orderdetails.pid, dbo.Product.pname, dbo.Orderdetails.pprice,dbo.Orderdetails.qty, dbo.Orderdetails.total, dbo.[Order].contact, dbo.[Order].address, dbo.[Order].city, dbo.[Order].picode, dbo.[Order].total AS Expr1 FROM     dbo.[Order] INNER JOIN dbo.Orderdetails ON dbo.[Order].oid = dbo.Orderdetails.oid INNER JOIN dbo.payment ON dbo.[Order].oid = dbo.payment.oid INNER JOIN dbo.Product ON dbo.Orderdetails.pid = dbo.Product.pid", cn);
        //DataSet ds = new DataSet();
        //da.Fill(ds, "billview1");
        //da.Fill(ds);
        //crpt.Load(Server.MapPath(@"~/Report/GenerateBill.rpt"));
        //crpt.SetDataSource(ds);
        //CrystalReportViewer1.ReportSource = crpt;
        //crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "billview1");

    }
    protected void btnbill_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("Select * from billview  where oid="+TextBox1.Text +"", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "billview");
        da.Fill(ds);
        crpt.Load(Server.MapPath(@"~/Report/GenerateBill.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "billview");
        crpt.Refresh();
        cn.Close();
    }
}