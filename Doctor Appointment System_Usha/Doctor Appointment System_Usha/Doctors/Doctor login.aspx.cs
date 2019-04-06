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
    public partial class Doctor_login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            string user_name = TextBox1.Text;
            string password = TextBox2.Text;
            if (user_name == "+user_name+" && password == "+password+")
            {
                Response.Redirect("~/Doctors/Doctors profile.aspx");
            }
            else
                con.ConnectionString = "Data Source=.;Initial Catalog=Doctor_Appointment_System_Usha;Integrated Security=True";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Doctor where user_name=@user_name and password=@password", con);
            cmd.Parameters.AddWithValue("@user_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            // con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                Session["user_name"] = TextBox1.Text;
                Response.Redirect("~/Doctors/Doctors profile.aspx");
                Session.RemoveAll();
            }
            else
            {
                Response.Write("Login Failed");

            }
        }
    }
    }
