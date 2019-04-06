using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_Appointment_System_Usha.User
{
    public partial class appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Request.QueryString["name"].ToString();
            if (!IsPostBack)
            {
                
                Calendar1.SelectedDate = DateTime.Now.Date;
            }
            
        }

        protected void Check(object sender, EventArgs e)
        {
            string con = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            SqlConnection cons = new SqlConnection(con);
            string q = "select distinct time from appointment_taker where date= '" + Calendar1.SelectedDate + "'";
            SqlCommand cmd = new SqlCommand(q, cons);
            cons.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            sda.Fill(ds);
            
            if (ds.Tables[0].Rows.Count > 0)
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    RadioButtonList1.Items.Remove(RadioButtonList1.Items.FindByValue(dr["time"].ToString()));
                }
            if (RadioButtonList1.Items.Count == 0)
            {
                Label2.Text = "No Available time right Now";
            }
            else
            {
                Label2.Text = "Available time right Now";
            }
            cons.Close();

        }

        protected void insert(object sender, EventArgs e)
        {
            var cons = ConfigurationManager.ConnectionStrings["db"].ConnectionString.ToString();
            var con = new SqlConnection(cons);
            con.Open();
            string q = @"INSERT INTO [dbo].[appointment_taker]([doctor_name],[paitent_name],[contact_no],[date],[time])VALUES
           ('" + TextBox1.Text + "','" + TextBox2.Text + "','"+TextBox3.Text+"','" + Calendar1.SelectedDate + "','" + RadioButtonList1.Text + "');";
            var cmd = new SqlCommand(q, con);
            var result = cmd.ExecuteNonQuery();
        }
    }
}