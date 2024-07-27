<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CommandCalculator.aspx.cs" Inherits="CommandCalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Addition" CommandArgument="+" CommandName="math" OnCommand="Calcfunction" />
        <asp:Button ID="Button2" runat="server" Text="subtraction" CommandArgument="sub" CommandName="math" OnCommand="Calcfunction" />
        <asp:Button ID="Button3" runat="server" Text="multiplication" CommandArgument="multi" CommandName="math" OnCommand="Calcfunction" />
        <asp:Button ID="Button4" runat="server" Text="division" CommandArgument="div" CommandName="math" OnCommand="Calcfunction" />

        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" CommandArgument="clearfirst" CommandName="clear" OnCommand="Calcfunction" Text="clear first" />
        <asp:Button ID="Button6" runat="server" Text="Button" />

    </div>
    </form>
</body>
</html>
