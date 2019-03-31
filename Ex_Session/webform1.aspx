<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="webform1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WebForm 1</title>
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style2
        {
            height: 23px;
            width: 182px;
        }
        .style3
        {
            width: 182px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Example of Session Variable<br />
        <table style="width: 30%;">
            <tr>
                <td colspan="2" align="center">
                    Enter The Values</td>
            </tr>
            <tr>
                <td class="style2">
                    Enter 1st no</td>
                <td class="style1">
                    <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Enter 2nd no</td>
                <td>
                    <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Sum and go to WebForm2</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Sum" Width="62px" 
                        onclick="Button1_Click1" />
                </td>
            </tr>
        </table>
        <asp:TextBox ID="txtRes" runat="server"></asp:TextBox>
        <br />
    
    </div>
    </form>
</body>
</html>
