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

public partial class Issuer_frmIssuerOrderItem : System.Web.UI.Page
{
   static  int supplierid;
   static  int tenderid;
    //decimal cost;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

        if(!IsPostBack)
        {
            GetTederDetails();
            GetSupplierDetails();
            

            
        }
        
    }
    public void GetSupplierDetails()
    {
        supplierid=Convert.ToInt32( Session["SupplierId"]);
        clsSupplierDetails obj1 = new clsSupplierDetails();
        ds = obj1.GetSupplier(supplierid);
       
        lblName.Text = ds.Tables[0].Rows[0]["FirstName"].ToString();
        lblPhone.Text = ds.Tables[0].Rows[0]["PhoneNo"].ToString();
        lblMail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
        lblAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
        lblCity.Text = ds.Tables[0].Rows[0]["City"].ToString();
        lblState.Text = ds.Tables[0].Rows[0]["State"].ToString();
    }
    public void GetTederDetails()
    {

         tenderid =Convert.ToInt32( Request["tenderid"]);
        clsTenderItem obj1 = new clsTenderItem();
        ds = obj1.GetTenderItems(tenderid);
        
        lblTitle.Text = ds.Tables[0].Rows[0][1].ToString();
        lblOrganigation.Text = ds.Tables[0].Rows[0][2].ToString();
        lblOpenDate.Text = ds.Tables[0].Rows[0][3].ToString();
        lblExpDate.Text = ds.Tables[0].Rows[0][4].ToString();
        lblResultDate.Text = ds.Tables[0].Rows[0][5].ToString();
        lblMinCost.Text = ds.Tables[0].Rows[0][6].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            decimal cost = Convert.ToDecimal(lblMinCost.Text);
            decimal bidamount = Convert.ToDecimal(TextBox1.Text);
            if (cost > bidamount)
            {
                clsTenderResponse obj = new clsTenderResponse();
                if (obj.AddTenderResponse(tenderid, supplierid, lblName.Text, bidamount) > 0)
                {
                    Panel4.Visible = false;
                    lblMessage.Text = " BidAmount " + bidamount + " submitted successfully";

                }
                else
                {
                    lblMessage.Text = "not submitted";
                }

            }
            else
            {
                lblMessage.Text = "You should enter Less than mincost";
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}
