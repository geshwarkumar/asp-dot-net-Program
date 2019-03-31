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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Browser.Cookies)
        {
            Response.Write("Cookies are supported");
        }
        else
        {
            Response.Write("Cookies are not supported");
        }
        if(!IsPostBack)
        {
            if(Request.Browser.Cookies)
            {
                if(Request.QueryString ["CheckCookie"]==null)
                {
                    HttpCookie cookie = new HttpCookie("TestCookie","1");
                    Response.Cookies.Add(cookie);
                    Response.Redirect("Default.aspx?CheckCookie=1");
                }
                else
                {
                    HttpCookie cookie = Request.Cookies["TestCookie"];
                    if(cookie==null)
                    {
                        lblMsg.Text="We have detected that cookie pls Enabled cookie";
                    }
                }
            }
            else
            {
                lblMsg.Text="Your Browser does not supported cookie";
            }
    }
        protected void  btnClick_Click(object sender, EventArgs e)
{
HttpCookie cookie = new HttpCookie("UserInfo");
            cookie["Name"] = txtName.Text;
            cookie["Email"] = txt
}
}

