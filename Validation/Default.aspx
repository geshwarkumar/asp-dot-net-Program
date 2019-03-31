<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: large; font-style: italic; text-decoration: underline; font-family: Consolas; text-transform: uppercase;">
    
        Validation</div>
        
    <p style="font-family: 'Arial Black'; font-size: large; font-style: normal; text-transform: uppercase; color: #000080;">
        For Field Required</p>
    <p> <!--FOR FIELD REQUIRED VALIDATOR-->
        <asp:Label ID="Label1" runat="server" Text="Enter name"></asp:Label>
&nbsp;<asp:TextBox ID="txtName" runat="server" ontextchanged="txtName_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="txtName" ErrorMessage="Name Required" 
            SetFocusOnError="True"></asp:RequiredFieldValidator><!--ALSO BE USED INSIDE THE RFV TAG Text="*"-->
    </p>
    <p> 
        <asp:Button ID="btnRfv" runat="server" onclick="Button1_Click" Text="Click" />
    </p>
    <p> 
        <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
    </p>
    <p style="font-family: 'Arial Black'; font-style: normal; font-size: large; text-transform: uppercase; color: #000080;">
        For Range Validator</p>
    <p><!--FOR RANGE VALIDATOR-->
        <asp:Label ID="Label2" runat="server" Text="Enter number (10 digit)"></asp:Label>
&nbsp;<asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
    </p>
    <p style="font-family: 'Arial Black'; font-size: large; font-style: normal; text-transform: uppercase; color: #000080;">
        For Compare Validator</p>
    <p> <!--FOR COMPARE VALIDATOR-->
        <asp:Label ID="Label3" runat="server" Text="Enter Character set"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtChar" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Renter Character set"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtRechar" runat="server"></asp:TextBox>
    </p>
    <p style="font-family: 'Arial Black'; font-style: normal; font-size: large; text-transform: uppercase; color: #000080;">
        For Regular expression Validator</p>
    <p><!--FOR REGULAR EXPRESSION VALIDATOR-->
        <asp:Label ID="Label5" runat="server" Text="Enter Gmail"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtGmail" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
        
    </form>
</body>
</html>
