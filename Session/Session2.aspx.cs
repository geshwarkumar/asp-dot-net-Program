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

public partial class Session2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //FOR ONLY THIS ENVIRONMENT
        //lblName.Text = Session["Name"].ToString();
        //lblEmail.Text = Session["Email"].ToString();
        //FOR ALL ENVIRONMENT / BROWSER
        if (Session["Name"] != null)
        {
            lblName.Text = Session["Name"].ToString();
        }
        if (Session["Email"] != null)
        {
            lblName.Text = Session["Email"].ToString();
        }
    }
}
