using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClassDynamicButtons
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (!CheckBox1.Checked)
            {
                ClearHyperlinksFromPanel();
            }
            else
            {
                TextBox1_TextChanged(sender, e);
            }
        }

        private void ClearHyperlinksFromPanel()
        {
            foreach (Control control in Panel1.Controls)
            {
                if (control is HyperLink)
                {
                    Panel1.Controls.Remove(control);
                    TextBox1.Text = null;
                }
            }
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (!CheckBox2.Checked)
            {
                ClearImageButtonFromPanel();
            }
            else
            {
                TextBox2_TextChanged(sender, e);
            }
        }
        private void ClearImageButtonFromPanel()
        {
            foreach (Control control in Panel1.Controls)
            {
                if (control is ImageButton)
                {
                    Panel1.Controls.Remove(control);
                    TextBox2.Text = null;
                }
            }
        }

        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (!CheckBox3.Checked)
            {
                ClearLinkButtonFromPanel();
            }
            else
            {
                TextBox3_TextChanged(sender, e);
            }
        }

        private void ClearLinkButtonFromPanel()
        {
            foreach (Control control in Panel1.Controls)
            {
                if (control is LinkButton)
                {
                    Panel1.Controls.Remove(control);
                    TextBox3.Text = null;
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TextBox1.Text) && CheckBox1.Checked)
            {
                Label l1 = new Label();
                l1.Text = "HyperLink: ";
                l1.ForeColor = Color.Red;
                Panel1.Controls.Add(l1);
                for (int i = 1; i <= Convert.ToInt32(TextBox1.Text); i++)
                {
                    HyperLink ln = new HyperLink();
                    ln.Text = $"hyperlink{i}" + "     ";
                    Panel1.Controls.Add(ln);
                }
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TextBox2.Text) && CheckBox2.Checked)
            {
                Label l2 = new Label();
                l2.Text = "ImageButton: ";
                l2.ForeColor = Color.Red;
                Panel1.Controls.Add(l2);
                for (int i = 1; i <= Convert.ToInt32(TextBox2.Text); i++)
                {
                    ImageButton ln2 = new ImageButton();
                    ln2.AlternateText = $"ImageButton{i}" + "     ";
                    Panel1.Controls.Add(ln2);
                }
            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TextBox3.Text) && CheckBox3.Checked)
            { }
            Label l3 = new Label();
            l3.Text = "LinkButton: ";
            l3.ForeColor = Color.Red;
            Panel1.Controls.Add(l3);
            for (int i = 1; i <= Convert.ToInt32(TextBox3.Text); i++)
            {
                LinkButton ln3 = new LinkButton();
                ln3.Text = $"LinkButton{i}" + "     ";
                Panel1.Controls.Add(ln3);
            }
        }
    }
}
