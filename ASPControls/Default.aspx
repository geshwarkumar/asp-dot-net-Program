                    <%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Enter your name:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#99CCFF" 
            ForeColor="#660066" ontextchanged="TextBox1_TextChanged" 
            ToolTip="This is text box"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Enter Address"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="r1" 
            Text="Radio1" TextAlign="Left" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="r1" 
            Text="Radio2" />
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="r1" 
            Text="Radio3" Checked="true" />
    
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Check1" />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Check2" 
            oncheckedchanged="CheckBox2_CheckedChanged" />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Check3" />
    
        <br />
        <asp:HyperLink ID="HyperLink1" NavigateUrl="http://www.hyperlink.com" 
            runat="server" Target="_blank">HyperLink</asp:HyperLink>
    
        <br />
        <asp:HyperLink ID="HyperLink2" NavigateUrl="http://www.hyperlink.com" runat="server" Target="_parent">HyperLink</asp:HyperLink>
    
        <br />
        <asp:HyperLink ID="HyperLink3" NavigateUrl="http://www.hyperlink.com" runat="server" Target="_search">HyperLink</asp:HyperLink>
    
        <br />
        <asp:HyperLink ID="HyperLink4" NavigateUrl="http://www.hyperlink.com" runat="server" Target="_self">HyperLink</asp:HyperLink>
    
        <br />
        <asp:HyperLink ID="HyperLink5" 
            runat="server" Target="_top" NavigateUrl="~/Default.aspx">HyperLink</asp:HyperLink>
    
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:listitem Text="MCA" Value="1"></asp:listitem>
        <asp:listitem Text="MBA" Value="2" Enabled="False"></asp:listitem>
            <asp:ListItem Value="3">ME</asp:ListItem>
        </asp:DropDownList>
    
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Rows="3" SelectionMode="Multiple" 
            onselectedindexchanged="ListBox1_SelectedIndexChanged">
         <asp:listitem Text="MCA" Value="1"></asp:listitem>
        <asp:listitem Text="MBA" Value="2" Enabled="False"></asp:listitem>
            <asp:ListItem Value="3">ME</asp:ListItem>
        </asp:ListBox>
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Upload File" />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        Calendar Control:<br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="DOB" />
        <br />
        <asp:Calendar ID="Calendar1" runat="server" 
            onselectionchanged="Calendar1_SelectionChanged" Visible="False">
        </asp:Calendar>
        <br />
    
    </div>
    </form>
</body>
</html>
