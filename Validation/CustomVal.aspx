<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomVal.aspx.cs" Inherits="CustomVal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Custom Validation Example</title>
    <!--CLIENT SIDE CUSTOM VALIDATION//START-->
    <script type="text/javascript" language="javascript">
        function IsOdd(source,args)
        {
         
           if (args.Value == "")
            {
                args.IsValid = false;
            }
            else
            {
                if(args.Value % 2 == 1)
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                } 
            }        
        }
                
    </script>
    <!--END-->
    <style type="text/css">
        .style1
        {
            width: 138px;
        }
        .style2
        {
            width: 146px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 35%;">
            <tr>
                <td align="center" colspan="2">
                    <b>Custom Validation Exaple</b></td>
            </tr>
            <tr>
                <td class="style2">
                    Enter an ODD number</td>
                <td class="style1">
                    <asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="CV" runat="server" 
                        ErrorMessage="Not an Odd Number" ControlToValidate="txtNum" 
                        Display="Dynamic"
                        
                        onservervalidate="CustomValidator1_ServerValidate" ValidateEmptyText="True" 
                        ></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="btnClick" runat="server" Text="Click" 
                        onclick="btnClick_Click" />
                </td>
            </tr>
            <tr>
                <td align="left" colspan="2">
                    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
