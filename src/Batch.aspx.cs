using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Project
{
    public partial class Batch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string batch = "2018";
            Session["batch"] = batch;
            Response.Redirect("Department.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string batch = "2021";
            Session["batch"] = batch;
            Response.Redirect("Department.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string batch = "2019";
            Session["batch"] = batch;
            Response.Redirect("Department.aspx");
        }
    }
}