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
    public partial class show_Appointment : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ToString());
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
            if (Session["user_name"]!=null)
            {
                    show();
                    this.datashow();
            }
            else
            {
                Label1.Text = "There is no Appoinment";
            }
            }
        }
        protected void datashow()
        {
            
            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Doctor_Appointment_System_Usha;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(@"SELECT doctor_name,paitent_name,appointment_taker.contact_no,date,time FROM appointment_taker, Doctor
   WHERE appointment_taker.doctor_name=Doctor.user_name;
", con);
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            con.Close();
        }
        protected void show() {
            cmd.CommandText = "select * from Doctor where user_name=  '" + Session["user_name"] + "'  ";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Label2.Text = ds.Tables[0].Rows[0]["name"].ToString();


        }
    }
}