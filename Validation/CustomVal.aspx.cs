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

public partial class CustomVal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //SERVER SIDE VALIDATION//when we click button
        //CHECK ENTRED ELEMENT NUMBER OR NOT, BLANK OR NOT, ODD OR EVEN
        if (args.Value == "")
        {
            args.IsValid = false;
        }
        else
        {
            int num;
            bool isNumber = int.TryParse(args.Value, out num);
            if (isNumber && num >= 0 && num % 2 == 1)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        //ONLY TRUE FOR NUMERIC VALUE CHECK VALUE IS BLANK OR NOT
        //if (args.Value == "")
        //{
        //    args.IsValid = false;
        //}
        //else
        //{
        //    if(Convert.ToInt32(args.Value) % 2 == 1)
        //    {
        //        args.IsValid = true;
        //    }
        //    else
        //    {
        //        args.IsValid = false;
        //    }
        //}
        
        //ONLY FOR NUMERIC VALUE
        //if(Convert.ToInt32(args.Value)%2==1)
        //{
        //    args.IsValid=true;
        //}
        //else
        //{
        //    args.IsValid=false;
        //}
    }
    protected void btnClick_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            lblmsg.ForeColor = System.Drawing.Color.Green;
            lblmsg.Text = "Data is saved successfully";
        }
        else
        {
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "Validation Failed-data not saved...";
        }
    }

}
