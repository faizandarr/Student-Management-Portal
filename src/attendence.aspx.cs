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
    public partial class course_registered : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userID = (string)Session["UserID"];
            string hat = (string)Session["CourID"];
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
            conn.Open();
            string c = "select attendance.lecture, attendance.attendance_date,attendance.duration, attendance.attendance, attendance.course_id from attendance where student_id = '" + Session["UserID"] + "' and course_id = 101";
            SqlCommand cmd1 = new SqlCommand(c, conn);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            
            GridView2.DataSource = dt1;
            GridView2.DataBind();

            string sql2 = "select attendance.lecture, attendance.attendance_date,attendance.duration, attendance.attendance, attendance.course_id from attendance where student_id = '" + Session["UserID"] + "' and course_id=102";
            SqlCommand cmd2 = new SqlCommand(sql2, conn);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            da1.Fill(dt2);

            GridView3.DataSource = dt2;
            GridView3.DataBind();

            string sql3 = "select attendance.lecture, attendance.attendance_date,attendance.duration, attendance.attendance, attendance.course_id from attendance where student_id = '" + Session["UserID"] + "' and course_id=103";
            SqlCommand cmd3 = new SqlCommand(sql3, conn);
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            da1.Fill(dt3);

            GridView4.DataSource = dt3;
            GridView4.DataBind();

            string sql4 = "select attendance.lecture, attendance.attendance_date,attendance.duration, attendance.attendance, attendance.course_id from attendance where student_id = '" + Session["UserID"] + "' and course_id=104";
            SqlCommand cmd4 = new SqlCommand(sql4, conn);
            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
            DataTable dt4 = new DataTable();
            da1.Fill(dt4);

            GridView5.DataSource = dt4;
            GridView5.DataBind();

            string sql5 = "select attendance.lecture, attendance.attendance_date,attendance.duration, attendance.attendance, attendance.course_id from attendance where student_id = '" + Session["UserID"] + "' and course_id=105";
            SqlCommand cmd5 = new SqlCommand(sql5, conn);
            SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
            DataTable dt5 = new DataTable();
            da1.Fill(dt5);

            GridView6.DataSource = dt5;
            GridView6.DataBind();

            string sql6 = "select attendance.lecture, attendance.attendance_date,attendance.duration, attendance.attendance, attendance.course_id from attendance where student_id = '" + Session["UserID"] + "' and course_id=106";
            SqlCommand cmd6 = new SqlCommand(sql6, conn);
            SqlDataAdapter da6 = new SqlDataAdapter(cmd6);
            DataTable dt6 = new DataTable();
            da1.Fill(dt6);

            GridView7.DataSource = dt6;
            GridView7.DataBind();

            string sql7 = "select attendance.lecture, attendance.attendance_date,attendance.duration, attendance.attendance, attendance.course_id from attendance where student_id = '" + Session["UserID"] + "' and course_id=107";
            SqlCommand cmd7 = new SqlCommand(sql7, conn);
            SqlDataAdapter da7 = new SqlDataAdapter(cmd7);
            DataTable dt7 = new DataTable();
            da1.Fill(dt7);

            GridView8.DataSource = dt7;
            GridView8.DataBind();
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    int haha = 101;
        //    Session["CourID"] = haha;
        //    Response.Redirect("attendence.aspx");
        //}

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    int haha = 102;
        //    Session["CourID"] = haha;
        //    Response.Redirect("attendence.aspx");
        //}

        //protected void Button4_Click(object sender, EventArgs e)
        //{
        //    int haha = 103;
        //    Session["CourID"] = haha;
        //    Response.Redirect("attendence.aspx");
        //}

        //protected void Button5_Click(object sender, EventArgs e)
        //{
        //    int haha = 104;
        //    Session["CourID"] = haha;
        //    Response.Redirect("attendence.aspx");
        //}

        //protected void Button6_Click(object sender, EventArgs e)
        //{
        //    int haha = 105;
        //    Session["CourID"] = haha;
        //    Response.Redirect("attendence.aspx");
        //}

        //protected void Button7_Click(object sender, EventArgs e)
        //{
        //    int haha = 106;
        //    Session["CourID"] = haha;
        //    Response.Redirect("attendence.aspx");
        //}

        //protected void Button8_Click(object sender, EventArgs e)
        //{
        //    int haha = 107;
        //    Session["CourID"] = haha;
        //    Response.Redirect("attendence.aspx");
        //}
    }
}