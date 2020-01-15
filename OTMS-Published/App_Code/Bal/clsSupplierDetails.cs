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
/// Summary description for clsSupplierDetails
/// </summary>
public class clsSupplierDetails
{
	public clsSupplierDetails()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddSupplier(string fname, string lname, string gender, string username, string password, string phone, string email, string address, string city, string state,int roleid)
    {
        SqlParameter[] p = new SqlParameter[11];
        p[0] = new SqlParameter("@FirstName",fname);
        p[1] = new SqlParameter("@LastName",lname);
        p[2] = new SqlParameter("@Gender",gender);
        p[3] = new SqlParameter("@LoginName",username);
        p[4] = new SqlParameter("@Password",password);
        p[5] = new SqlParameter("@PhoneNo",phone);
        p[6] = new SqlParameter("@Email",email);
        p[7] = new SqlParameter("@Address",address);
        p[8] = new SqlParameter("@City",city);
        p[9] = new SqlParameter("@State",state);
        p[10] = new SqlParameter("@RoleId",roleid);
        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_AddSupplier", p);

    }
    public DataSet GetSupplier(int supplierid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("SupplierId",supplierid);
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(),CommandType.StoredProcedure,"sp_GetSupplier",p);
    }
    public DataSet GetSupplierUnchecked()
    {
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetSupplierUnchecked");
    }
    public DataSet GetSupplierAll()
    {
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetSupplierAll");
    }
    public int SupplierAcceptReject(int suplierid,int flag)
    {
        SqlParameter[] p = new SqlParameter[2];
     p[0]=  new SqlParameter("@SupplierId",suplierid);
     p[1] = new SqlParameter("@Flag",flag);
    return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_SupplierAcceptReject",p);
    
    }
    public int UpDelSupplier(int supplierid, string fname, string lname, string phoneno, string email, string address, string city, string state)
    {
        SqlParameter[] p = new SqlParameter[8];
        p[0] = new SqlParameter("@SupplierId", supplierid);
        p[1] = new SqlParameter("@FirstName", fname);
        p[2] = new SqlParameter("@LastName", lname);
        p[3] = new SqlParameter("@PhoneNo",phoneno);
        p[4] = new SqlParameter("@Email",email);
        p[5] = new SqlParameter("@Address",address);
        p[6] = new SqlParameter("@City",city);
        p[7] = new SqlParameter("@State",state);
        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_UpDelSupplier", p);
    }


   
}
