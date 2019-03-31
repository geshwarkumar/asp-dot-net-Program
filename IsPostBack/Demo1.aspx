<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo1.aspx.cs" Inherits="Demo1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 157px;
        }
        .style3
        {
            width: 132px;
        }
        .style4
        {
            width: 203px;
        }
    </style>
</head>
<body>
    <p>
        Example of PostBack</p>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 28%;">
            <tr>
                <td align="center" class="style1" colspan="2">
                    If postback not occur<br />
                    Enter Student Details</td>
            </tr>
            <tr>
                <td class="style3">
                    Name</td>
                <td class="style4">
                    <asp:TextBox ID="txtName1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Email</td>
                <td class="style4">
                    <asp:TextBox ID="txtEmail1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    City</td>
                <td class="style4">
                    <asp:DropDownList ID="ddlCity1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                    <asp:Button ID="btnSave1" runat="server" onclick="btnSave1_Click" Text="Save" />
                </td>
            </tr>
        </table>
    
    </div>
    <table style="width: 28%;">
        <tr>
            <td align="center" class="style1" colspan="2">
                If Postback Occur<br />
                Enter Student Details</td>
        </tr>
        <tr>
            <td class="style3">
                Name</td>
            <td class="style4">
                <asp:TextBox ID="txtName2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Email</td>
            <td class="style4">
                <asp:TextBox ID="txtEmail2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                City</td>
            <td class="style4">
                <asp:DropDownList ID="ddlCity2" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <asp:Button ID="btnSave2" runat="server" Text="Save" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
