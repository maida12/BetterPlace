<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rating.aspx.cs" Inherits="WebApplication1.rating" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Signup.css" rel="stylesheet" />
</head>

<style>



.content-wrap {
    width: 100%;
    padding-top: 100px;
    display: flex;
}

.content {
    width: 400px;
    height: 60vh;
    margin: auto;
    background-color: black;
    opacity: 0.8;
    text-align: center;
    color: white;
}


    .auto-style1 {
        width: 400px;
        height: 328px;
        margin: auto;
        background-color: black;
        opacity: 0.8;
        text-align: center;
        color: white;
    }


</style>

<body>
    <form id="form1" runat="server" style="align-content:center">
         <div    class="auto-style1" style ="align-content:center">
        <div style="margin-top:200px"><asp:Label ID="Label1"   Font= "Bold" runat="server" CssClass="firstName" Text="Please Rate the Venue: "></asp:Label></div>
             <table style="align-content:center; margin:40px">
                  
                 <tr>
                     <td></td>
                      <td></td>
                     <td></td>
                      <td></td>
                     <td>
                         
                <asp:RadioButton ID="RadioButton1" runat="server" Text="1 Stars"  CssClass="button" GroupName="type" Font-Bold="True" Font-Italic="True"  border-width="2px"  />
                 <tr>
                     <td></td>
                      <td></td>
                     <td></td>
                      <td></td>
                     <td>
                <asp:RadioButton ID="RadioButton2" runat="server" Text="2 Stars" CssClass="button"  GroupName="type" Font-Bold="True" Font-Italic="True" Font-Size="Larger" />
                   <tr>
                     <td></td>
                      <td></td>
                     <td></td>
                      <td></td>
                     <td>
                 <asp:RadioButton ID="RadioButton3" runat="server" Text="3 Stars"  CssClass="button" GroupName="type" Font-Bold="True" Font-Italic="True"  border-width="2px"  />
                 <tr>
                     <td></td>
                      <td></td>
                     <td></td>
                      <td></td>
                     <td>
                <asp:RadioButton ID="RadioButton4" runat="server" Text="4 Stars" CssClass="button"  GroupName="type" Font-Bold="True" Font-Italic="True" Font-Size="Larger" />
                 <tr>
                     <td></td>
                      <td></td>
                     <td></td>
                      <td></td>
                     <td>
                 <asp:RadioButton ID="RadioButton5" runat="server" Text="5 Stars"  CssClass="button" GroupName="type" Font-Bold="True" Font-Italic="True"  border-width="2px"  />
                      </table>
             <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
