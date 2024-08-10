<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StoreData.aspx.cs" Inherits="Database.StoreData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 749px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 772px; top: 173px; position: absolute; height: 59px; width: 123px" Text="StoreData" />
        <asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 728px; top: 272px; position: absolute; height: 152px; width: 232px">
        </asp:GridView>
    </form>
</body>
</html>
