using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tblruntimecreate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Table tbl = new Table();

        int noofrows = Convert.ToInt32(DropDownList1.SelectedItem.Text);
        int noofcols = Convert.ToInt32(DropDownList2.SelectedItem.Text);

        for (int i = 0; i < noofrows; i++)
        {
            TableRow tr = new TableRow();
            tr.BorderStyle = BorderStyle.Double;
            tr.BorderColor = System.Drawing.Color.Blue;
            for (int j = 0; j < noofcols; j++)
            {

                TableCell tc = new TableCell();
                tc.BorderStyle = BorderStyle.Double;
                tc.BorderColor = System.Drawing.Color.Red;
                HyperLink h = new HyperLink();
                h.Text = i.ToString()+" " + j.ToString();
                h.NavigateUrl = "default.aspx";

                tc.Controls.Add(h);
                tr.Cells.Add(tc);
            
            }
            tbl.BorderStyle = BorderStyle.Double;
            tbl.BorderColor = System.Drawing.Color.Green;
            tbl.Rows.Add(tr);

            PlaceHolder1.Controls.Add(tbl);
        
        }



    }
}