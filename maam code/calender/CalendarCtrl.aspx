<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CalendarCtrl.aspx.cs" Inherits="CalendarCtrl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" SelectionMode="DayWeekMonth"></asp:Calendar>

        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="print week" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Date arithmetic" />
    </div>
    </form>
</body>
</html>
