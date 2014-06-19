using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Registration : System.Web.UI.Page
{
    DataClassesDataContext dcx = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            var s = (from k in dcx.Users
                     where k.UserName == TXT_UserName.Text
                     select k).Single();
            Label12.Text = "This User Registered Before Plz Try Again";
        }
        catch
        {
            User s = new User();

            s.UserName = TXT_UserName.Text;
            s.Password = TXT_Password.Text;
            s.ConfirmPassword = TXT_ConfirmPasswd.Text;
            s.Country = TXT_Country.Text;
            s.City = TXT_City.Text;
            s.Mobile = TXT_Mobile.Text;
            s.Phone = TXT_Phone.Text;
            s.Email = TXT_Email.Text;
            s.Fax = TXT_Fax.Text;
            s.PostalCode = TXT_PostalCode.Text;
            s.CreditCardNumber = TXT_CreditCardNumber.Text;
            dcx.Users.InsertOnSubmit(s);
            dcx.SubmitChanges();
            Response.Redirect("home.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TXT_City.Text = "";
        TXT_ConfirmPasswd.Text = "";
        TXT_Country.Text = "";
        TXT_CreditCardNumber.Text = "";
        TXT_Email.Text = "";
        TXT_Fax.Text = "";
        TXT_Mobile.Text = "";
        TXT_Password.Text = "";
        TXT_Phone.Text = "";
        TXT_PostalCode.Text = "";
        TXT_UserName.Text = "";
    }
}
