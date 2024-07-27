<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fileuploadlearn.aspx.cs" Inherits="Fileuploadlearn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload File" />
    </form>
</body>
</html>
