using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page 
{
    int ClickCount = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Text = "0";
            TextBox2.Text = "0";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClickCount = ClickCount + 1;
        TextBox1.Text = ClickCount.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (ViewState["click"] != null)
        {
            ClickCount = (int)ViewState["click"] + 1;
        }
        TextBox2.Text = ClickCount.ToString();
        ViewState["click"] = ClickCount;
    }
}
