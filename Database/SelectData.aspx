<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectData.aspx.cs" Inherits="Database.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 518px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <br />
            <br />
        <asp:GridView ID="GridView1" runat="server" Width="235px" ></asp:GridView>
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 888px; top: 57px; position: absolute" Text="Id: "></asp:Label>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 881px; top: 114px; position: absolute" Text="Name: "></asp:Label>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 884px; top: 175px; position: absolute" Text="Sem: "></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Select" Height="63px" Width="132px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 158px; top: 257px; position: absolute; height: 61px; width: 124px" Text="Count Student" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="z-index: 1; left: 303px; top: 261px; position: absolute; height: 56px; width: 124px" Text="Insert" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="z-index: 1; left: 451px; top: 265px; position: absolute; height: 52px; width: 117px" Text="Update" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" style="z-index: 1; left: 593px; top: 269px; position: absolute; height: 44px; width: 122px; right: 571px" Text="Delete" />
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 985px; top: 53px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 982px; top: 112px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 982px; position: absolute; top: 168px"></asp:TextBox>
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" style="z-index: 1; left: 974px; top: 239px; position: absolute; height: 69px; width: 229px" Text="Insert data through textboxes" />
    </form>
</body>
</html>
