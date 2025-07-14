using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Project
{
    public partial class TranscriptShow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string d = (string)Session["UserID"];
            SqlDataSource1.SelectParameters["param1"].DefaultValue = d;
        }
    }
}