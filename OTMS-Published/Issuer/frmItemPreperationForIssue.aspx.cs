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

public partial class Issuer_frmItemPreperationForIssue : System.Web.UI.Page
{
    static int itemid;
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!IsPostBack)
        {
            
           // DateTime a = DateTime.Now.Date;
           // Panel2.Visible = false;
            GetData();
            Panel2.Visible = false;
         //   ddlDeptName.Items.Insert(0, "--------Select---------");
        }

    }
    
    public void GetData()
    {
        clsDept obj = new clsDept();
        ddlDeptName.DataSource = obj.GetDept();
        ddlDeptName.DataTextField = "DeptName";
        ddlDeptName.DataValueField = "DeptId";
        ddlDeptName.DataBind();
       ddlDeptName.Items.Insert(0, "--------Select---------");
        
    
    }
    protected void ddlDeptName_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        if (ddlDeptName.SelectedIndex != 0)
        {
            GridView1.Visible = true;
            GetGridData();
        }
        else
        {
            GridView1.Visible = false;
            Panel2.Visible = false;
        }

    }
    public void GetGridData()
    {
        clsItems obj = new clsItems();
        GridView1.DataSource = obj.GetDeptItems(Convert.ToInt32(ddlDeptName.SelectedItem.Value));
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lblMessage.Text = "";
        Panel2.Visible = true;
        AllCrear();
        Label iid= GridView1.Rows[e.NewSelectedIndex].FindControl("itemid") as Label;
        itemid = Convert.ToInt32(iid.Text);
        txtItemName.Text = GridView1.Rows[e.NewSelectedIndex].Cells[1].Text;
        txtDeptId.Text = GridView1.Rows[e.NewSelectedIndex].Cells[2].Text;
        



    }
   
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {

            clsTenderItem obj = new clsTenderItem();
            if (obj.AddTenderItem(txtTenderTitel.Text, txtDescription.Text,itemid, Convert.ToInt32(ddlDeptName.SelectedValue),
                Convert.ToDateTime(txtOpeningDate.Text), Convert.ToDateTime(txtCloseD.Text), Convert.ToDateTime(txtResultD.Text),
               Convert.ToDecimal( txtCost.Text), FileUpload1.FileName) > 0)
            {
                FileUpload1.PostedFile.SaveAs(MapPath("~/Notifications/" + FileUpload1.FileName));
                lblMessage.Text = "successfully submitted";
                Panel2.Visible = false;
                GetGridData();
            }
            else
            {
                lblMessage.Text = "No Added Successfully";
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetGridData();
        
    }
    public void AllCrear()
    {
        txtCloseD.Text = txtCost.Text = txtDeptId.Text = txtDescription.Text = txtItemName.Text = txtOpeningDate.Text = txtResultD.Text = txtTenderTitel.Text = "";
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        AllCrear();
    }
}
