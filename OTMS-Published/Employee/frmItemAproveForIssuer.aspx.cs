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

public partial class Employee_frmItemAproveForIssuer : System.Web.UI.Page
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
        Session["EID"] = Session["EmpId"];
        int empid = Convert.ToInt32(Session["EID"]);
        clsItems obj = new clsItems();
        GridView1.DataSource = obj.GetItemsNotChecked(empid);
        GridView1.DataBind();
        if (GridView1.Rows.Count == 0)
            lblMessage.Text = "No Items for Approve";
    
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        clsItems obj = new clsItems();

        if (obj.UpadateCheckState(Convert.ToInt32(e.CommandArgument)) > 0)
        {
            lblMessage.Text = "success fully approved";
            GetData();
        }
        else 
        { 
            lblMessage.Text = "Not Approved"; 
        }
        
    }
}
