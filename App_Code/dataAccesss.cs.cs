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
/// Summary description for dataAccesss
/// </summary>
public class dataAccesss
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
    public dataAccesss()
    {
        con.Open();
    }
    public void closecon()
    {
        con.Close();
    }
    public DataTable chek_user(string name, string pwd)
    {
        SqlDataAdapter sda = new SqlDataAdapter("chek_user", con);
        sda.SelectCommand.CommandType = CommandType.StoredProcedure;
        sda.SelectCommand.Parameters.AddWithValue("@name", name);
        sda.SelectCommand.Parameters.AddWithValue("@password", pwd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        return dt;
    }
    
    public int AddEditNews( string name, string pass, string conpass, string email, string phone,string mobile, string fax,string country,string city,string postal,string credit)
    {
        
        SqlCommand com = new SqlCommand("newuser", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@UserName", name);
        com.Parameters.AddWithValue("@Password", pass);
        com.Parameters.AddWithValue("@ConfirmPassword", conpass);
        com.Parameters.AddWithValue("@Email", email);
        com.Parameters.AddWithValue("@Phone", phone);
        com.Parameters.AddWithValue("@Mobile", mobile);
        com.Parameters.AddWithValue("@Fax", fax);
        com.Parameters.AddWithValue("@Country", country);
        com.Parameters.AddWithValue("@City", city);
        com.Parameters.AddWithValue("@PostalCode", postal);
        com.Parameters.AddWithValue("@CreditCardNumber", credit);

        return
            com.ExecuteNonQuery();

    }
}
