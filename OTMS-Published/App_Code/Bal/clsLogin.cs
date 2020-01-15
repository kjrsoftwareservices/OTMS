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
/// Summary description for clsLogin
/// </summary>
public class clsLogin
{
	public clsLogin()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int ChangePassword(int loginid, string oldpwd, string newpwd)
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("LoginId", loginid);
        p[1] = new SqlParameter("OldPassword",oldpwd);
        p[2] = new SqlParameter("NewPassword",newpwd);
        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_PasswordChange", p);
    
    }
}
