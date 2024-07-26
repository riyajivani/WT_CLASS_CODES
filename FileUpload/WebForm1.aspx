<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FileUpload.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 769px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUpload1" runat="server" style="z-index: 1; left: 471px; top: 143px; position: absolute" />
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 586px; top: 183px; position: absolute" Text="Upload" OnClick="Button1_Click" />
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 311px; top: 298px; position: absolute; height: 404px; width: 648px">
        </asp:Panel>
        <asp:Label ID="Label1" runat="server" style="text-align:center;z-index: 1; left: 446px; top: 248px; position: absolute; height: 35px; width: 354px"></asp:Label>
    </form>
</body>
</html>
