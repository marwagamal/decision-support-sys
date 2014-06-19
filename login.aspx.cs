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

public partial class Sign_in : System.Web.UI.Page
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
                     where k.UserName == TXT_UserName.Text && k.Password == TXT_Password.Text
                     select k).Single();


         FormsAuthentication.RedirectFromLoginPage(TXT_UserName.Text, true);

        }

        catch
        {
            TXT_UserName.Text = "";
            TXT_Password.Text = "";
            Label1.Text = "Plz Enter True Data";

        }

      
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        TXT_UserName.Text = "";
        TXT_Password.Text = "";
        Label1.Text = "";
    }
    protected void TXT_UserName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TXT_Password_TextChanged(object sender, EventArgs e)
    {

    }
}
