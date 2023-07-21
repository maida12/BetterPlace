<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="WebApplication1.EditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Profile | Better Place</title>
    <link href="EditProfile.css" rel="stylesheet" />
</head>
<body>
    
 <div class="navbar">
        <img src="image/bglogo.png" alt="Games Logo"  height ="75" align ="left"  />
  
        <a href="./Logout.aspx"><i class="fa fa-fw fa-search"></i> Logout</a>
        <a href="./Settings.aspx"><i class="fa fa-fw fa-search"></i> Settings</a>
        <a href="./MyProfile.aspx"><i class="fa fa-fw fa-search"></i> Profile</a>
        <a class="active" href="./HomePage.aspx"><i class="fa fa-fw fa-home"></i> Home</a>
        
  
    </div>

    <form id="EditProfile" class="container" runat="server">
        <div class="content-wrap">
            <div class="content">
                <h1> Edit Profile </h1>
                <div class="form-group">
                    <asp:label runat="server" ID="Name">First Name:  </asp:label>
                    <asp:TextBox  runat="server" ID="txtName" />
                </div>
                <div class="form-group">
                    <asp:label runat="server" ID="City">Last Name: </asp:label>
                    <asp:TextBox  runat="server" ID="txtCity" />
                </div>
                <div class="form-group">
                    <asp:label runat="server" ID="UserType" >Password: </asp:label>
                    <asp:TextBox  runat="server" ID="txtUserType" />
                </div>
                <div class="btn">
                    <asp:button  runat="server" ID="btn" Text="Submit" OnClick="btn_Click"></asp:button>
                </div>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Profile Is Updated Successfully!" ForeColor="Green"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
