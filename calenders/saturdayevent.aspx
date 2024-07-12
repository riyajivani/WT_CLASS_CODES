<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="saturdayevent.aspx.cs" Inherits="calenders.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 765px">

            <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" style="z-index: 1; left: 408px; top: 285px; position: absolute; height: 364px; width: 473px" BackColor="White" BorderColor="White" BorderWidth="1px" DayNameFormat="Full" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" >
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 389px; top: 163px; position: absolute; height: 74px; width: 232px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Font-Size="30px" ForeColor="#FF0066" OnClick="Button1_Click" style="z-index: 1; left: 661px; top: 161px; position: absolute; height: 74px; width: 234px" Text="Select" />

           
            <asp:Label ID="Label2" runat="server" BorderColor="Red" BorderStyle="Double" style="z-index: 1; left: 177px; top: 257px; position: absolute; height: 34px; width: 892px; right: 88px" Text="daynameformat = full; here so that's why it showing me full days. i can also display first char, 3 char and so on. "></asp:Label>

           
    </form>
</body>
</html>
