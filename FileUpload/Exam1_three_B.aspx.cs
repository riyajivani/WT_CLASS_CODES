using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileUpload
{
    public partial class Exam1_three_B : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!(FileUpload1.PostedFile.ContentLength < 40669))
            {
                Label6.Text = "File should be less than 10KB.";
            }
            else {
                Label6.Text = "Name: " + TextBox4.Text.ToString() +  "<br/>" +
                                        "Enrollment No.: " + TextBox2.Text.ToString() + "<br/>" +
                                        "Contact No.: " + TextBox1.Text.ToString() + "<br/>" +
                                        "Email: " + TextBox3.Text.ToString() + "<br/>" +
                                        "File: " + FileUpload1.PostedFile.FileName.ToString();
            }
        }
    }
}