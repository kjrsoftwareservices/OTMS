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
/// Summary description for clsValidateUser
/// </summary>
public class clsValidateUser
{
    
	public clsValidateUser()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int ValidateUser(string loginname, string password, out int loginid)
    {
        int RoleId=0;
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@LoginName",loginname);
        p[1] = new SqlParameter("@Password", password);
        p[2] = new SqlParameter("@RoleId", SqlDbType.Int);
        p[2].Direction = ParameterDirection.Output;
        p[3] = new SqlParameter("@LoginId", SqlDbType.Int);
        p[3].Direction = ParameterDirection.Output;
        SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_LoginCheck", p);
        if (p[2].Value != System.DBNull.Value)
        {
             RoleId = Convert.ToInt32(p[2].Value);
            loginid = Convert.ToInt32(p[3].Value);
        }
        else
            loginid = 0;
        return RoleId;
    
    }
}
