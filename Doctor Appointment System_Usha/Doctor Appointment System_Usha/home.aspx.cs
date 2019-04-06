using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_Appointment_System_Usha
{
    public partial class login_page : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Doctors/Doctor login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }

        
    }
}