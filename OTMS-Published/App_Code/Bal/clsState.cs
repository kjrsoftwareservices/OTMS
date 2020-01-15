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
/// Summary description for clsState
/// </summary>
public class clsState
{
	public clsState()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddState(string name, string desc, int countryid)
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@StateName", name);
        p[1] = new SqlParameter("@StateDesc", desc);
        p[2] = new SqlParameter("@CountryId", countryid);

        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_AddState", p);


    
    }
    public DataSet GetState()
    {
       return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetState");
    }

    public DataSet GetState(int stateid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@StateId", stateid);
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetStateWithId", p);
    }
    public int UpDelState(int stateid, string name, string desc)
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@StateId", stateid);
        p[1] = new SqlParameter("@StateName", name);
        p[2] = new SqlParameter("@StateDesc", desc);
        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_UpDelState", p);

    }
}
