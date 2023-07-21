<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn Form</title>
    <link href="SignUp.css" rel="stylesheet" />
</head>
<body >
       
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
            <h1>SIGN UP</h1>
            <form runat="server">
               
                <br />
                <asp:Label CssClass="firstName" runat="server" Text="First Name"></asp:Label>
                <asp:TextBox  runat="server" ID="TextBox3" CssClass="txtfirstName" placeholder="Enter First Name"/>
                 <asp:Label CssClass="lastName" runat="server" Text="Last Name"></asp:Label>
                <asp:TextBox  runat="server" ID="TextBox4" CssClass="txtlastName" placeholder="Enter Last Name"/>
 
                <asp:Label CssClass="email" runat="server" Text="Email"></asp:Label>
                <asp:TextBox  runat="server" ID="TextBox1" CssClass="txtemail" placeholder="Enter Email"/>
                <asp:Label CssClass="pass"  runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextBox2"  TextMode="password" CssClass="txtpass" placeholder="*********" runat="server"></asp:TextBox>
                <asp:Label CssClass="confirmpass"  runat="server" Text="Confirm Password"></asp:Label>
                <asp:TextBox ID="TextBox5"  TextMode="password" CssClass="txtconfirmpass" placeholder="*********" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="firstName" Text="You are Signing Up As: "></asp:Label>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Host"  CssClass="button" GroupName="type" Font-Bold="True" Font-Italic="True"  border-width="2px"  />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Guest" CssClass="button"  GroupName="type" Font-Bold="True" Font-Italic="True" Font-Size="Larger" />

                <br /><br /><br />
                <asp:Button ID="Button1" runat="server" Text="SIGN UP" CssClass="btnsubmit" OnClick="Button1_Click1" />
                 <br /><br /><br />
                <asp:Label ID="Label2" runat="server" Text="Email ALready Exist!  Please Enter New Email" ForeColor="Red" Font-Size="Large"></asp:Label>
        </form>
        </div>
    
</body>
</html>
