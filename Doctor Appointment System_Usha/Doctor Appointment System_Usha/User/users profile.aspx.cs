using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace Doctor_Appointment_System_Usha.User
{
    public partial class users_profile : System.Web.UI.Page
    {
        
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

       // public static object TextBox1 { get; private set; }




        // SqlDataReader sdr;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            //if ( sdr.Read()==null)
            //{
            //    Response.Redirect("~/login.aspx");
            //}
            //else
            //    con.ConnectionString = "Data Source=.;Initial Catalog=Doctor_Appointment_System_Usha;Integrated Security=True";
            //con.Open();
           show();
        }
        public void show()
        {
            cmd.CommandText = "select * from users_list where user_name=  '"+Session["user_name"]+"'  ";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Label1.Text = ds.Tables[0].Rows[0]["first_name"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["last_name"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["email"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["contact"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["id"].ToString();
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Doctors/Doctors list.aspx");
        }
    }
}