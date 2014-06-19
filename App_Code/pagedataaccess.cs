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

/// <summary>
/// Summary description for pagedataaccess
/// </summary>
public class pagedataaccess:Page
{
    protected dataAccesss DA = new dataAccesss();
    protected void page_unload(object sender, EventArgs e)
    {
        DA.closecon();
    }
}
