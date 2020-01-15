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
/// Summary description for clsTenderItem
/// </summary>
public class clsTenderItem
{
	public clsTenderItem()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddTenderItem(string title, string Desc, int itemid, int deptid, DateTime opend, DateTime expird, DateTime resultd, decimal tendercost, string notifile)
    {
        SqlParameter[] p = new SqlParameter[9];
        p[0]=new SqlParameter("@Title",title);
        p[1]=new SqlParameter("@Description",Desc);
        p[2]=new SqlParameter("@ItemId",itemid);
        p[3]=new SqlParameter("@DeptId",deptid);
        p[4]=new SqlParameter("@OpenDate",opend);
        p[5]=new SqlParameter("@ExpireDate",expird);
        p[6]=new SqlParameter("@ResultDate",resultd);
        p[7]=new SqlParameter("@TenderCost",tendercost);
        p[8]=new SqlParameter("@NotificationFile",notifile);

        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_AddTenderItem", p);




    
    }
    public DataSet GetTenderItems()
    {
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetTenderItems");

    }
    public DataSet GetTenderItems(int tenderid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@TenderId",tenderid);
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetTenderItemsWithId",p);

    }
    public DataSet GetTenderItemsForResult()
    {
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetResultPendingTenders");

    }

    public int AllotItemToSupplier(int tenderid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@TenderId",tenderid);
        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(),CommandType.StoredProcedure,"sp_AllotItem",p);
    }
    public DataSet GetTenderWinners()
    {
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetTenderWinners");

    }
    public DataSet GetTenderItemsbitTwoDates(DateTime startd,DateTime endd)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@StartD",startd);
        p[1] = new SqlParameter("@EndD", endd);

        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_SearchBitweenTwoDates", p);

    }
    public DataSet GetTodaysTenders()
    {
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetTodaysTenders");

    }
    public DataSet SearchByKeyWord(string key)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@Key",key);


        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_SearchByKeyWord", p);

    }

}
