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
                if(e.Day.Date.ToShortDateString()=="07-07-2024" || e.Day.Date.ToShortDateString() == "17-07-2024" 
                || e.Day.Date.ToShortDateString() == "15-08-2024" || e.Day.Date.ToShortDateString() == "19-08-2024" 
                || e.Day.Date.ToShortDateString() == "26-08-2024")
            {
                e.Cell.BackColor = Color.Green;
                e.Cell.ForeColor = Color.White;
            }

                if (e.Day.IsWeekend) {
                    e.Day.IsSelectable = false;
                    e.Cell.BackColor = Color.Red;
                     e.Cell.ForeColor = Color.White;
                }

                if(e.Day.Date.ToShortDateString() == "19-08-2024")
                {
                //e.Cell.Text = "My Birthday"  // it only display event and though it covers whole page it does not show date.
                e.Cell.Controls.Add(new LiteralControl("<br />My Birthday")); //it will display event along with date
                e.Cell.Text.PadRight(10, '0');
                e.Cell.ForeColor = Color.Blue;
                e.Cell.BackColor = Color.Pink;
                }

            DateTime s1_start = new DateTime(2024, 07, 29);
            DateTime s1_end = new DateTime(2024, 08, 03);

            DateTime s2_start = new DateTime(2024, 09, 02);
            DateTime s2_end = new DateTime(2024, 09, 07);

            DateTime s3_start = new DateTime(2024, 10, 07);
            DateTime s3_end = new DateTime(2024, 10, 12);

            DateTime external_start = new DateTime(2024, 11, 18);
            DateTime external_end = new DateTime(2024, 11, 24);

            if (e.Day.Date >= s1_start && e.Day.Date <= s1_end ||
                e.Day.Date >= s2_start && e.Day.Date <= s2_end ||
                e.Day.Date >= s3_start && e.Day.Date <= s3_end )
            {
                e.Cell.Controls.Add(new LiteralControl("<br />Sessional week"));
                e.Day.IsSelectable = false;
            }
            else if (e.Day.Date >= external_start && e.Day.Date <= external_end) {
                e.Cell.Controls.Add(new LiteralControl("<br />External week"));
                e.Day.IsSelectable = false;
            }
            else
            {
                e.Day.IsSelectable = true;
            }
        }
    }
}