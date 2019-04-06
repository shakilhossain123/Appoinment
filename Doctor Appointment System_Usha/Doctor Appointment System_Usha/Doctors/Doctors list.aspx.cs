using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_Appointment_System_Usha.Doctors
{
    public partial class Doctors_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            Response.Redirect("~/User/appointment.aspx?name=" + gr.Cells[1].Text);
        }
    }
}