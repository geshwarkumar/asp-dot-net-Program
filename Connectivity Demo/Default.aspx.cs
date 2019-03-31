using System;
using System.Collections;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
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
        SqlConnection con = new SqlConnection("Data Source=MCALAB06\\SQLEXPRESS;Initial Catalog=demo;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from userdetail", con);
        con.Open();
        SqlDataReader rdr = cmd.ExecuteReader();
        GridView1.DataSource = rdr;
        GridView1.DataBind();
        con.Close();
    }
}
