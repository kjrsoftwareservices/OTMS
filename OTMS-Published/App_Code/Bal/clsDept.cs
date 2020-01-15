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
/// Summary description for clsDept
/// </summary>
public class clsDept
{
	public clsDept()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddDept(string name, string location)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@DeptName", name);
        p[1] = new SqlParameter("@DeptLocation", location);

        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_AddDept", p);



    }
    public DataSet GetDept()
    {
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetDept");
    }
}
