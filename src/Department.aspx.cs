using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Project
{
    public partial class Department : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string dep = "CS";
            Session["dep"] = dep;
            if((int)Session["hyy"]==1)
            Response.Redirect("Manage_SSection.aspx");
            else if ((int)Session["hyy"] == 2)
                Response.Redirect("Manage_FSection.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            string dep = "FSM";
            Session["dep"] = dep;
            if ((int)Session["hyy"] == 1)
                Response.Redirect("Manage_SSection.aspx");
            else if ((int)Session["hyy"] == 2)
                Response.Redirect("Manage_FSection.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
           
            string dep = "SE";
            Session["dep"] = dep;
            if ((int)Session["hyy"] == 1)
                Response.Redirect("Manage_SSection.aspx");
            else if ((int)Session["hyy"] == 2)
                Response.Redirect("Manage_FSection.aspx");
        }
    }
}