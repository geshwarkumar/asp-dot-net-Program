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
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
     SqlConnection con = new SqlConnection("Data Source=MCALAB06\\SQLEXPRESS;Initial Catalog=demo;Integrated Security=True");
       
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataAdapter sda = new SqlDataAdapter("select name from userdetail",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ddlname.DataSource = dt;
            ddlname.DataTextField = "name";
            DataBind();
        }
    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into userdetail values('" + txtname.Text + "' , '" + txtaddress.Text + "' , '" + txtmobile.Text + "' , '" + txtmail.Text + "' )", con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblmsg.Text = "Data Inserted Succefully";
        txtname.Text = "";
        txtaddress.Text = "";
        txtmail.Text = "";
        txtmobile.Text = "";
     }
protected void  ddlname_SelectedIndexChanged(object sender, EventArgs e)
{
    SqlDataAdapter sda = new SqlDataAdapter("select * from userdetail where name = '" + ddlname.Text + "'",con);
    DataTable dt = new DataTable();
    sda.Fill(dt);
    txtname.Text=dt.Rows[0][0].ToString();
    txtaddress.Text=dt.Rows[0][1].ToString();
    txtmobile.Text=dt.Rows[0][2].ToString();
    txtmail.Text=dt.Rows[0][3].ToString();
}
protected void  btnupdate_Click(object sender, EventArgs e)
{
        con.Open();
        SqlCommand cmd = new SqlCommand("update userdetail set name = '" + txtname.Text + "' ,address= '" + txtaddress.Text + "' ,mobile= '" + txtmobile.Text + "' ,email= '" + txtmail.Text + "'where name = '" + ddlname + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblmsg.Text = "Data Updated Succefully";
}
protected void  btndelete_Click(object sender, EventArgs e)
{
    con.Open();
    SqlCommand cmd = new SqlCommand("delete from userdetail where name = '" + ddlname.Text + "'",con);
    cmd.ExecuteNonQuery();
    con.Close();
    lblmsg.Text = "Data Deleted Permanently";
    txtname.Text = "";
        txtaddress.Text = "";
        txtmail.Text = "";
        txtmobile.Text = "";
}


}
