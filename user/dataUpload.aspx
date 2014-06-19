<%@ Page Language="C#" MasterPageFile="~/user/data_panel.master" AutoEventWireup="true" CodeFile="dataUpload.aspx.cs" Inherits="user_dataUpload" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../sign-upStyle.css" rel="Stylesheet" type="text/css" /> 
    
    <style type="text/css">
        .style1
        {
            width: 442px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content"  style="width: 974px;background-color:White; height: 328px;" >




<div>
<p align="center" 
        style="font-family: Arial; font-size: large; font-weight: bold; color: #0a82b3; margin-top: 30px;"> 
    You can either upload your .xml file <br />
or download DSS middleware <br />

</p>

</div><!-- end text div--->



<div style="margin: 30px auto 20px 51px; width:851px; ">


<table 
        style="border: 2px solid #000000; float: left; margin-left: 10px; width: 840px; height: 179px; background-color: #efefef;" 
        cellpadding="20">
<tr>
<td align="center" class="style1" 
        style="border-right-style: solid; border-right-width: 2px; border-right-color: #000000"><asp:FileUpload ID="FileUpload1" runat="server" />
<br />
<br />
<asp:Label ID="Label1" runat="server" Text="*"></asp:Label>

<asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="DataClasses2DataContext" EnableInsert="True" 
        Select="new (UserID, xmlfile)" TableName="data_analysis">
    </asp:LinqDataSource>
    <br />
    <br />

<asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" 
            BackColor="#0889BD" BorderColor="#616061" BorderStyle="Solid" BorderWidth="2px" 
            Font-Bold="True" Font-Size="Medium" ForeColor="#FFFFCC" Height="50px"
            Width="150px" />
            
</td>




   <td align="center">
   
       <asp:ImageButton ID="ImageButton1" runat="server" 
           ImageUrl="~/images/download-icn.png" onclick="ImageButton1_Click1" 
           ImageAlign="Middle" />
        </td>
       </tr>   
    </table>
   


 

   

</div><!-- end content-->

    </div>
</asp:Content>

