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
/// Summary description for clsCountry
/// </summary>
public class clsCountry
{
	public clsCountry()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int AddCountry(string name, string desc)
    {
        //try
        //{
            SqlParameter[] p = new SqlParameter[2];
            p[0] = new SqlParameter("@CountryName", name);
            p[1] = new SqlParameter("@CountryDesc", desc);
          return  SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_AddCountry", p);

        //}
        //catch (Exception ex)
        //{
        //    throw new ArgumentException();
        
        //}
    
    
    }
   
    public DataSet GetCountry()
    {
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetCountry");
    }
    public DataSet GetCountry(int countryid)
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@CountryId", countryid);
        return SqlHelper.ExecuteDataset(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_GetCountryWithId",p);
    }
    public int UpDelCountry(int countryid, string countryname, string countrydesc)
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@CountryId", countryid);
        p[1] = new SqlParameter("@CountryName", countryname);
        p[2] = new SqlParameter("@CountryDesc", countrydesc);
        return SqlHelper.ExecuteNonQuery(clsConnection.GetconString(), CommandType.StoredProcedure, "sp_UpDelCountry", p);

    }
}
