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

public partial class Demo1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            LoadCityDDL1();
        }
        //PostBack is a page level property only one psotback occur at a time
        //if (!IsPostBack)
        //{
        //    LoadCityDDL2();
        //}
    }
    public void LoadCityDDL1()
    {
        ListItem li1 = new ListItem("Durg");
        ddlCity1.Items.Add(li1);

        ListItem li2 = new ListItem("Jaipur");
        ddlCity1.Items.Add(li2);

        ListItem li3 = new ListItem("Raipur");
        ddlCity1.Items.Add(li3);
    }
    
    //public void LoadCityDDL2()
    //{
    //    ListItem li1 = new ListItem("Durg");
    //    ddlCity2.Items.Add(li1);

    //    ListItem li2 = new ListItem("Jaipur");
    //    ddlCity2.Items.Add(li2);

    //    ListItem li3 = new ListItem("Raipur");
    //    ddlCity2.Items.Add(li3);
    //}
    
}
