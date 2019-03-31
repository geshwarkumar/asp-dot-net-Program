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
using System.Collections; //for data type

public partial class _Default : System.Web.UI.Page 
{
    Int32 num1, num2, res;
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        num1 = Convert.ToInt32(txtNum1.Text);
        num2 = Convert.ToInt32(txtNum2.Text);
        res = num1 + num2;
        txtRes.Text = Convert.ToString(res);
        Session["Sum"] = Convert.ToString(res) ;
        Response.Redirect("~/webform2.aspx");
    }
}
