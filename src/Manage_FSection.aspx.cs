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
    public partial class Manage_FSection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string d = (string)Session["dep"];
            SqlDataSource1.SelectParameters["param1"].DefaultValue = d;
            SqlDataSource1.SelectParameters["param2"].DefaultValue = d;

            //GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}