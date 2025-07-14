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
    public partial class set_attendence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // string bat = (string)Session["batch"];
            string de = (string)Session["dep"];
            SqlDataSource1.SelectParameters["param1"].DefaultValue = de;
            SqlDataSource1.SelectParameters["param2"].DefaultValue = de;
            
               // GridView1.DataBind();
            
           
        }
        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}