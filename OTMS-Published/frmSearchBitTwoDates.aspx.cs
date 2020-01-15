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
using System.IO;


public partial class frmSearchBitTwoDates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void GetData()
    {
        clsTenderItem obj = new clsTenderItem();
        GridView1.DataSource = obj.GetTenderItemsbitTwoDates(Convert.ToDateTime(txtStartD.Text), Convert.ToDateTime(txtEndD.Text));

        GridView1.DataBind();
        if (GridView1.Rows.Count == 0)
        {
            lblMessage.Text = "result not found";
        }
        else
            lblMessage.Text = "";


    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "c1")
        {
            if (!string.IsNullOrEmpty(e.CommandArgument.ToString()))
            {
                string path1 = Server.MapPath("~") + "\\Notifications\\" + e.CommandArgument;
                string path2 = Server.MapPath("~") + "\\Notifications\\" + e.CommandArgument;
                string path3 = Server.MapPath("~") + "\\Notifications\\" + e.CommandArgument;


                // string path1 = Server.MapPath(".") + "\\Tenderdocuments" + "\\Errata\\" + lnk.CommandArgument + ".doc";
                //string path = Server.MapPath(strRequest);
                //get file object as FileInfo 
                System.IO.FileInfo file1 = new System.IO.FileInfo(path1);
                System.IO.FileInfo file2 = new System.IO.FileInfo(path2);
                System.IO.FileInfo file3 = new System.IO.FileInfo(path3);

                //-- if the file exists on the server 

                //set appropriate headers 
                if (file1.Exists)
                {
                    Response.Clear();
                    Response.AddHeader("Content-Disposition", "attachment; filename=" + file1.Name);
                    Response.AddHeader("Content-Length", file1.Length.ToString());
                    Response.ContentType = "Application/PDF";
                    Response.WriteFile(file1.FullName);
                    Response.End();
                    //if file does not exist
                }
                else if (File.Exists(path2))
                {
                    Response.Clear();
                    Response.AddHeader("Content-Disposition", "attachment; filename=" + file2.Name);
                    Response.AddHeader("Content-Length", file2.Length.ToString());
                    Response.ContentType = "Application/msword";
                    Response.WriteFile(file2.FullName);
                    Response.End();

                }
                else if (File.Exists(path3))
                {
                    Response.Clear();
                    Response.AddHeader("Content-Disposition", "attachment; filename=" + file3.Name);
                    Response.AddHeader("Content-Length", file3.Length.ToString());
                    Response.ContentType = "Application/msword";
                    Response.WriteFile(file3.FullName);
                    Response.End();

                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, GetType(), "MyScript", "alert('No Downloads Provided');", true);

                }
                //nothing in the URL as HTTP GET
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, GetType(), "MyScript", "alert('No Downloads Provided');", true);
            }
        }

        //foreach (GridViewRow var in GridView1.Rows)
        //{
        //    LinkButton l1 = (LinkButton)var.FindControl("c1");
        //    string  l1.CommandArgument.ToString();
        //    l1.PostBackUrl = "~/Notifications/" + e.CommandArgument.ToString();


        //}
    }
    
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetData();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        GetData();
    }
}
