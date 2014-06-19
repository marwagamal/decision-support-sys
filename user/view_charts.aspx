<%@ Page Language="C#" MasterPageFile="~/user/data_panel.master" AutoEventWireup="true" CodeFile="view_charts.aspx.cs" Inherits="user_view_charts" Title="Untitled Page" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<%@ Register assembly="System.Web.DataVisualization, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="../sign-upStyle.css" rel="Stylesheet" type="text/css" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <div style="margin: 0px auto; width: 980px; " >


<div id="content" 
         style="height: 735px; background-color: #FFFFFF;">
<div>
<p align="center" style="font-family: Arial; font-size: large; font-weight: bold; color: #0a82b3; margin-top: 30px;"> 
   Select the Dimentions  <br />

</p>

</div><!-- end text div--->

<div style="width: 500px; margin:0 auto;" align="center">



 <div style="width: 500px; background-color: #efefef;">
 
 <table cellspacing="30" align="center">
 

 <tr>
 <td> <asp:Label ID="Label3" runat="server" Text="X Axis" Font-Bold="True" 
         Font-Size="Medium"></asp:Label></td>
 <td>  <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList></td>
 </tr><!-- end second row-->
 <tr>
 <td><asp:Label ID="Label2" runat="server" Text="Y Axis" Font-Bold="True" 
         Font-Size="Medium"></asp:Label></td>
 <td> <asp:DropDownList ID="DropDownList3" runat="server">
    </asp:DropDownList></td>
 </tr><!--end third-->
 <tr>
 <td> <asp:Label ID="Label4" runat="server" Text="Chart Type" Font-Bold="True" 
         Font-Size="Medium"></asp:Label></td>
 <td><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Select One ....</asp:ListItem>
            <asp:ListItem Value="3D _Column _Chart">Chart Area</asp:ListItem>
            <asp:ListItem Value="polar">polar</asp:ListItem>
            <asp:ListItem Value="Pie _Chart">Pie Chart</asp:ListItem>
        </asp:DropDownList></td>
 </tr><!-- end fourth row-->
 
 </table> 
<div style="width: 290px; margin: 0 auto 0px auto">
<div align="center" 
        style="width: 150px; height: 50px; margin-left: 30px;">
     <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Generate Chart" Height="50px" Width="150px" BackColor="#0889BD" 
         BorderColor="#616061" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
         Font-Size="Medium" ForeColor="White" />
 </div>
 </div>

            

 
 <!--
        <asp:Chart ID="Chart2" runat="server" Height="500px" Palette="Pastel" 
            Visible="False" Width="500px">
            <series>
                <asp:Series ChartType="Polar" Name="Series1" YValuesPerPoint="4">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1" ShadowColor="224, 224, 224">
                    <Area3DStyle Enable3D="True" />
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
      
        --->
        <div style="margin-top: 20px">
        <asp:Chart ID="Chart1" runat="server" Height="344px" Palette="Pastel" 
            Width="500px">
            <series>
                <asp:Series ChartType="Area" Name="Series1" YValuesPerPoint="3">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1" ShadowColor="224, 224, 224">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        </div>
        <!--
        <asp:Chart ID="Chart3" runat="server" Palette="Pastel" 
            Visible="False" Width="500px">
            
            <series>
                <asp:Series ChartType="Pie" Name="Series1" YValuesPerPoint="6">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1" ShadowColor="224, 224, 224">
                    <Area3DStyle Enable3D="True" />
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
 -->
    </div>
    </div>
    </div>
    </div><!-- end center align---->
</asp:Content>

