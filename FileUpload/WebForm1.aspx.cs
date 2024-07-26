using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileUpload
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if(FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png" || FileUpload1.PostedFile.ContentType == "image/jpg")
                {

                    string savePath = Server.MapPath("~/Images/") + Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(savePath);
                    Label1.Text = "File uploaded successfully";

                    System.Web.UI.WebControls.Image img = new System.Web.UI.WebControls.Image();
                    img.ImageUrl = "~/Images/" + FileUpload1.FileName;
                    img.Width = Unit.Pixel(200); 
                    img.Height = Unit.Pixel(200);
                    img.BorderColor = Color.Black;
                    img.BorderWidth = Unit.Pixel(2);
                    Panel1.Controls.Add(img);
                }
                else
                {
                    Label1.Text = "Please choose correct file type.";
                }
            }
            else
            {
                Label1.Text = "Please choose file first.";
            }
        }
    }
}