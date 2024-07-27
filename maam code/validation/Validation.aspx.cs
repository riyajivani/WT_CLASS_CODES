using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        { Response.Write("<h1>" + "Reg Done " + "</h1>"); }
        else {
            Response.Write("<h1>" + "Fill up all the details " + "</h1>");
        }
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int c1 = 0;
        string n = args.Value.ToString();
        foreach (char ch in n)
        {
            if (ch >= '0' && ch <= '9')
            {
                c1++;
            }
            if (c1 == 0)
            {
                args.IsValid = false;
                CustomValidator1.ErrorMessage = "Pwd must contain atleast 1 num";
                CustomValidator1.SetFocusOnError = true;
            }
            else { args.IsValid = true; }

        }
    }
}