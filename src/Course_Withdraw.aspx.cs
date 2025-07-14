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
    public partial class Course_Withdraw1 : System.Web.UI.Page
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
            string query = "Update student_course set student_id = NULL, course_id = NUll where course_id = " + course_id + " and student_id = '" + Session["UserID"] + "'" ;

            cmd.CommandText = query;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();

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