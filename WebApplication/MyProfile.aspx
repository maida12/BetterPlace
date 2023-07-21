<%@ Page Language="C#" AutoEventWireup="true"   MasterPageFile="~/head.Master" CodeBehind="MyProfile.aspx.cs" Inherits="WebApplication1.MyProfile" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="MyProfile.css" rel="stylesheet" />

<body>
   


    <form id="MyProfile" class="container" runat="server">
        <div class="content-wrap">
            <div class="content">
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

    .auto-style1:hover {
        background-color: #ffd800;
    }


                   .auto-style2 {
                       border-style: none;
                       border-color: inherit;
                       border-width: medium;
                       margin-top: 2px;
                       background-color: #FFBF00;
                       color: white;
                       padding: 15px 32px;
                       text-align: center;
                       text-decoration: none;
                       display: inline-block;
                       font-size: 16px;
                       width: 536px;
                       margin-left: 0px;
                   }


    </style>
        <div style="align-content">
            <asp:DetailsView  FieldHeaderStyle-CssClass="fheader" HeaderText="My Profile" ID="DetailsView1"   horizontalalign="Center"   runat  ="server" Height="438px" Width="538px" class="Grid" CssClass="cssdetailsview" BackColor="#4e4e4e" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" style="margin-top: 84px" ForeColor="white">
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />


              
<FieldHeaderStyle CssClass="fheader"></FieldHeaderStyle>
<HeaderStyle CssClass="header" ></HeaderStyle>

              
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle  HorizontalAlign="Center" BackColor="#424242" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />



                <RowStyle Font-Bold="true"  Font-Size="Large" height="60px" HorizontalAlign="Center" />

                 

            </asp:DetailsView>
                <div>
                        <asp:Button ID="Button1"  class="auto-style2" runat="server" Text="Edit Profile" OnClick="Button1_Click" />
                     
                </div>
            </div>
        </div>
    </form> 
</body>
</asp:Content>