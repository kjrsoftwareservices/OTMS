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
/// Summary description for clsTenderResponse
/// </summary>
public class clsTenderResponse
{
	public clsTenderResponse()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddTenderResponse(int tenderid, int supplierid, string supname, decimal bidamount)
    {
        SqlParameter []p=new SqlParameter[4];
        p[0]=new SqlParameter("@TenderId",tenderid);
        p[1]=new SqlParameter("@SupplierId",supplierid);
        p[2]=new SqlParameter("@SupplierName",supname);
        p[3]=new SqlParameter("@BidAmount",bidamount);

        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(),CommandType.StoredProcedure,"sp_AddTenderResponse",p);

    }
    
    
    
    
}
