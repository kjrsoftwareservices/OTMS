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
using CrystalDecisions.CrystalReports.Engine;

public partial class Supplier_frmMybidTenders : System.Web.UI.Page
{
    static string prevPage = String.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            prevPage = Request.UrlReferrer.ToString();
            try
            {
                ReportDocument objdocument = new ReportDocument();
                DataSet ds = clsReport.Report1(Convert.ToInt32(Session["SupplierId"].ToString()));
                objdocument.Load(Server.MapPath("~/Supplier/Reports/MyBidTenders.rpt"));
                objdocument.SetDataSource(ds.Tables[0]);
                CrystalReportViewer1.ReportSource = objdocument;
                
            }
            catch (Exception ex)
            {

                //lblError.Text = ex.Message;
            }
        }
        Label1.Text = Session["SupplierId"].ToString();

        //CrystalReportSource1.ReportDocument.SetDatabaseLogon("sa", "123", "SERVER2", "EProcureDatabase");
        //CrystalReportViewer1.ReportSourceID = "CrystalReportSource1";

        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect(prevPage);
    }
}
