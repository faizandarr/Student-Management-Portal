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
    public partial class Allocate_courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
            conn.Open();

            string sid = TextBox1.Text;
            int cid =  Convert.ToInt32( TextBox2.Text);

            string sql = "insert into student_course values('" + sid + "'," + cid + ")";

            string count =  "select count(course_id) from student_course where student_id = '" +sid+ "' group by student_id having count(course_id) <7";
            SqlCommand command = new SqlCommand(count, conn);
            
            SqlDataReader reader = command.ExecuteReader();
           

            if (reader.Read())
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Done Sir');", true);
                conn.Close();
                conn.Open();
                SqlCommand cm;
                cm = new SqlCommand(sql, conn);
                cm.ExecuteNonQuery();

                cm.Dispose();
                conn.Close();
            }

            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Sorry you can't allote more than 6 courses');", true);
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
            conn.Open();

            string sid = TextBox1.Text;
            int cid = Convert.ToInt32(TextBox2.Text);
            int cidu = Convert.ToInt32(TextBox3.Text);

            string sql = "update student_course set course_id = " + cidu + "where student_id = '" + sid + "' and course_id = " + cid  ;
                SqlCommand cm;
                cm = new SqlCommand(sql, conn);
                cm.ExecuteNonQuery();

                cm.Dispose();
                conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Done Sir');", true);

        }
        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
        //    conn.Open();

        //    string sid = TextBox1.Text;
        //    int cid = Convert.ToInt32(TextBox2.Text);
           

        //    string sql = "delete  from [student_course] where student_id = '" + sid + " and course_id = " + cid;
        //    SqlCommand cm;
        //    cm = new SqlCommand(sql, conn);
        //    cm.ExecuteNonQuery();

        //    cm.Dispose();
        //    conn.Close();
        //    ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Done Sir');", true);

        //}
    }
}