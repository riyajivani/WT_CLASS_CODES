using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calenders
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToString(); 
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
                 if(e.Day.Date.DayOfWeek==DayOfWeek.Saturday)
                {
                        e.Cell.BackColor = Color.Pink;
                        e.Cell.Text = "Reporting";
                        e.Cell.Controls.Add(new LiteralControl("<br />Reporting"));
            }

                 if (e.Day.IsOtherMonth || e.Day.IsWeekend) {
                    e.Day.IsSelectable = false;
                }

                if(e.Day.Date.ToShortDateString() == "19-08-2024")
                {
                e.Cell.Text = "My Birthday" // it only display event and though it covers whole page it does not show date.
                e.Cell.Controls.Add(new LiteralControl("<br />My Birthday")); //it will display event along with date
                e.Cell.Text.PadRight(10, '0');
                e.Cell.ForeColor = Color.Pink;
                e.Cell.BackColor = Color.BlueViolet;
            }
        }
    }
}