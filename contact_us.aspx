<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="contact_us" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="sign-upStyle.css" rel="Stylesheet" type="text/css" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div style="margin: 0px auto; height: 460px; background-color:White; width: 980px; " >
<div id="content" style="height: 460px; margin-bottom: 20px;">


<div id="text" style="margin-bottom: 20px;margin-left:40px; margin-top: 10px;">
<p style="color:#0a82b3"> SEND US YOUR FEEDBACK: Do you have a question, comment, suggestion </p>
</div>

<div style="float: right; background-image: url('images/contact-us.png'); width: 400px; height: 300px; margin-top: 20px; margin-right: 20px;">

</div>

<div style="width: 450px; margin-top: 20; margin-bottom: 0; float: left; margin-left: 40px;">

 <form name="htmlform" method="post" action="">
<table width="450px" cellspacing="20" bgcolor="#EFEFEF" 
     style="border: 2px solid #616061">

<tr>
 <td valign="top">
  <label for="first_name">First Name *</label>
 </td>
 <td valign="top">
  <input  type="text" name="first_name" maxlength="50" size="30">
 </td>
</tr>
 
<tr>
 <td valign="top"">
  <label for="last_name">Last Name *</label>
 </td>
 <td valign="top">
  <input  type="text" name="last_name" maxlength="50" size="30"/>
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="email">Email Address *</label>
 </td>
 <td valign="top">
  <input  type="text" name="email" maxlength="80" size="30"/>
 </td>
 
</tr>
<tr>
 <td valign="top">
  <label for="telephone">Telephone Number</label>
 </td>
 <td valign="top">
  <input  type="text" name="telephone" maxlength="30" size="30"/>
 </td>
</tr>
<tr>
 <td valign="top">
  <label for="comments">Comments *</label>
 </td>
 <td valign="top">
  <textarea  name="comments" maxlength="1000" cols="25" rows="6"></textarea>
 </td>
 
</tr>
<tr>
 <td colspan="2" style="text-align:center">
  <input type="submit" value="Submit" 
         style="border: 2px solid #616061; width: 150px; height: 40px; background-color: #0889BD; font-size: medium; font-weight: bold; color: #FFFFFF;">
 </td>
</tr>
</table>
</form>
  </div><!--- end center align div---->
 
</div><!-- end content-->
</div><!--------------------page div--------->
</asp:Content>

