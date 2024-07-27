using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CalendarCtrl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime dt = Calendar1.SelectedDate;

        Response.Write("short date string"+dt.ToShortDateString()+"<br/>");
        Response.Write("long date string" + dt.ToLongDateString() + "<br/>");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (DateTime dt in Calendar1.SelectedDates)
        {

            if (dt.ToShortDateString() == "15-07-2022")
            Response.Write("this is 15-07-2022 date"+dt.ToShortDateString() + "</br>");
        }


    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {

        
        if (e.Day.Date.ToShortDateString() == "15-07-2022")
        {
            HyperLink l = new HyperLink();
            l.Text = "result";
            l.NavigateUrl = "default.aspx";
            e.Cell.Controls.Add(l);
            e.Cell.BackColor = System.Drawing.Color.Red;
        }
        if (!e.Day.IsOtherMonth)
        {
            if (e.Day.DayNumberText == "1")
            {

                HyperLink l = new HyperLink();
                l.Text = "welcome";
                l.NavigateUrl = "default.aspx";
                e.Cell.Controls.Add(l);

            }
        }





        if (e.Day.Date.ToShortDateString() == "18-07-2022")
        {

            e.Day.IsSelectable = false;
        
        }
        if (e.Day.IsWeekend)
        {
            e.Day.IsSelectable = false;
       
        
        }




    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        DateTime dt = new DateTime(2022, 7, 15);
        Response.Write(dt.ToShortDateString());
        DateTime stdate = DateTime.Now;
        DateTime enddate = dt.AddDays(15);
        DateTime userdate=Calendar1.SelectedDate;
        if (userdate > stdate && userdate < enddate)
        {
            Response.Write("you have valid selection");
        }
        else {
            Response.Write("select another date");
        }



    }
}