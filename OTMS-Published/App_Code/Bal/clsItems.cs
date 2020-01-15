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
/// Summary description for clsItems
/// </summary>
public class clsItems
{
	public clsItems()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddItem(string itemname, int deptid)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@ItemName", itemname);
        p[1] = new SqlParameter("@DeptId", deptid);
        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_AddItem", p);
    
    }
    public DataSet GetItems()
    {
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetItems");

    }
    public DataSet GetItemsNotChecked(int empid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@EmpId",empid);
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetItemsNotChecked",p);
    
    
    }
    public int UpadateCheckState(int itemid)
    {
        SqlParameter []p = new SqlParameter[1];
        p[0]=new SqlParameter("@ItemId",itemid);
        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_UpdateCheckStatus",p);
    
    }
    public DataSet  GetDeptItems(int deptid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@DeptId", deptid);
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetDeptItems", p);
    
    }
}
