<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyVenue.aspx.cs" Inherits="WebApplication1.MyVenue" %>

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
  


    <style>
    

    </style>




    <form id="EditProfile" runat="server" style="align-content:center">
       
            <asp:GridView ID="GridView1"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" CssClass="auto-style1" runat ="server" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" GridLines="None" Height="116px" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="White" CellSpacing="1" style="margin-left: 151px; margin-right: 0px; margin-top: 99px">
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
                    <asp:ButtonField ButtonType="Button" CommandName="del" Text="Delete">
                    <ControlStyle ForeColor="Red" />
                    </asp:ButtonField>
                    <asp:ButtonField ButtonType="Button" CommandName="edit" Text="Edit">
                    <ControlStyle ForeColor="#009999" />
                    </asp:ButtonField>
             </Columns> 


                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle   HorizontalAlign="center" CssClass="rows"  font-size="Large" BackColor="#DEDFDE" ForeColor="Black"  />

               
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />


            </asp:GridView>
    </form>
</body>
</html>
