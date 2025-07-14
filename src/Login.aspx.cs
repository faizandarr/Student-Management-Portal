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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True"); //Connection String

        //    conn.Open();
        //    string un = TextBox1.Text;
        //    string pass = TextBox2.Text;

        //    //// Create a command to retrieve the single value
        //    SqlCommand command = new SqlCommand("SELECT job_type FROM [users] WHERE id = '" + un + "' AND password = '" + pass + "'", conn);

        //    // Execute the command and retrieve the single value
        //    int job = (int)command.ExecuteScalar();
        //    Session["job"] = job;
        //    //conn.Close();

        //    //conn.Open();

        //    SqlCommand cm;
        //     un = TextBox1.Text;
        //     pass = TextBox2.Text;
        //    string query = "SELECT * FROM [users] WHERE id = '" + un + "' AND password = '" + pass + "'";
        //    Session["UserID"] = un;
        //    cm = new SqlCommand(query, conn);
        //    SqlDataReader res = cm.ExecuteReader();
        //    //conn.Close();


        //    if (!res.HasRows)
        //    {
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "User Not Found", "alert('User Not found');", true);
        //        //Response.Redirect("WebForm2.aspx");
        //    }
        //    else
        //    {

        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "Successfully Logged in", "alert('Successfully Logged in');", true);
        //        Response.Redirect("home.aspx");
        //    }
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True"); //Connection String

            conn.Open();
            string un = TextBox1.Text;
            string pass = TextBox2.Text;

            SqlCommand command = new SqlCommand("SELECT job_type FROM [users] WHERE id = '" + un + "' AND password = '" + pass + "'", conn);

            int job = (int)command.ExecuteScalar();
            Session["job"] = job;

            string query = "SELECT * FROM [users] WHERE id = '" + un + "' AND password = '" + pass + "'";
            Session["UserID"] = un;
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader res = cm.ExecuteReader();

            if (!res.HasRows)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "User Not Found", "alert('User Not found');", true);
            }
            else
            {
                // Call the log procedure after successful login
                conn.Close();
                conn.Open();
                using (SqlCommand logCommand = new SqlCommand("insert_user_log", conn))
                {
                    logCommand.CommandType = CommandType.StoredProcedure;

                    logCommand.Parameters.AddWithValue("@user_id", un);
                    logCommand.Parameters.AddWithValue("@event_type", "User Login");
                    logCommand.Parameters.AddWithValue("@event_description", "User logged in to the portal");

                    logCommand.ExecuteNonQuery();
                }

                ScriptManager.RegisterStartupScript(this, this.GetType(), "Successfully Logged in", "alert('Successfully Logged in');", true);
                Response.Redirect("home.aspx");
            }
        }
    }
}