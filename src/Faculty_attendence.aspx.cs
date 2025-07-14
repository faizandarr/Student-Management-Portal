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
    

    public partial class Faculty_attendence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        private void UpdateRowSource(string student_id, string status)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            string query= "update attendance set attendance='" + status + " ' where student_id = '" + student_id  + "'";
            cmd.CommandText = query;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            foreach(GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
                string student_id = Convert.ToString (row.Cells[3].Text);
                if(status.Checked)
                {
                    UpdateRowSource(student_id, "P");
                }
                else
                {
                    UpdateRowSource(student_id, "A");
                }
            }
        }
    }
   
}

