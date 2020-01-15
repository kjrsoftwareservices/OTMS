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
/// Summary description for clsReport
/// </summary>
public class clsReport
{
	public clsReport()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static DataSet Report1(DateTime Ftime, DateTime Ltime)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@ODate",Ftime);
        p[1] = new SqlParameter("@CDate",Ltime);
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetTenderWinners", p);
    }

    public static DataSet Report1(int p1)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@SupplierId", p1);

        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetMyTenderDetails", p);
    }
}
