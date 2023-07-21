<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication1.HomePage" %>


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
        <a class="active" href="./HomePage.aspx"><i class="fa fa-fw fa-home"></i> Home</a>
        </div>
  
   

    <form id="HomePage" class="container" runat="server">
        <div class="content-wrap">
            <div class="content">
                <h1> Home Page </h1>
                <div class="form-group">
                    <asp:label runat="server" ID="City">City: </asp:label>
                    <asp:TextBox  runat="server" ID="txtCity" />
                </div>
                <div class="form-group">
                    <asp:label runat="server" ID="MaxPrice" >Maximum Price: </asp:label>
                    <asp:TextBox  runat="server" ID="txtMaxPrice" />
                </div>
                <div class="form-group">
                    <asp:label runat="server" ID="MinPrice" >Minimum Price: </asp:label>
                    <asp:TextBox  runat="server" ID="txtMinPrice" />
                </div>
                <div class="form-group">
                    <asp:label runat="server" ID="Guests" > Guests: </asp:label>
                    <asp:TextBox  runat="server" ID="txtGuests" />
                </div>
                <div class="form-group">
                   <asp:label runat="server" ID="rating" > Rating: </asp:label>
                    <asp:TextBox  runat="server" ID="txtrating" />
                </div>
                <div>
                    <asp:button  runat="server" CssClass="btn" ID="btn" Text="Search" OnClick="btn_Click"></asp:button>
                </div>
            </div>
        </div>
  
    

        <asp:GridView Height="100px" ID ="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" ForeColor="Black" GridLines="Horizontal" Width="573px" OnRowCommand="GridView1_RowCommand">
            <Columns>
                

                      <asp:BoundField DataField="venueID" HeaderText="venue ID" ItemStyle-Width="30" >    
<ItemStyle Width="30px"></ItemStyle>
                    </asp:BoundField>
                 <asp:BoundField DataField="name" HeaderText="venue Name" ItemStyle-Width="150" >    
<ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>
                 <asp:BoundField DataField="hostID" HeaderText="hostID" ItemStyle-Width="150" >    

<ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>

                 <asp:BoundField DataField="VenueType" HeaderText="VenueType" ItemStyle-Width="30" >    
<ItemStyle Width="30px"></ItemStyle>
                    </asp:BoundField>
                 <asp:BoundField DataField="city" HeaderText="city" ItemStyle-Width="150" >    
<ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>
                 <asp:BoundField DataField="address" HeaderText="address" ItemStyle-Width="150" >   
                    
                
<ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>
                    
                
                 <asp:BoundField DataField="noOfGuests" HeaderText="noOfGuests" ItemStyle-Width="30" >    
<ItemStyle Width="30px"></ItemStyle>
                    </asp:BoundField>
                 <asp:BoundField DataField="rentalPrice" HeaderText="rentalPrice" ItemStyle-Width="150" >    
<ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>
                 <asp:BoundField DataField="available" HeaderText="available" ItemStyle-Width="150" >   

                
<ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>

                
                 <asp:BoundField DataField="noOfNights" HeaderText="noOfNights" ItemStyle-Width="30" >    
<ItemStyle Width="30px"></ItemStyle>
                    </asp:BoundField>
                 <asp:BoundField DataField="guestID" HeaderText="guestID" ItemStyle-Width="150" >    
<ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>
                 <asp:BoundField DataField="avgRating" HeaderText="avgRating" ItemStyle-Width="150" >   
<ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>
                <asp:ButtonField ButtonType="Button" Text="View Details">
                <ControlStyle ForeColor="#FFCC66" runat="server" />
                </asp:ButtonField>

            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
            <RowStyle HorizontalAlign="center"></RowStyle>
            
        </asp:GridView>
        </form>

</body>
</html>
