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
using CompNetwork.DAL;
using System.Data.SqlClient;

/// <summary>
/// Summary description for clsEmployeeDetails
/// </summary>
public class clsEmployeeDetails
{
	public clsEmployeeDetails()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddEmployee(string fname, string lname, string gender, int deptid, string username, string password, string phone, string email, string address, string city, string state, int roleid)
    {
        SqlParameter[] p = new SqlParameter[12];
        p[0] = new SqlParameter("@FirstName", fname);
        p[1] = new SqlParameter("@LastName", lname);
        p[2] = new SqlParameter("@Gender", gender);
        p[3] = new SqlParameter("@DeptId", deptid);

        p[4] = new SqlParameter("@LoginName", username);
        p[5] = new SqlParameter("@Password", password);
        p[6] = new SqlParameter("@PhoneNo", phone);
        p[7] = new SqlParameter("@Email", email);
        p[8] = new SqlParameter("@Address", address);
        p[9] = new SqlParameter("@City", city);
        p[10] = new SqlParameter("@State", state);
        p[11] = new SqlParameter("@RoleId", roleid);
        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_AddEmployee", p);
    }
    public DataSet GetEmp()
    {

        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetEmpAll");
    }
    public DataSet GetEmp(int empid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("EmpId", empid);
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetEmpWithId", p);
    }
    public int UpDelEmp(int empid, string fname, string lname, string phoneno, string email, string address, string city, string state)
    {
        SqlParameter[] p = new SqlParameter[8];
        p[0] = new SqlParameter("@EmpId", empid);
        p[1] = new SqlParameter("@FirstName", fname);
        p[2] = new SqlParameter("@LastName", lname);
        p[3] = new SqlParameter("@PhoneNo", phoneno);
        p[4] = new SqlParameter("@Email", email);
        p[5] = new SqlParameter("@Address", address);
        p[6] = new SqlParameter("@City", city);
        p[7] = new SqlParameter("@State", state);
        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_UpDelEmp", p);
    }
}
