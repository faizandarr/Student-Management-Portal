using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Project
{
    public partial class Season : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sea = "Fall";
            Session["Sea"] = sea;
            Response.Redirect("set_courses.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sea = "Spring";
            Session["Sea"] = sea;
            Response.Redirect("set_courses.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string sea = "Summer";
            Session["Sea"] = sea;
            Response.Redirect("set_courses.aspx");
        }
    }
}