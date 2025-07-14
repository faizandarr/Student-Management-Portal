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
    public partial class pra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string id = (Request.QueryString["id"]);
            //Response.Write("The id value is: " + id);
            //string id = Request.QueryString["id"];
            string userID = (string)Session["UserID"];

            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
            conn.Open();


            //Console.WriteLine(id);
            string a = "select users.id, users.name, users.contact, users.cnic, users.blood_group, users.nationality, users.campus, users.gender, users.dob, users.student_degree from users where id = '" + Session["UserID"] + "'";
            //string a = "select * from users where id = '18I-10'";
            SqlCommand cmd = new SqlCommand(a, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


            //string b = "select attendance.attendance_id, attendance.attendance_date,attendance.duration,attendance.lecture, attendance.attendance, attendance.course_id from attendance where student_id = '" + Session["UserID"] + "'";
            //SqlCommand cmd1 = new SqlCommand(b, conn);
            //SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            //DataTable dt1 = new DataTable();
            //da1.Fill(dt1);
            //GridView2.DataSource = dt1;
            //GridView2.DataBind();

            //conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //int haha = 101;
            //Session["CourID"] = haha;
            if((int)Session["job"] == 2)
            Response.Redirect("Course_Registration.aspx");
            else if((int)Session["job"] == 0)
                Response.Redirect("set_courses.aspx");
            else
                Response.Redirect("Evaluations.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if ((int)Session["job"] == 2)
                Response.Redirect("attendence.aspx");
            else if ((int)Session["job"] == 0)
            {
                int hyy = 1;
                Session["hyy"] = hyy;

                Response.Redirect("Department.aspx");
            }
            else
                Response.Redirect("Faculty_attendence.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if ((int)Session["job"] == 0)
            {
                
                int hyy = 2;
                Session["hyy"] = hyy;
                Response.Redirect("Department.aspx");
            }
            else if ((int)Session["job"] == 2)
                Response.Redirect("Course_choice.aspx");
            else Response.Redirect("Generate_Grades.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if ((int)Session["job"] == 0)
                Response.Redirect("Allocate_Faculty_Courses.aspx");
            else if ((int)Session["job"] == 2)
            Response.Redirect("TranscriptShow.aspx");
            else Response.Redirect("MangeGrade.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            // sections for 0
            if ((int)Session["job"] == 0)
                Response.Redirect("Allocate_StudentCourses.aspx");
            else if ((int)Session["job"] == 2)
                Response.Redirect("feedback.aspx");
            else
                Response.Redirect("view_FeedBack.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if ((int)Session["job"] == 2)
                Response.Redirect("Course_Withdraw.aspx");
            else if ((int)Session["job"] == 0)
            {
               
               

                Response.Redirect("view_FeedBack.aspx");
            }
            
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Setting Sections.aspx");
        }

        //protected void Button15_Click(object sender, EventArgs e)
        //{
        //   // Register for 0
        //}

    }
}