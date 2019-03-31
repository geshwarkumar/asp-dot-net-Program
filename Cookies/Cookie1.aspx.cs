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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("UserInfo");

        cookie["Name"] = txtName.Text;
        cookie["Email"] = txtEmail.Text;
        //Persistence cookies
        cookie.Expires = DateTime.Now.AddDays(10);//for 10 days save the data
        Response.Cookies.Add(cookie);
        Response.Redirect("~/Cookie2.aspx");
    }
}
