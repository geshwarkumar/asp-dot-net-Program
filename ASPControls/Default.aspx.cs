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
        //TextBox1.Text = "Welcome";
        TextBox2.Focus();
        //FOR DROPDOWN LIST
        //if (!PostBackOptions)
        //{
            //ListItem li_mtech = new ListItem("M.TECH", "4");
            //ListItem li_msc = new ListItem("MSc", "5");
            //ListItem li_ms = new ListItem("MS", "6");
            //li_mtech.Selected = true;
            //li_ms.Enabled = false;
            //DropDownList1.Items.Add(li_mtech);
            //DropDownList1.Items.Add(li_msc);
            //DropDownList1.Items.Add(li_ms);
        //}
        //FOR LISTBOX
        ListItem li_mtech = new ListItem("M.TECH", "4");
        ListItem li_msc = new ListItem("MSc", "5");
        ListItem li_ms = new ListItem("MS", "6");
        li_mtech.Selected = true;
        li_ms.Enabled = false;
        ListBox1.Items.Add(li_mtech);
        ListBox1.Items.Add(li_msc);
        ListBox1.Items.Add(li_ms);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Write("Welcome" + TextBox1.Text);//retrive text from text box
        //FOR LISTBOX
        //FOR SINGLE SELECTION TRUE
        //if(ListBox1.SelectedIndex != -1)
        //if (ListBox1.SelectedItem != null)
        //{
        //    Response.Write("Text = " + ListBox1.SelectedItem + "<br/>");
        //    Response.Write("Value = " + ListBox1.SelectedValue + "<br/>");
        //    Response.Write("Index = " + ListBox1.SelectedIndex + "<br/>");
        //}
        //FOR MULTIPLE SELECTION TRUE
        foreach (ListItem li in ListBox1.Items)
        {
            if (li.Selected)
            {
                Response.Write("<br/>Text = " + li.Text + "<br/>");
                Response.Write("Value = " + li.Value + "<br/>");
                Response.Write("Index = " + ListBox1.Items.IndexOf(li).ToString() + "<br/>");
                Response.Write("===================<br/>");
            }
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        Response.Write("Welcome" + TextBox1.Text);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
             //FOR SEARCH FILE EXTENTION
             string fileExtention = System.IO.Path.GetExtension(FileUpload1.FileName);
            if(fileExtention.ToLower() != ".pdf")// || fileExtention.ToLower() != ".docx")
            {
                Label3.Text="Only a file eith .pdf and .docx extention are allowed";
                Label3.ForeColor=System.Drawing.Color.Blue;
            }
            else
            {
                int fileSize = FileUpload1.PostedFile.ContentLength;
                if(fileSize>102400)
                {
                    Label3.Text="The file you selected is of "+fileSize+"Byte"+"Maximum size upto 100 KB /102400 Bytes";
                    Label3.ForeColor=System.Drawing.Color.Red;
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("~/upload"+FileUpload1.FileName));
                    Label3.Font.Bold=true;
                    Label3.ForeColor=System.Drawing.Color.Green;
                    Label3.Text="File of size"+fileSize+"is Uploaded successful";
                }
            }
         }
        //else
        //{
        //    FileUpload1.SaveAs(Server.MapPath("~/upload/"+FileUpload1.FileName));
        //    Label3.ForeColor=System.Drawing.Color.Red;
        //    Label3.Font.Bold=true;
        //    Label3.Text="File upload successful";
        //}
        else
        {
            Label3.ForeColor=System.Drawing.Color.Red;
            Label3.Font.Bold=true;
            Label3.Text="Pls select file first...!!!";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {

    }
}
