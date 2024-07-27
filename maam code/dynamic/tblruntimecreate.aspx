<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tblruntimecreate.aspx.cs" Inherits="tblruntimecreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <br />
        
        <br />
        <br />
      

        <table style="width: 100%;">
            <tr>
                <td> select rows&nbsp;</td>
                <td><asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
        </asp:DropDownList>&nbsp;</td>
               
            </tr>
            <tr>
                <td>select cols</td>
                <td><asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
        </asp:DropDownList>&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="show table" />
                    <br />
                    <br />
                    <br />
                </td>
           
            </tr>
             <tr>
                <td> your table is here:</td>
                <td>
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </td>
               
            </tr>
        </table>
    
    </div>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    </form>
</body>
</html>
