using System;
using System.Collections;
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

public partial class webform3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Fact"] != null)
        {
            txtFact.Text = Session["Fact"].ToString();
            lblMsg.Text = "Factorial of " + Session["Sum"].ToString() + " is ";
        }
    }
    protected void btnClick_Click(object sender, EventArgs e)
    {
        Int32 rev=0,sum=0,num;
        num = Convert.ToInt32(txtFact.Text);
        while (num != 0)
        {
            sum = num % 10;
            num = num / 10;
            rev = rev + sum*10;
        }
        txtRes.Text = Convert.ToString(rev);
    }
}
