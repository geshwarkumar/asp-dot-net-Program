<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RSummary.aspx.cs" Inherits="RSummary" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 179px;
        }
        .style2
        {
            width: 102px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 38%;">
            <tr>
                <td align="center" colspan="2">
                   <b> USER REGISTRATION</b></td>
            </tr>
            <tr>
                <td class="style2">
                    Enter Username</td>
                <td class="style1">
                    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="REUser" runat="server" 
                         Text="*" ErrorMessage="Username Required" SetFocusOnError="True" 
                        ControlToValidate="txtUname" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Enter Email</td>
                <td class="style1">
                    <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="REMail" runat="server" 
                         Text="*" ErrorMessage="Invalid Mail Id..." 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        SetFocusOnError="True" ControlToValidate="txtMail" Display="Dynamic">*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RVMail" runat="server" 
                        Display="Dynamic" ErrorMessage="Mail id required" SetFocusOnError="True" 
                        ControlToValidate="txtMail">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Enter Password</td>
                <td class="style1">
                    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RVPass" runat="server" 
                         Text="*" ErrorMessage="Not in range" ControlToValidate="txtPass" MaximumValue="8" 
                        MinimumValue="5" SetFocusOnError="True" Display="Dynamic">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Confirm password</td>
                <td class="style1">
                    <asp:TextBox ID="txtCpass" runat="server"></asp:TextBox>
                   
                    <asp:CompareValidator ID="CVCompare" runat="server"
                         Text="*" ErrorMessage="Password not match..." ControlToCompare="txtPass" ControlToValidate="txtCpass" 
                        Display="Dynamic" SetFocusOnError="True">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="center" bgcolor="#669999" colspan="2">
                    <asp:Button ID="btnClick" runat="server" Text="Click" 
                        onclick="btnClick_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="VS" runat="server" HeaderText="Validation Errors:" 
                        ShowMessageBox="True" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
