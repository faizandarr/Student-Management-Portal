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
    public partial class Generate_Grades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string sql = "UPDATE student_grade SET grade = 'A+' WHERE student_id IN( SELECT student_id  FROM marks  GROUP BY student_id HAVING SUM(obtained_marks) > 86);";


            string sql1 = "UPDATE student_grade SET grade = 'A-' WHERE student_id IN( SELECT student_id  FROM marks  GROUP BY student_id HAVING SUM(obtained_marks) > 80 and SUM(obtained_marks) <86);";

            string sql2 = "UPDATE student_grade SET grade = 'B+' WHERE student_id IN( SELECT student_id  FROM marks  GROUP BY student_id HAVING SUM(obtained_marks) > 76 and SUM(obtained_marks) <80);";

            string sql3 = "UPDATE student_grade SET grade = 'B' WHERE student_id IN( SELECT student_id  FROM marks  GROUP BY student_id HAVING SUM(obtained_marks) > 70 and SUM(obtained_marks) <76);";

            string sql4 = "UPDATE student_grade SET grade = 'B-' WHERE student_id IN( SELECT student_id  FROM marks  GROUP BY student_id HAVING SUM(obtained_marks) > 65 and SUM(obtained_marks) <70);";

            string sql5 = "UPDATE student_grade SET grade = 'C+' WHERE student_id IN( SELECT student_id  FROM marks  GROUP BY student_id HAVING SUM(obtained_marks) > 60 and SUM(obtained_marks) <65);";


            string sql6 = "UPDATE student_grade SET grade = 'C' WHERE student_id IN( SELECT student_id  FROM marks  GROUP BY student_id HAVING SUM(obtained_marks) > 55 and SUM(obtained_marks) <60);";

            string sql7 = "UPDATE student_grade SET grade = 'C-' WHERE student_id IN( SELECT student_id  FROM marks  GROUP BY student_id HAVING SUM(obtained_marks) > 50 and SUM(obtained_marks) <55);";

            string sql8 = "UPDATE student_grade SET grade = 'F' WHERE student_id IN( SELECT student_id  FROM marks  GROUP BY student_id HAVING SUM(obtained_marks) < 50);";

            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
            conn.Open();
            SqlCommand cm;
            cm = new SqlCommand(sql, conn);
            cm.ExecuteNonQuery();

            SqlCommand cm1;
            cm1 = new SqlCommand(sql1, conn);
            cm1.ExecuteNonQuery();


            SqlCommand cm2;
            cm2 = new SqlCommand(sql2, conn);
            cm2.ExecuteNonQuery();

            SqlCommand cm3;
            cm3 = new SqlCommand(sql3, conn);
            cm3.ExecuteNonQuery();

            SqlCommand cm4;
            cm4 = new SqlCommand(sql4, conn);
            cm4.ExecuteNonQuery();

            SqlCommand cm5;
            cm5 = new SqlCommand(sql5, conn);
            cm5.ExecuteNonQuery();

            SqlCommand cm6;
            cm6 = new SqlCommand(sql6, conn);
            cm6.ExecuteNonQuery();

            SqlCommand cm7;
            cm7 = new SqlCommand(sql7, conn);
            cm7.ExecuteNonQuery();

            SqlCommand cm8;
            cm8 = new SqlCommand(sql8, conn);
            cm8.ExecuteNonQuery();






            cm.Dispose();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Done Sir');", true);
            conn.Close();



        }
    }
}