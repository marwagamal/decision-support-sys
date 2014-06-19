<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="sign-upStyle.css" rel="Stylesheet" type="text/css" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="margin: 0px auto; height: 770px; background-color:White; width: 980px; " >
    

<div id="content" style="height: 770px; ">
<div style="margin-bottom: 20px">
   <p style="margin-top: 20px; margin-left: 60px; color: #0a82b3; font-size: x-large; font-weight: bold;">So glad you decided to join us !!!</p></div>

<div style="float: right; background-image: url('images/Reg.png'); width: 300px; height: 500px; margin-top: 60px; margin-right: 60px;">
</div>

<div style="border-color: #5e5d5e; border-width: 2px; border-style: solid; width: 420px; background-image: url('images/back.png'); float: left; margin-top: 20; margin-left: 60px;" 
        align="center">
        
        <div style="float: left; margin-left: 20px">
 <h3 style="padding-top: 25px; font-size: large; color: #FFFFFF;">Registration</h3>
       </div>
 
<table align="left" cellspacing="20" style="margin-top: 20px; margin-left: 10px">
<tr>
<td><asp:Label ID="Label1" runat="server" Text="UserName" Font-Bold="True" 
        Font-Size="Large" ForeColor="Black"></asp:Label></td>
<td><asp:TextBox ID="TXT_UserName" runat="server"></asp:TextBox></td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
ErrorMessage="Write Your Name Please" ControlToValidate="TXT_UserName" 
Display="Dynamic">*</asp:RequiredFieldValidator>
</td>
</tr>
<!----------------------------------->
<tr>
<td><asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" 
        Font-Size="Large" ForeColor="Black"></asp:Label></td>
<td><asp:TextBox ID="TXT_Password" runat="server" TextMode="Password"></asp:TextBox></td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
ErrorMessage="Write Your Password Please" ControlToValidate="TXT_Password" 
Display="Dynamic">*</asp:RequiredFieldValidator>
</td>
</tr>
<!----------------------------------->
<tr>
<td><asp:Label ID="Label3" runat="server" Text="Confirm Password" Font-Bold="True" 
        Font-Size="Large"></asp:Label></td>
<td><asp:TextBox ID="TXT_ConfirmPasswd" runat="server" TextMode="Password"></asp:TextBox></td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
ErrorMessage="Confirme Your Password Please" 
ControlToValidate="TXT_ConfirmPasswd" Display="Dynamic">*</asp:RequiredFieldValidator>
<asp:CompareValidator ID="CompareValidator1" runat="server" 
ControlToCompare="TXT_Password" ControlToValidate="TXT_ConfirmPasswd" 
Display="Dynamic" ErrorMessage="Invalid Password">*</asp:CompareValidator>
</td>
</tr>
<!----------------------------------->
<tr>
<td><asp:Label ID="Label4" runat="server" Text="Country" Font-Bold="True" 
        Font-Size="Large"></asp:Label></td>
<td><asp:TextBox ID="TXT_Country" runat="server"></asp:TextBox></td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
ErrorMessage="Write Your Country Please" ControlToValidate="TXT_Country" 
Display="Dynamic">*</asp:RequiredFieldValidator>
</td>
</tr>
<!----------------------------------->
<tr>
<td><asp:Label ID="Label5" runat="server" Text="City" Font-Bold="True" 
        Font-Size="Large"></asp:Label></td>
<td><asp:TextBox ID="TXT_City" runat="server"></asp:TextBox></td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
ErrorMessage="Write Your City Please" ControlToValidate="TXT_City" 
Display="Dynamic">*</asp:RequiredFieldValidator>
</td>
</tr>
<!----------------------------------->
<tr>
<td><asp:Label ID="Label6" runat="server" Text="Mobile" Font-Bold="True" 
        Font-Size="Large"></asp:Label></td>
<td><asp:TextBox ID="TXT_Mobile" runat="server"></asp:TextBox></td>
<td>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
 ErrorMessage="Write Your Mobile Number Please" 
 ControlToValidate="TXT_Mobile" Display="Dynamic">*</asp:RequiredFieldValidator>
</td>
</tr>
<!----------------------------------->
<tr>

<td><asp:Label ID="Label7" runat="server" Text="Phone" Font-Bold="True" 
        Font-Size="Large"></asp:Label></td>
<td> <asp:TextBox ID="TXT_Phone" runat="server"></asp:TextBox></td>
<td>
</td>
</tr>
<!----------------------------------->
<tr>

<td><asp:Label ID="Label8" runat="server" Text="Email" Font-Bold="True" 
        Font-Size="Large"></asp:Label></td>
<td><asp:TextBox ID="TXT_Email" runat="server"></asp:TextBox></td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
ErrorMessage="Write Your Email Please" ControlToValidate="TXT_Email" 
Display="Dynamic">*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
ControlToValidate="TXT_Email" ErrorMessage="example@mail.com" 
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
</td>

</tr>
<!----------------------------------->
<tr>
<td><asp:Label ID="Label9" runat="server" Text="Fax" Font-Bold="True" 
        Font-Size="Large"></asp:Label></td>
<td><asp:TextBox ID="TXT_Fax" runat="server"></asp:TextBox></td>
<td></td>

</tr>
<!----------------------------------->
<tr>
<td><asp:Label ID="Label10" runat="server" Text="Postal Code" Font-Bold="True" 
        Font-Size="Large"></asp:Label></td>
<td><asp:TextBox ID="TXT_PostalCode" runat="server"></asp:TextBox></td>
<td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
ErrorMessage="Write Your PostalCode Please" 
ControlToValidate="TXT_PostalCode" Display="Dynamic">*</asp:RequiredFieldValidator></td>
</tr>
<!----------------------------------->
<tr>
<td> <asp:Label ID="Label11" runat="server" Text="Credit Card Number" 
        Font-Bold="True" Font-Size="Large"></asp:Label></td>
<td><asp:TextBox ID="TXT_CreditCardNumber" runat="server"></asp:TextBox></td>
<td>
<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
ErrorMessage="Write Your CreditCard Nunber  Please" 
ControlToValidate="TXT_CreditCardNumber" Display="Dynamic">*</asp:RequiredFieldValidator>
</td>
</tr>
<!---------------------------------->
<tr>
<td></td>
<td><asp:Label ID="Label12" runat="server"></asp:Label></td>
</tr>

<tr>
<td>
    
    <asp:Button ID="Button1" runat="server" BackColor="#0889BD" 
        BorderColor="#616061" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
        Font-Size="Large" ForeColor="White" Height="50px" onclick="Button1_Click" 
        Text="Submit" Width="150px" />
    
</td>
<td style="float: left; margin-left: 20px">
    <asp:Button ID="Button2" runat="server" BackColor="#0889BD" 
        BorderColor="#616061" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" 
        Font-Size="Large" ForeColor="White" Height="50px" onclick="Button2_Click" 
        Text="Reset" Width="150px" />
</td>
</tr>
</table>
</div> <!------ end center align div-------->
</div><!-- end content-->
</div>
</asp:Content>

