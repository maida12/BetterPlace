<%@ Page   Title="Venue Details"Language="C#" AutoEventWireup="true" CodeBehind="VenueDetails.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Profile | Better Place</title>
    <link href="Style.css" rel="stylesheet" />
    
</head>
<body>
    
 <div class="navbar">
        <img src="image/bglogo.png" alt="Games Logo"  height ="75" align ="left"  />
  
        <a href="./Logout.aspx"><i class="fa fa-fw fa-search"></i> Logout</a>
        <a href="./Settings.aspx"><i class="fa fa-fw fa-search"></i> Settings</a>
        <a href="./MyProfile.aspx"><i class="fa fa-fw fa-search"></i> Profile</a>
        <a class="active" href="./HomePage.aspx"><i class="fa fa-fw fa-home"></i> Home</a>
        
  
    </div>
  
<style>
.cssdetailsview .fheader{
    color:#dac319;
    text-align:center;
    font-weight: bold;
}
    .cssdetailsview .header td {
        padding:20px 20px;
        color:#dac319;
    }

    .auto-style1 {
        border-style: none;
        border-color: inherit;
        border-width: medium;
        margin-left: 754px;
        background-color: #dac319; /* Green */
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        cursor: pointer;
        transition: .3s ease-in-out;

    }
    .auto-style1:hover {
        background-color: #ffd800;
    }


    </style>
    <form runat="server">
        <div style="align-content">
            <asp:DetailsView  FieldHeaderStyle-CssClass="fheader" HeaderText="Venue Details" ID="DetailsView1"   horizontalalign="Center"   runat  ="server" Height="438px" Width="538px" class="Grid" CssClass="cssdetailsview" BackColor="#4e4e4e" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" style="margin-top: 84px" ForeColor="white">
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />


              
<FieldHeaderStyle CssClass="fheader"></FieldHeaderStyle>
<HeaderStyle CssClass="header" ></HeaderStyle>

              
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle  HorizontalAlign="Center" BackColor="#424242" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />



                <RowStyle Font-Bold="true"  Font-Size="Large" height="60px" HorizontalAlign="Center" />

                 

            </asp:DetailsView>
           <div style="align-content">  <asp:Button ID="Button1" runat="server" Text="Checkout" CssClass="auto-style1" Width="538px" OnClick="Button1_Click" /></div>
        </div>
        </form>
       
     </body>
    </html>
