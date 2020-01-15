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

public partial class login : System.Web.UI.Page
{
    clsValidateUser obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = Request.Url.ToString();
        string[] arr = str.Split('/');
        foreach (string word in arr)
        {
            if (word.Equals("Supplier"))
            {
                HyperLink1.Visible = true;
            }
        }
    }
    protected void btnLoginIn_Click(object sender, EventArgs e)
    {

        //try 
        //{
        obj = new clsValidateUser();
        string loginname = txtLoginName.Text.Trim();
        string password = txtPassword.Text.Trim();
        int loginid;
        int roleid = obj.ValidateUser(loginname, password,out loginid);
        if (roleid == 0)
            lblMessage.Text = "user name and password is missmached";
        else
        {
            if (roleid == 1)
            {
                Session["LoginId"] = loginid;
                Session["UserType"] = "Admin";
                Session["LoginName"] = loginname;
                FormsAuthentication.RedirectFromLoginPage("Admin", CheckBox1.Checked);
            }
            else if (roleid == 2)
            {
                clsQueryScalar obj1 = new clsQueryScalar();
                string str = "select EmpId from tblEmployeeDetails where LoginId=" + loginid;
                int empid = obj1.GetId(str);
                if (empid != 0)
                {
                    Session["EmpId"] = empid;
                    Session["LoginId"] = loginid;
                    Session["UserType"] = "Employee";
                    Session["LoginName"] = loginname;
                    FormsAuthentication.RedirectFromLoginPage("Employee", CheckBox1.Checked);
                }
                else
                    lblMessage.Text = "username and password missmacthed";
                
            }
            else if (roleid == 3)
            {
                clsQueryScalar obj1 = new clsQueryScalar();
                string str = "select IssuerId from tblIssuerDetails where LoginId=" + loginid;
                int issuerid = obj1.GetId(str);
                if (issuerid != 0)
                {
                    Session["IssuerId"] = issuerid;

                    Session["LoginId"] = loginid;
                    Session["UserType"] = "Issuer";
                    Session["LoginName"] = loginname;
                    FormsAuthentication.RedirectFromLoginPage("Issuer", CheckBox1.Checked);
                }
                else
                    lblMessage.Text = "username and password missmacthed";

            }
            else if (roleid == 4)
            {
                clsQueryScalar obj1 = new clsQueryScalar();
                string str = "select SupplierId from tblSupplierDetails where LoginId=" + loginid + "and AdminCheck=1";
                int supplierid = obj1.GetId(str);
                if (supplierid != 0)
                {
                    Session["SupplierId"] = supplierid;
                    Session["LoginId"] = loginid;
                    Session["UserType"] = "Supplier";
                    Session["LoginName"] = loginname;
                    FormsAuthentication.RedirectFromLoginPage("Supplier", CheckBox1.Checked);
                }
                else
                    lblMessage.Text = "username and password missmacthed";

            }
            else
                lblMessage.Text = "login failed for this user";
        }
        //}
        //catch(Exception ex)
        //{
        //    ex = null;
        //}
    }
}
