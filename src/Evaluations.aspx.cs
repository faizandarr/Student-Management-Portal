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
    public partial class Evaluations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = TextBox1.Text;
            string c = TextBox2.Text;
            int t = Convert.ToInt32(TextBox4.Text);
            float o;
            float.TryParse(TextBox3.Text, out o);
            float avg;
           float.TryParse(TextBox5.Text, out avg);
            float wei;
            float.TryParse(TextBox6.Text, out wei);
            float max;
            float.TryParse(TextBox7.Text, out max);
            float min;
            float.TryParse(TextBox8.Text, out min);
            float std;
            float.TryParse(TextBox9.Text, out std);
            string f = flag.SelectedValue;

            string id = "SELECT MAX(marks_id) FROM marks"+"1";

            string sql = "insert into marks values ('"+id+"'," + c + "," + o +"," + t +"," + avg +"," + wei +"," + max+ "," + min+"," + std +","+"'"+ f +"'"+",'"+ s+"')";


            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
            conn.Open();
            SqlCommand cm;
            cm = new SqlCommand(sql, conn);
            cm.ExecuteNonQuery();

            cm.Dispose();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "alert('Done Sir');", true);
            conn.Close();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}