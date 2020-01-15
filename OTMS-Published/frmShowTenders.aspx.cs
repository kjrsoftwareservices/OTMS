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

public partial class frmShowTenders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetData();
        }
    }
    public void GetData()
    {
        clsTenderItem obj = new clsTenderItem();
        GridView1.DataSource = obj.GetTenderItems();
        GridView1.DataBind();
    
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        foreach (GridViewRow var in GridView1.Rows)
        {
            LinkButton l1 = (LinkButton)var.FindControl("c1");
            l1.PostBackUrl ="~/Notifications/"+ e.CommandArgument.ToString();

                             
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetData();
    }
}
