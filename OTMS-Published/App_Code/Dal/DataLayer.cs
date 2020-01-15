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

/// <summary>
/// Summary description for DataLayer
/// </summary>
public class DataLayer
{
   
   static  SqlConnection con;
   static SqlCommand cmd;
   static  string sqlcon;
   static DataSet ds;
   static SqlDataAdapter da;
	public DataLayer()
	{
         sqlcon = ConfigurationManager.ConnectionStrings["ConStrdb"].ConnectionString;
		//
		// TODO: Add constructor logic here
		//
	}
    public static  void CommonConnection()
    { 
       sqlcon=ConfigurationManager.ConnectionStrings["ConStrdb"].ConnectionString;
        con = new SqlConnection(sqlcon);

         cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        
    
    
    }
    public static void AddCountryData(string str1, string str2, string procname)
    {
    //string sqlcon = ConfigurationManager.ConnectionStrings["ConStrdb"].ConnectionString;
    //SqlConnection con = new SqlConnection(sqlcon);

    //SqlCommand cmd = new SqlCommand();
    //cmd.Connection = con;
    //cmd.CommandType = CommandType.StoredProcedure;

        CommonConnection();
  
        cmd.CommandText = procname;
        cmd.Parameters.Add("@Country_Name", str1);
        cmd.Parameters.Add("@Country_Description", str2);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public static void AddStateData( string statename,string statedisc, int countryid,string procname)
    {
        //string sqlcon = ConfigurationManager.ConnectionStrings["ConStrdb"].ConnectionString;
        //SqlConnection con = new SqlConnection(sqlcon);

        //SqlCommand cmd = new SqlCommand();
        //cmd.Connection = con;
        //cmd.CommandType = CommandType.StoredProcedure;
        
        CommonConnection();
        cmd.CommandText = procname;
        cmd.Parameters.Add("@State_Name", statename);
        cmd.Parameters.Add("@State_Description", statedisc );

        cmd.Parameters.Add("Country_Id",countryid);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    //public static DataSet GetCountryData(string procname)
    //{
    //    CommonConnection();
    //    cmd.CommandText = procname;
    //    con.Open();
    //    ds = new DataSet();
    //    da = new SqlDataAdapter(cmd);
    //    da.Fill(ds);

    //    return ds;
    
    //}
    public static void AddCityData(string cityname, string citydisc, int stateid, string procname)
    {


        CommonConnection();
        cmd.CommandText = procname;
        cmd.Parameters.Add("@City_Name", cityname);
        cmd.Parameters.Add("@City_Description", citydisc);

        cmd.Parameters.Add("State_Id", stateid);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public static void AddAirLine(string name, string procname)
    {
     
        CommonConnection();
        cmd.CommandText = procname;
        cmd.Parameters.Add("@Name", name);
        //cmd.Parameters.Add("@flag",SqlDbType.Bit);
        //cmd.Parameters[1].Direction=ParameterDirection.Output;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
       
    }
    public static DataSet GetData(string procname)
    {
        CommonConnection();
        cmd.CommandText = procname;
        con.Open();
        ds = new DataSet();
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);

        return ds;

    }
    public static void AddAirportData(string name,string country,string state,string city, string procname)
    {
        CommonConnection();
        cmd.CommandText = procname;
        cmd.Parameters.Add("@Airport_Name",name);
        cmd.Parameters.Add("@Country",country);
        cmd.Parameters.Add("State", state);
        cmd.Parameters.Add("City", city);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public static void AddFlightData(int flightno, string daysofoperating, int noseats, string airlinename, string procname)
    {
        CommonConnection();
        cmd.CommandText = procname;
        cmd.Parameters.Add("@Flight_No",flightno);
        cmd.Parameters.Add("@Days_Operating", daysofoperating);
        cmd.Parameters.Add("@NO_Of_Seats", noseats);
        cmd.Parameters.Add("Airlines_Name", airlinename);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public static void AddEmployeeData(string  Name,string Address,string Phone,string Email,string Duty_Time,string User_Name,string Password,string procname)
    {
        CommonConnection();
        cmd.CommandText = procname;
        cmd.Parameters.Add("@Name", Name);
        cmd.Parameters.Add("@Address", Address);
        cmd.Parameters.Add("@Phone", Phone);
        cmd.Parameters.Add("@Email", Email);
        cmd.Parameters.Add("@Duty_Time", Duty_Time);
        cmd.Parameters.Add("@User_Name", User_Name);
        cmd.Parameters.Add("@Password", Password);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    
}
