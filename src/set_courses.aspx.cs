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
    public partial class set_courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string userID = (string)Session["UserID"];

            //SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
            //conn.Open();
            //// string sql = "select c.course_id,c.course_name,c.credit_hrs,c.prereq from course c inner join semester_course s on c.course_id = s.course_id and s.season = '" + Session["Sea"] + "'";
            //string sql = "select * from course";


            //SqlCommand cmd1 = new SqlCommand(sql, conn);
            //SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            //DataTable dt1 = new DataTable();
            //da1.Fill(dt1);

            //GridView1.DataSource = dt1;
            //GridView1.DataBind();
        }
    }
}