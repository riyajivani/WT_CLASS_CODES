<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ClassDynamicButtons.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            margin:10px;
            height:100%;
        }
        .container{
            display:flex;
            flex-direction:column;
            gap:10px;
            align-items:center;
        }
        .group{
            display: flex;
            gap:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
                   <div class="group">
                       <asp:CheckBox ID="CheckBox1" runat="server" Text="HyperLink" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true" />
                       <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"  OnTextChanged="TextBox1_TextChanged" AutoPostBack="true"></asp:TextBox>
                   </div>

             <div class="group">
                 <asp:CheckBox ID="CheckBox2" runat="server" Text="ImageButton" OnCheckedChanged="CheckBox2_CheckedChanged" AutoPostBack="true"/>
                 <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" OnTextChanged="TextBox2_TextChanged" AutoPostBack="true"></asp:TextBox>
            </div>

             <div class="group">
                 <asp:CheckBox ID="CheckBox3" runat="server" Text="LinkButton" OnCheckedChanged="CheckBox3_CheckedChanged" AutoPostBack="true"/>
                 <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" OnTextChanged="TextBox3_TextChanged" AutoPostBack="true"></asp:TextBox>
            </div>
        </div>

        <asp:Panel ID="Panel1" runat="server"></asp:Panel>

    </form>
</body>
</html>
