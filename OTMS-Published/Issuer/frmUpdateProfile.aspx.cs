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

public partial class Issuer_frmUpdateProfile : System.Web.UI.Page
{
   static  int issuerid;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            GetData();
            GetState();
        }
    }
    public void GetState()
    {
        clsState obj = new clsState();
        ddlState.DataSource = obj.GetState();
        ddlState.DataTextField = "StateName";
        ddlState.DataBind();
        ddlState.Items.Insert(0, "----Select State-----");

    }
    public void GetData()
    {
        Session["IId"] = Session["IssuerId"];
        issuerid = Convert.ToInt32(Session["IId"]);
        if (issuerid == 0) return;
        clsIssuerDetails obj = new clsIssuerDetails();
        DataSet ds = obj.GetIssuer(issuerid);
        txtfname.Text = ds.Tables[0].Rows[0]["FirstName"].ToString();
        txtlname.Text = ds.Tables[0].Rows[0]["LastName"].ToString();
        txtPhoneno.Text = ds.Tables[0].Rows[0]["PhoneNo"].ToString();
        txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
        txtAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
        txtCity.Text = ds.Tables[0].Rows[0]["City"].ToString();
        txtState.Text = ds.Tables[0].Rows[0]["State"].ToString();



    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            clsIssuerDetails obj = new clsIssuerDetails();
            if (obj.UpDelIssuer(issuerid, txtfname.Text, txtlname.Text, txtPhoneno.Text, txtEmail.Text, txtAddress.Text, txtCity.Text, txtState.Text) > 0)
            {
                lblMessage.Text = "updated successfully";

            }
            else
                lblMessage.Text = "request failed";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }

    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlState.SelectedIndex != 0)
        {
            txtState.Text = ddlState.SelectedItem.Text;
        }
    }
}
