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
    public partial class marks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userID = (string)Session["UserID"];

            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
            conn.Open();
            string sql = "select obtained_marks,total_marks,average, weightage, maximum, minimum, standard_deviation, flag from marks where course_id= '" + Session["courseID"] + "' and marks_id='M001'";
            SqlCommand cmd1 = new SqlCommand(sql, conn);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);

            GridView1.DataSource = dt1;
            GridView1.DataBind();

            string sql2 = "select obtained_marks,total_marks,average, weightage, maximum, minimum, standard_deviation, flag from marks where course_id= '" + Session["courseID"] + "' and marks_id='M002'";
            SqlCommand cmd2 = new SqlCommand(sql2, conn);
            SqlDataAdapter da12 = new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            da1.Fill(dt2);
            GridView2.DataSource = dt2;
            GridView2.DataBind();

            string sql3 = "select obtained_marks,total_marks,average, weightage, maximum, minimum, standard_deviation, flag from marks where course_id= '" + Session["courseID"] + "' and marks_id='M003'";
            SqlCommand cmd3 = new SqlCommand(sql3, conn);
            SqlDataAdapter da13 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            da1.Fill(dt3);
            GridView3.DataSource = dt3;
            GridView3.DataBind();

            string sql4 = "select obtained_marks,total_marks,average, weightage, maximum, minimum, standard_deviation, flag from marks where course_id= '" + Session["courseID"] + "' and marks_id='M004'";
            SqlCommand cmd4 = new SqlCommand(sql4, conn);
            SqlDataAdapter da14 = new SqlDataAdapter(cmd4);
            DataTable dt4 = new DataTable();
            da1.Fill(dt4);
            GridView4.DataSource = dt4;
            GridView4.DataBind();

            string sql5 = "select obtained_marks,total_marks,average, weightage, maximum, minimum, standard_deviation, flag from marks where course_id= '" + Session["courseID"] + "' and marks_id='M005'";
            SqlCommand cmd5 = new SqlCommand(sql5, conn);
            SqlDataAdapter da15 = new SqlDataAdapter(cmd5);
            DataTable dt5 = new DataTable();
            da1.Fill(dt5);
            GridView5.DataSource = dt5;
            GridView5.DataBind();

            string sql6 = "select obtained_marks,total_marks,average, weightage, maximum, minimum, standard_deviation, flag from marks where course_id= '" + Session["courseID"] + "' and marks_id='M006'";
            SqlCommand cmd6 = new SqlCommand(sql6, conn);
            SqlDataAdapter da16 = new SqlDataAdapter(cmd6);
            DataTable dt6 = new DataTable();
            da1.Fill(dt6);

            GridView6.DataSource = dt6;
            GridView6.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int haha = 101;
            Session["CourseID"] = haha;
            Response.Redirect("marks.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int haha = 102;
            Session["CourseID"] = haha;
            Response.Redirect("marks.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int haha = 103;
            Session["CourseID"] = haha;
            Response.Redirect("marks.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            int haha = 104;
            Session["CourseID"] = haha;
            Response.Redirect("marks.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            int haha = 105;
            Session["CourseID"] = haha;
            Response.Redirect("marks.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            int haha = 106;
            Session["CourseID"] = haha;
            Response.Redirect("marks.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            int haha = 107;
            Session["CourseID"] = haha;
            Response.Redirect("marks.aspx");
        }
    }
}