﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddVenue.aspx.cs" Inherits="WebApplication1.AddVenue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Add Venue | Better Place</title>
    <link href="AddVenue.css" rel="stylesheet" />
</head>
<body>

     <div class="navbar">

        <img src="image/bglogo.png" alt="Games Logo"  height ="75" align ="left"  />
  
        <a href="./Logout.aspx"><i class="fa fa-fw fa-search"></i> Logout</a>
        <a href="./Settings.aspx"><i class="fa fa-fw fa-search"></i> Settings</a>
        <a href="./MyProfile.aspx"><i class="fa fa-fw fa-search"></i> Profile</a>
        <a class="active" href="./HomePage.aspx"><i class="fa fa-fw fa-home"></i> Home</a>
        
  
    </div>

    <form id="AddVenue" class="container" runat="server">
        <div class="content-wrap">
            <div class="content">
                <h1> Add Venue </h1>
                <div class="form-group">
                    <asp:label runat="server" ID="VenueName">Venue Name:  </asp:label>
                    <asp:TextBox  runat="server" ID="txtVenueName" />
                </div>
                <div class="form-group">
                    <asp:label runat="server" ID="City">City: </asp:label>
                    <asp:TextBox  runat="server" ID="txtCity" />
                </div>
                <div class="form-group">
                    <asp:label runat="server" ID="Address" >Address: </asp:label>
                    <asp:TextBox  runat="server" ID="txtAddress" />
                </div>
                <div class="form-group">
                    <asp:label runat="server" ID="VenueType" >Venue Type: </asp:label>
                    <asp:TextBox  runat="server" ID="txtVenueType" />
                </div>
                <div class="form-group">
                    <asp:label runat="server" ID="Guests" >Maximum Guests: </asp:label>
                    <asp:TextBox  runat="server" ID="txtGuests" />
                </div>
                <div class="form-group">
                    <asp:label runat="server" ID="Price" >Rental Charge: </asp:label>
                    <asp:TextBox  runat="server" ID="txtPrice" />
                </div>
                <div class="btn">
                    <asp:button  runat="server" ID="btn" Text="Submit" OnClick="btn_Click1"></asp:button>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
