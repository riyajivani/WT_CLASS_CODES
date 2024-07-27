<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="Default7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <script type="text/javascript" src="my.js">
        
           //var nm = document.getElementById("TextBox1").toString();
           // if(nm.length <5)
           // {
           //     alert("name must be > 5");
           //     return false;
           // }
           // return true;
            }
    </script>
     <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 125px;
            left: 36px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 119px;
            left: 237px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 360px;
            left: 143px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 124px;
            left: 555px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 270px;
            left: 30px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 270px;
            left: 569px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 263px;
            left: 247px;
            z-index: 1;
            right: 830px;
        }
        .auto-style11 {
            position: absolute;
            top: 189px;
            left: 37px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 186px;
            left: 243px;
            z-index: 1;
        }
        .auto-style14 {
            width: 1115px;
            height: 44px;
            position: absolute;
            top: 473px;
            left: 45px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 199px;
            left: 585px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Font-Size="X-Large" Text="Enter Name"></asp:Label>
    
    </div>
        <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True" CssClass="auto-style2" Font-Size="X-Large" AutoPostBack="True"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Font-Size="X-Large" OnClick="Button1_Click" Text="Button" OnClientClick="return my();" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style4" ErrorMessage="Name cannot be null" ForeColor="Red" Font-Size="Large" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <p>
            &nbsp;</p>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Enter Password" Font-Size="X-Large"></asp:Label>
        <p>
            &nbsp;</p>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="my" ControlToValidate="TextBox3" CssClass="auto-style8" ErrorMessage="CustomValidator" SetFocusOnError="True" OnServerValidate="CustomValidator1_ServerValidate" Font-Size="Large"></asp:CustomValidator>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style9" AutoPostBack="True" CausesValidation="True" Font-Size="X-Large"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style12" Font-Size="X-Large"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style11" Font-Size="X-Large" Text="Enter Email"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style14" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" CssClass="auto-style15" ErrorMessage="RegularExpressionValidator" ForeColor="#FF5050" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </form>
</body>
</html>
