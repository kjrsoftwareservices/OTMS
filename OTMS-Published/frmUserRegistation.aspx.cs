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

public partial class frmUserRegistation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
        if (!IsPostBack)
        {
            clsState obj = new clsState();
            ddlState.DataSource = obj.GetState();
            ddlState.DataTextField = "StateName";
            ddlState.DataBind();
            rbtnMale.Checked = true;
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string gender;
        try
        {
         
            if(rbtnMale.Checked)
            gender="Male";
            else
                gender="Female";
            clsSupplierDetails obj = new clsSupplierDetails();
            if (obj.AddSupplier(txtFName.Text, txtLName.Text, gender, txtUserName.Text, txtPassword.Text, txtPhone.Text,txtEmail.Text, txtAdress.Text, txtCity.Text, ddlState.SelectedItem.Text, 4) > 0)
            {
                lblMessage.Text = "success fully added";

            }
            else
                lblMessage.Text = "";
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtAdress.Text = txtCity.Text = txtCPassword.Text = txtEmail.Text = txtFName.Text = txtLName.Text = txtPassword.Text = txtPhone.Text = txtUserName.Text = "";
    }
}
