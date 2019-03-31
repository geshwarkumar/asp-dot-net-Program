<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webform2.aspx.cs" Inherits="webform2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WebForm2</title>
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <p>
        This is WebForm2</p>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 29%;">
            <tr>
                <td colspan="2">
                    Catch value from webform1 and calculate factorial<br />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Sum of two number =</td>
                <td class="style1">
                    <asp:TextBox ID="txtSum" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Factorial of given number =</td>
                <td>
                    <asp:TextBox ID="txtFact" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Click to find factorial and result goto in webform3</td>
                <td>
                    <asp:Button ID="btnClick" runat="server" onclick="btnClick_Click" 
                        Text="Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
