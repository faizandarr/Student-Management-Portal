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
    public partial class Course_Withdraw : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void UpdateRowSource(string course_id)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            // string query = "update attendance set attendance='" + status + " ' where student_id = '" + student_id + "'";


            //  string query = "insert into student_course(student_id,course_id) select " + Session["UserID"] + "," + course_id + " from users where id = '" + Session["UserID"] + "'";

            string count = "select count(course_id) from student_course where student_id = '" + Session["UserID"] + "'  group by student_id having count(course_id) <7";
            SqlCommand command = new SqlCommand(count, conn);

            SqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Done Sir');", true);
                conn.Close();
                string query = "insert into student_course(student_id,course_id) select id," + course_id + " from users where id = '" + Session["UserID"] + "'";
                conn.Open();
                SqlCommand cm;
                cm = new SqlCommand(query, conn);
                cm.ExecuteNonQuery();

                cm.Dispose();
                conn.Close();
            }

            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Sorry you can't allote more than 6 courses');", true);
            }

            
            

            //cmd.CommandText = query;
            //cmd.Connection = conn;
            //cmd.ExecuteNonQuery();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
                string course_id = Convert.ToString(row.Cells[0].Text);
                if (status.Checked)
                {
                    UpdateRowSource(course_id);
                }
                else
                {
                    //UpdateRowSource(course_id);
                }
            }
        }
    }
}