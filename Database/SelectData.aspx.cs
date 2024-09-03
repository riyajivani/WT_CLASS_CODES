using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Database
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //see web.config file for connection string.
        //string cs = "Data Source=RIYA\\SQLEXPRESS;Initial Catalog=student-db;Integrated Security=True;";
            SqlConnection con;
        string cs = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(cs);
        }

        public void showdata()
        {
            using (con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "select * from student";

                SqlDataReader sdr;
                con.Open();
                sdr = cmd.ExecuteReader();

                GridView1.DataSource = sdr;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //using (con = new SqlConnection(cs))
            //{
            //            SqlCommand cmd = new SqlCommand();
            //            cmd.Connection = con;
            //            cmd.CommandText = "select * from student";

            //            SqlDataReader sdr;
            //            con.Open();
            //            sdr = cmd.ExecuteReader();

            //            GridView1.DataSource = sdr;
            //            GridView1.DataBind();
            //}

            showdata();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using(con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select count(*) from student";
                cmd.Connection=con;

                con.Open();

                int n = (int) cmd.ExecuteScalar();
                Response.Write("Total Student: " + n);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
                string q = "update student set sem=5 where id=3";
                SqlCommand cmd = new SqlCommand(q,con);
                con.Open();

                int n = cmd.ExecuteNonQuery();

            if (n == 0)
                Response.Write("update Error");
            else
            {
                Response.Write("update Success");
                showdata();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string q = "delete from student where id=3";
            SqlCommand cmd = new SqlCommand(q, con);
            con.Open();

            int n = cmd.ExecuteNonQuery();

            if (n == 0)
                Response.Write("delete Error");
            else
            {
                Response.Write("delete Success");
                showdata();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string q = "insert into student values(3,'Inshiya',8,'IT','H')";
            SqlCommand cmd = new SqlCommand(q, con);
            con.Open();

            int n = cmd.ExecuteNonQuery();

            if (n == 0)
                Response.Write("Insert Error");
            else
            {
                Response.Write("Insert Success");
                showdata();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string q = "insert into student values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            SqlCommand cmd = new SqlCommand(q, con);
            con.Open();

            int n = cmd.ExecuteNonQuery();

            if (n == 0)
                Response.Write("Insert Error");
            else
            {
                Response.Write("Insert Success");
                showdata();
            }
        }
    }
}