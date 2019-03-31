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

public partial class webform2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Sum"] != null)
        {
            txtSum.Text = Session["Sum"].ToString();
        }
    }
    protected void btnClick_Click(object sender, EventArgs e)
    {
        int fact = 1;
        Int32 num;
        num = Convert.ToInt32(txtSum.Text);

        while (num != 0)
        {
            fact = fact * num;
            num--;
        }
        txtFact.Text = Convert.ToString(fact);
        Session["Fact"] = fact;
        Response.Redirect("~/webform3.aspx");
    }
}
