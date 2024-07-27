<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImageMap.aspx.cs" Inherits="ImageMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table><tr><td><h2>Image Button</h2></td><td><h2>Image Map</h2></td></tr>
       <tr><td> <asp:ImageButton ID="ImageButton1" runat="server" Height="500px" ImageUrl="~/im.jpg" Width="500px" OnClick="ImageButton1_Click1" />
        </td>
<td> 
    <asp:ImageMap ID="ImageMap2" runat="server" OnClick="ImageMap1_Click" Height="500px" ImageUrl="~/im.jpg" Width="500px" HotSpotMode="PostBack">
    <asp:RectangleHotSpot AlternateText="Clouds" Bottom="135" HotSpotMode="PostBack" PostBackValue="1" Right="500" Target="_blank" />
    <asp:CircleHotSpot AlternateText="Sea" HotSpotMode="PostBack" PostBackValue="2" Radius="150" Target="_blank" X="250" Y="250" />
    <asp:PolygonHotSpot AlternateText="Land" HotSpotMode="PostBack" PostBackValue="3" Target="_blank" Coordinates="0,230,493,416,500,500,1,500" />
    </asp:ImageMap> </td></tr>
<tr>
        <td class="auto-style1"><h2>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </h2>
            </td>
     <td><h2> <asp:Label ID="Label2" runat="server" Visible="false" Text="Label"></asp:Label> </h2></td>
           </tr>
  
  
    </table>
    </div>
    </form>
</body>
</html>
