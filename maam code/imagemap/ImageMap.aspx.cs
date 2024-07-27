using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ImageMap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
    }

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Label1.Visible = true;
        Label1.Text = e.X.ToString() + " , " + e.Y.ToString();
        
    }

    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {
        // Response.Write("hello");
        string s = e.PostBackValue.ToString();
        Label2.Visible = true;
        if (s == "1")
        {
            Label2.Text = "you selected clouds";
        }
        else if (s == "2")
        {
            Label2.Text = "you selected sea";
        }
        else
        {
            Label2.Text = "you selected land";
        }
    }
}