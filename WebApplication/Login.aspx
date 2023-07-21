<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs"  Inherits="WebApplication1.WebForm2" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Add Venue | Better Place</title>
    <link href="Style.css" rel="stylesheet" />
</head>
  <body>
      <form id="form1" runat="server">
    <div id="container">
   
       
  <asp:Image ID="Image2" ImageUrl="image/biglogo.png" cssclass="logo"  runat ="server" />
    
    
    <style>
.vl {
  border-left: 2px solid white;
  height: 480px;
  position: absolute;
  left: 50%;
  top:25%;
  margin-left: -3px;

   
}
</style>

<div class="vl"></div>
        <div class="loginbox"> 
            <h1>LOGIN</h1>
               
                <asp:Label  CssClass="acc" ID="Label1" runat="server" Text="&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;    Need A BetterPlace Account?&nbsp;   ">  </asp:Label>
                 <asp:LinkButton CssClass="sign" Text="Create An Account" ID="LinkButton2" runat="server" href="./Signup.aspx"></asp:LinkButton>
                <br /><br />
                <asp:Label CssClass="email" runat="server" Text="Email"></asp:Label>
                <asp:TextBox  runat="server" ID="TextBox1" CssClass="txtemail" placeholder="Enter Email"/>
                <asp:Label CssClass="pass"  runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextBox2"  TextMode="password" CssClass="txtpass" placeholder="*********" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="LOG IN" CssClass="btnsubmit" href="./Webform3.aspx" OnClick="Button1_Click"/>
                <asp:Label ID="Label2" runat="server" Text="You Entered Wrong Credentials!" ForeColor="Red" Font-Size="Large"> </asp:Label>
       
        </div>
    </div>
          </form>
=</body>
    </html>


