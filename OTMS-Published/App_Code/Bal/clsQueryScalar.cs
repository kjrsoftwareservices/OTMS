using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using CompNetwork.DAL;
/// <summary>
/// Summary description for clsQueryScalar
/// </summary>
public class clsQueryScalar
{
	public clsQueryScalar()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int GetId(string sqlstr)
    {
        int id =Convert.ToInt32( SqlHelper.ExecuteScalar(clsConnection.GetconString(), CommandType.Text, sqlstr));
        return id;
    }
}
