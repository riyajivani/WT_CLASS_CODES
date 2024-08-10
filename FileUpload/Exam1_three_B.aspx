<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam1_three_B.aspx.cs" Inherits="FileUpload.Exam1_three_B" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 581px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 226px; top: 170px; position: absolute" Text="Enrollment No.: "></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 229px; top: 285px; position: absolute" Text="Email: "></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 224px; top: 377px; position: absolute" Text="Resume: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 329px; top: 221px; position: absolute" TextMode="Phone"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 375px; top: 169px; position: absolute" TextMode="Number"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 330px; top: 281px; position: absolute" TextMode="Email"></asp:TextBox>
        <asp:FileUpload ID="FileUpload1" runat="server" style="z-index: 1; left: 325px; top: 380px; position: absolute" />
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 363px; top: 461px; position: absolute" Text="Submit" OnClick="Button1_Click" />
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 332px; top: 108px; position: absolute"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 226px; top: 227px; position: absolute" Text="Contact: "></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 225px; top: 110px; position: absolute" Text="Name: "></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 349px; top: 528px; position: absolute; height: 53px; width: 420px;" Text=" "></asp:Label>
        
    </form>
</body>
</html>
