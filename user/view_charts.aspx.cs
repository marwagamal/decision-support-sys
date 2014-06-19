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
using System.Web.UI.DataVisualization.Charting;
using System.Xml.Xsl;
using System.Xml;
using System.Xml.Schema;
using System.Security.Cryptography;
using System.Text;
using System.IO;


public partial class user_view_charts : System.Web.UI.Page
{
    DataClasses2DataContext dcx = new DataClasses2DataContext();
    //-------------------------------------



    protected void Page_Load(object sender, EventArgs e)
    {

        Chart1.Visible = false;
        //-show user data in gride view------------------

        var s = (from k in dcx.data_analysis
                 where k.UserID == 2
                 select k.xmlfile).Single();

        XmlDocument xmldoc = getFile(s);
        XmlTextReader r = new XmlTextReader(new System.IO.StringReader(xmldoc.OuterXml));
        DataSet ds = new DataSet();
        ds.ReadXml(r);
        //----------



        foreach (DataColumn dc in ds.Tables[0].Columns)
        {

            DropDownList2.Items.Add(dc.ColumnName);

        }
        foreach (DataColumn dc in ds.Tables[0].Columns)
        {

            DropDownList3.Items.Add(dc.ColumnName);

        }



    }







    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue.ToString() == "3D _Column _Chart")
        {
            Chart1.Visible = true;
            //-show user data in gride view------------------

            var s = (from k in dcx.data_analysis
                     where k.UserID == 2
                     select k.xmlfile).Single();

            XmlDocument xmldoc = getFile(s);
            XmlTextReader r = new XmlTextReader(new System.IO.StringReader(xmldoc.OuterXml));
            DataSet ds = new DataSet();
            ds.ReadXml(r);
            //----------



            //--------------------------------------------------------------------------------------
            DataTable dt = ds.Tables[0];

            DataView dataView = new DataView(dt);

            // Bind XML
            string xaxis = DropDownList2.SelectedItem.ToString();
            string yaxis = DropDownList3.SelectedItem.ToString();
            Chart1.Series[0].Points.DataBindXY(dataView, xaxis, dataView, yaxis);

        }
        else if (DropDownList1.SelectedValue.ToString() == "polar")
        {
            Chart2.Visible = true;

            //-show user data in gride view------------------

            var s = (from k in dcx.data_analysis
                     where k.UserID == 2
                     select k.xmlfile).Single();

            XmlDocument xmldoc = getFile(s);
            XmlTextReader r = new XmlTextReader(new System.IO.StringReader(xmldoc.OuterXml));
            DataSet ds = new DataSet();
            ds.ReadXml(r);
            //----------



            //--------------------------------------------------------------------------------------
            DataTable dt = ds.Tables[0];

            DataView dataView = new DataView(dt);

            // Bind XML
            string xaxis = DropDownList2.SelectedItem.ToString();
            string yaxis = DropDownList3.SelectedItem.ToString();
            Chart1.Series[0].Points.DataBindXY(dataView, xaxis, dataView, yaxis);

        }
        else if (DropDownList1.SelectedValue.ToString() == "Pie _Chart")
        {
            Chart3.Visible = true;
            //-show user data in gride view------------------

            var s = (from k in dcx.data_analysis
                     where k.UserID == 2
                     select k.xmlfile).Single();

            XmlDocument xmldoc = getFile(s);
            XmlTextReader r = new XmlTextReader(new System.IO.StringReader(xmldoc.OuterXml));
            DataSet ds = new DataSet();
            ds.ReadXml(r);
            //----------



            //--------------------------------------------------------------------------------------
            DataTable dt = ds.Tables[0];

            DataView dataView = new DataView(dt);

            // Bind XML
            string xaxis = DropDownList2.SelectedItem.ToString();
            string yaxis = DropDownList3.SelectedItem.ToString();
            Chart1.Series[0].Points.DataBindXY(dataView, xaxis, dataView, yaxis);

        }


    }


    public XmlDocument getFile(string file)
    {

        //String xmlf = decode(file);

        XmlDocument xmldoc = new XmlDocument();

        xmldoc.LoadXml(file);

        return xmldoc;

    }
    
    //    public String decode(String xmlfile)
    //    {
      
    //byte[] encodedDataAsBytes = System.Convert.FromBase64String(xmlfile);

    //      string returnValue = System.Text.ASCIIEncoding.ASCII.GetString(encodedDataAsBytes);

    //      return returnValue;

    //    }

       
}
