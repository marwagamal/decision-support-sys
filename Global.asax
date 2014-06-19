<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        Application["NoVisitors"] = 0;
        Application["NoOfExisting"] = 0;

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
        if (Application["NoVisitors"] == null)
        {
            Application["NoVisitors"] = 1;
        }
        else
            //lock application object
            Application.Lock();

        Application["NoVisitors"] = int.Parse(Application["NoVisitors"].ToString()) + 1;
        Application.UnLock();
        Application["NoOfExisting"] = int.Parse(Application["NoOfExisting"].ToString()) + 1;
        Session.Timeout = 1;

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
        Application["NoOfExisting"] = int.Parse(Application["NoOfExisting"].ToString()) - 1;


    }
       
</script>
