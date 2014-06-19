<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Sign_in" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="sign-upStyle.css" rel="Stylesheet" type="text/css" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="margin: 0px auto; height: 440px; background-color:White; width: 980px; " >


<div id="content" style="height: 440px; margin-bottom: 20px;">

<div>
    <p style="margin-top: 20px; margin-left: 60px; color: #0a82b3; font-size: x-large; font-weight: bold;">Welcome again 
        To DSS</p></div>
<div style="float: right; background-image: url('images/LoginRed.png'); width: 300px; height: 310px; margin-top: 60px; margin-right: 120px;">

</div>

<div style="border-color: #5e5d5e; border-width: 2px; border-style: solid; width: 400px; background-image: url('images/back.png'); height: 350px; margin-top: 20px; float: left; margin-left: 60px;">
<div id="Div1">
<h3 id="text" style="padding-top: 25px">Login</h3>
</div>

<table style="margin: 50px 0px 0px 10px;" cellspacing="20">
<tr>
<td><asp:Label ID="UserName" runat="server" Text="UserName" Font-Bold="True" 
        Font-Size="Large" ForeColor="Black"></asp:Label></td>
<td><asp:TextBox ID="TXT_UserName" runat="server" 
        ontextchanged="TXT_UserName_TextChanged" Height="25px"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
ControlToValidate="TXT_UserName" Display="Dynamic" ErrorMessage="RequiredField">*</asp:RequiredFieldValidator>
</td>
</tr><!-- end first raw-->
<tr>
<td><asp:Label ID="Password" runat="server" Text="Password" Font-Bold="True" 
        Font-Size="Large"></asp:Label></td>
<td><asp:TextBox ID="TXT_Password" runat="server" TextMode="Password" Height="25px" 
        ontextchanged="TXT_Password_TextChanged"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
ControlToValidate="TXT_Password" Display="Dynamic" ErrorMessage="RequiredField">*</asp:RequiredFieldValidator>
</td>
</tr><!-- end second raw-->
<tr>
<td> </td>
<td><asp:Label ID="Label1" runat="server"></asp:Label></td>
</tr>

<tr>
<td>
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
Font-Names="Arial" Height="50px" Width="150px" Font-Bold="True" Font-Size="Medium" 
        ForeColor="White" BackColor="#0889BD" BorderColor="#616061" 
        BorderStyle="Solid" BorderWidth="2px" />
</td>

<td>
<asp:Button ID="Cancel" runat="server" onclick="Cancel_Click" Text="Cancel" 
Font-Names="Arial" Height="50px" Width="150px" Font-Bold="True" Font-Size="Medium" 
        ForeColor="White" BackColor="#0889BD" BorderColor="#616061" 
        BorderStyle="Solid" BorderWidth="2px" />
</td>

</tr>
</table><!---- end table----->
</div><!-- end center align---->

</div><!-- end content-->
</div><!--------------------page div--------->

</asp:Content>

