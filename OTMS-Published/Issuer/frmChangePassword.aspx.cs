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

public partial class Issuer_frmChangePassword : System.Web.UI.Page
{
    static string prevPage = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            prevPage = Request.UrlReferrer.ToString();
        }

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            int loginid = Convert.ToInt32(Session["LoginId"]);
            clsLogin obj = new clsLogin();
            if (obj.ChangePassword(loginid, txtPwd.Text, txtNpwd.Text) > 0)
            {
                Panel1.Visible = false;
                lblMessage.Text = "password changed successfully";
            }
            else
                lblMessage.Text = "enter correct password";

        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect(prevPage);
    }
}
