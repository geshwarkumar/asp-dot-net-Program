<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webform3.aspx.cs" Inherits="webform3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WebForm3</title>
    <style type="text/css">
        .style1
        {
            width: 194px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        This is webform3<br />
    
    </div>
    <table style="width: 33%;">
        <tr>
            <td colspan="2">
                Catch values from webform2 and revrse this value</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFact" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Click to reverse given number and result shaw in webfor4</td>
            <td>
                <asp:Button ID="btnClick" runat="server" onclick="btnClick_Click" 
                    Text="Button" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:TextBox ID="txtRes" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
