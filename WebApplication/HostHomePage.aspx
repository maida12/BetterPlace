<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HostHomePage.aspx.cs" Inherits="WebApplication1.HostHomePage" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Home Page | Better Place</title>
    <link href="HomePage.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 462px;
        }
    </style>
</head>
<body>

            <div class="navbar">

        <link href="Style.css" rel="stylesheet" />
        <img src="image/bglogo.png" alt="Games Logo"  height ="75" align ="left"  />
  
        <a href="./Logout.aspx"><i class="fa fa-fw fa-search"></i> Logout</a>
        <a href="./Settings.aspx"><i class="fa fa-fw fa-search"></i> Settings</a>
        <a href="./MyProfile.aspx"><i class="fa fa-fw fa-search"></i> Profile</a>
        <a class="active" href="./HostHomePage.aspx"><i class="fa fa-fw fa-home"></i> Home</a>
        </div>
    <h1> Welcome To BetterPlace HomePage! </h1>
  
   
</body>
</html>
