using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_Appointment_System_Usha.Doctors
{
    public partial class Doctors_profile : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            show();
        }
        public void show()
        {
            cmd.CommandText = "select * from Doctor where user_name=  '" + Session["user_name"] + "'  ";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Label1.Text = ds.Tables[0].Rows[0]["name"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["age"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["sex"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["contact_no"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["department"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Doctors/show_Appointment.aspx");
        }
    }
}