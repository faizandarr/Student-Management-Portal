using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication_Project
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql = "insert into u values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"
                + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox1.Text + "','" + "1995-10-08" + "',"
                + Convert.ToInt32(TextBox11.Text)+ ",'" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','"
                + TextBox16.Text + "','" + TextBox17.Text + "'," + Convert.ToInt32(TextBox18.Text)+",'" + TextBox20.Text + "'," + Convert.ToInt32(TextBox21.Text)
              +  ")";


            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
            conn.Open();
            SqlCommand cm;
            cm = new SqlCommand(sql, conn);
            cm.ExecuteNonQuery();
        }
    }
}