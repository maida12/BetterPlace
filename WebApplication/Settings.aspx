<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/head.Master" Inherits="WebApplication1.Setting" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" href="./Settings.css">
    <style type="text/css">
        .auto-style1 {
            width: 492px;
            height: 231px;
            margin: 133px auto auto auto;
            background-color: black;
            opacity: 0.8;
            text-align: center;
            color: white;
        }
    </style>

    

    <form id="EditProfile" class="container" runat="server">
        <div class="content-wrap">
            <div class="auto-style1">
                <h1> Settings</h1>
                 <asp:Button ID="Button1" runat="server" Text="Add Venue" CssClass="btn" href="./AddVenue.aspx" OnClick="Button1_Click"/>
                    
                    <asp:Button ID="Button4" runat="server" Text="My Venues" CssClass="btn" href="./EditVenue.aspx" OnClick="Button4_Click"/>
                  
            </div>
        </div>
    </form>


</asp:Content>
