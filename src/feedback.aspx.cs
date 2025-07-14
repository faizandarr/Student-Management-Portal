using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Data;



namespace WebApplication_Project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void MyGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OO8NO95H" + "\\" + "SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
            conn.Open();

            string date = myDateMonth.SelectedValue + " " + myDateDay.SelectedValue + "," + myDateYear.SelectedValue;
            string name = TextBox1.Text;
            string course = TextBox3.Text;
            string batch = TextBox4.Text;
            string sem = DropDownList1.SelectedValue;

            string pro = DropDownList2.SelectedValue;
            string comm = DropDownList3.SelectedValue;
            string cri = DropDownList5.SelectedValue;
            string present = DropDownList7.SelectedValue;
            string flexibility = DropDownList9.SelectedValue;
            string know = DropDownList10.SelectedValue;
            string organize = DropDownList12.SelectedValue;
            string c_en = DropDownList14.SelectedValue;
            string res = DropDownList15.SelectedValue;
            string st = DropDownList16.SelectedValue;
            string comme = TextBox5.Text;

            string sql = "insert into feedback values ('" + date + "','" + name + "','" + course + "','" + batch + "','" + sem + "','" + pro + "','" +
                comm + "','" + cri + "','" + present + "','" + flexibility + "','" + know + "','" + organize + "','" + c_en + "','" + res +
                "','" + st + "','"+ comme+ "')";


            SqlCommand cm;
            cm = new SqlCommand(sql, conn);
            cm.ExecuteNonQuery();
            
            cm.Dispose();
            conn.Close();
        }
    }
}
