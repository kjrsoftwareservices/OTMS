using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
//using CrystalDecisions.CrystalReports.Engine;

public partial class Admin_frmTenderWinners : System.Web.UI.Page
{
    static string prevPage = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            prevPage = Request.UrlReferrer.ToString();
        }
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect(prevPage);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //ReportDocument objdocument = new ReportDocument();
            //DataSet ds = clsReport.Report1(Convert.ToDateTime(txtFDate.Text), Convert.ToDateTime(txtLDate.Text));
            //objdocument.Load(Server.MapPath("~/Supplier/Reports/TenderWinners.rpt"));
            //objdocument.SetDataSource(ds.Tables[0]);
            //CrystalReportViewer1.ReportSource = objdocument;
        }
        catch (Exception ex)
        {

            //lblError.Text = ex.Message;
        }

        //CrystalReportSource1.ReportDocument.SetDatabaseLogon("sa", "123", "SERVER2", "EProcureDatabase");
        //CrystalReportViewer1.ReportSourceID = "CrystalReportSource1";
    }
}
