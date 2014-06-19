using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml;
using System.Xml.Linq;
using System.Xml.Xsl;
using System.Security.Cryptography;
using System.Xml.Schema;

public partial class user_dataUpload : System.Web.UI.Page
{
    private StringBuilder stringBuilder = new StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            if (FileUpload1.PostedFile != null)
            {
                HttpPostedFile file = FileUpload1.PostedFile;
                if (file.ContentLength > 10 * 1024 && file.ContentLength < 30 * 1024 * 1024)
                {
                    if (file.ContentType == "text/xml")
                    {
                        StreamReader rd = new StreamReader(file.InputStream);
                        String filexml = rd.ReadToEnd();

                        bool xs = validateXML(new StringReader(filexml));
                        if (xs)
                        {

                            String xmlEnc = encrypt(filexml);

                            saveXML(xmlEnc, 1);
                            Response.Redirect("view_charts.aspx");

                        }
                        else Label1.Text = "Pleaze choose a propper XML file";

                    }
                    else Label1.Text = "Pleaze choose XML file";
                }
                else Label1.Text = "selected file is Too small";

            }
            else Label1.Text = "plz select file ";
        }
    }

    public String encrypt(String xmlfile)
    {

        byte[] toEncodeAsBytes = System.Text.ASCIIEncoding.ASCII.GetBytes(xmlfile);

        string returnValue = System.Convert.ToBase64String(toEncodeAsBytes);

        return returnValue;
    }


    public void saveXML(String xmlfile, int user)
    {


        DataClasses2DataContext dcx = new DataClasses2DataContext();
        data_analysis data = new data_analysis();

        data.xmlfile = xmlfile;
        data.UserID = user;

        dcx.data_analysis.InsertOnSubmit(data);
        dcx.SubmitChanges();




    }

    public Boolean validateXML(StringReader file)
    {
        try
        {
            //string xmlPath = HttpContext.Current.Server.MapPath(file);
            XmlReader reader = null;
            XmlReaderSettings settings = new XmlReaderSettings();
            settings.ValidationType = ValidationType.Schema;
            settings.ValidationEventHandler += new ValidationEventHandler(this.ValidationEventHandler);
            //settings.ValidationFlags &= ~XmlSchemaValidationFlags.IgnoreInlineSchema;
            //settings.ValidationFlags &= ~XmlSchemaValidationFlags.IgnoreValidationWarnings;        
            settings.ValidationFlags &= XmlSchemaValidationFlags.ProcessInlineSchema;
            settings.ValidationFlags &= XmlSchemaValidationFlags.ReportValidationWarnings;
            reader = XmlReader.Create(file, settings);
            while (reader.Read())
            {
            }
            if (stringBuilder.ToString() == String.Empty)
                return true;
            else
                return false;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            return false;
        }
    }

    void ValidationEventHandler(object sender, ValidationEventArgs args)
    {
        if (args.Severity == XmlSeverityType.Error)
        {
            stringBuilder.Append("Validation error: " + args.Message + "<br>");
        }
    }

   
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {

        // The file path to download.

        string filepath = @"\setup.exe";

        // The file name used to save the file to the client's system..

        string filename = Path.GetFileName(filepath);
        System.IO.Stream stream = null;
        try
        {
            // Open the file into a stream. 
            stream = new FileStream(filepath, System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.Read);
            // Total bytes to read: 
            long bytesToRead = stream.Length;
            Response.ContentType = "application/exe";
            Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
            // Read the bytes from the stream in small portions. 
            while (bytesToRead > 0)
            {
                // Make sure the client is still connected. 
                if (Response.IsClientConnected)
                {
                    // Read the data into the buffer and write into the 
                    // output stream. 
                    byte[] buffer = new Byte[10000];
                    int length = stream.Read(buffer, 0, 10000);
                    Response.OutputStream.Write(buffer, 0, length);
                    Response.Flush();
                    // We have already read some bytes.. need to read 
                    // only the remaining. 
                    bytesToRead = bytesToRead - length;
                }
                else
                {
                    // Get out of the loop, if user is not connected anymore.. 
                    bytesToRead = -1;
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            // An error occurred.. 
        }
        finally
        {
            if (stream != null)
            {
                stream.Close();
            }
        }
    }
}