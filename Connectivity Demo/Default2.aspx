<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .btnstyle
        {
            width: 90px;
            background-color:green;
            font-style:oblique;            
        }
        .textboxstyle
        {
            width: 83px;
        }
        .style4
        {
            width: 128px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <table>
        <tr>
            <td class="style3">
                Name:</td>
            <td class="style4">
                <asp:TextBox ID="txtname" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RFVname" runat="server" 
                    ControlToValidate="txtname" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:DropDownList ID="ddlname" runat="server" 
                    onselectedindexchanged="ddlname_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Address:</td>
            <td colspan="2">
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                EmailId:</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Mobile:</td>
            <td class="style4" colspan="2">
                <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmobile" ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td colspan="1" class="btnstyle">
                <asp:Button ID="btninsert" runat="server" Text="Insert" 
                    onclick="btninsert_Click" CssClass="btnstyle" />
            </td>
            <td class="btnstyle">
                <asp:Button ID="btnupdate" runat="server" Text="Update" 
                    onclick="btnupdate_Click" CssClass="btnstyle" />
            </td>
            <td class="btnstyle">
                <asp:Button ID="btndelete" runat="server" Text="Delete" 
                    onclick="btndelete_Click" CssClass="btnstyle" />
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
