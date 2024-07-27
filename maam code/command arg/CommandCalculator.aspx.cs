using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CommandCalculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Calcfunction(object sender, CommandEventArgs e)
    {

        string cmdstring = e.CommandName.ToString();
        string cmdarg = e.CommandArgument.ToString();

        Response.Write(" Command Name=" + cmdstring+ "<br/>");
        Response.Write(" command args" + cmdarg);

        if (cmdstring == "math")
        {

            if (cmdarg == "add")
            {
                TextBox3.Text = Convert.ToString(Convert.ToInt32(TextBox1.Text) + Convert.ToInt32(TextBox2.Text));
            
            }
            if (cmdarg == "sub")
            {
                TextBox3.Text = Convert.ToString(Convert.ToInt32(TextBox1.Text) - Convert.ToInt32(TextBox2.Text));

            }
            if (cmdarg == "mul")
            {
                TextBox3.Text = Convert.ToString(Convert.ToInt32(TextBox1.Text) * Convert.ToInt32(TextBox2.Text));

            }
            if (cmdarg == "div")
            {
                TextBox3.Text = Convert.ToString(Convert.ToInt32(TextBox1.Text) / Convert.ToInt32(TextBox2.Text));

            }
         
        
        }



        if (cmdstring == "clear")
        {
            if (cmdarg == "clearfirst")
            {

                TextBox1.Text = "";
            
            }
            if (cmdarg == "clearsecond")
            {

                TextBox2.Text = "";

            }
        
        
        }




    }
}