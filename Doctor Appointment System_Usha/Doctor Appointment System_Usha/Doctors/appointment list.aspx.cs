using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_Appointment_System_Usha.Doctors
{
    public partial class appointment_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                if (Session["user_name"]== "+user_name+" ) {
                    this.datashow();
                }
                else {
                    Label1.Text = "There is no Appoinment";
                }

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowIndex == GridView1.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;
                    int id;
                    id = Convert.ToInt16(row.Cells[0].Text);
                    String doctor_name;
                    doctor_name = row.Cells[1].Text;
                    String paitent_name;
                    paitent_name = row.Cells[2].Text;
                    String contact_no;
                    contact_no = row.Cells[3].Text;
                    String date;
                    date = row.Cells[4].Text;
                    String time;
                    time = row.Cells[5].Text;

                    TextBox1.Text = "" + id;
                    TextBox2.Text = "" + doctor_name;
                    TextBox3.Text = "" + paitent_name;
                    TextBox4.Text = "" + contact_no;
                    TextBox5.Text = "" + date;
                    TextBox6.Text = "" + time;


                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Click to select this row.";
                }
            }
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;
            TextBox1.Enabled = false;
            ModalPopupExtender1.Show();

        }

            protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row.";
            }
        }
            protected void Delete(object sender, EventArgs e)
            {

                String mycon = "Data Source=.;Initial Catalog=Doctor_Appointment_System_Usha;Integrated Security=True";
                String delete = "delete from appointment_taker where id=" + TextBox1.Text;
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = delete;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                //Label3.Text = "Roll Number " + Label3.Text + " Data Has Been Deleted Successfully";
                SqlDataSource1.DataBind();
                GridView1.DataSource = null;
                GridView1.DataSourceID = "SqlDataSource1";
                GridView1.SelectedIndex = -1;

            }
            protected void Save(object sender, EventArgs e)
            {

                String mycon = "Data Source=.;Initial Catalog=Doctor_Appointment_System_Usha;Integrated Security=True";
                String updatedata = "Update appointment_taker set doctor_name='" + TextBox2.Text + "', paitent_name='" + TextBox3.Text + "', contact_no='" + TextBox4.Text + "', date='" + TextBox5.Text + "', time='" + TextBox6.Text + "' where id=" + TextBox1.Text;
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = updatedata;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                //Label3.Text = "Roll Number " + TextBox1.Text + " Data Has Been Updated Successfully";
                SqlDataSource1.DataBind();
                GridView1.DataSource = null;
                GridView1.DataSourceID = "SqlDataSource1";
                GridView1.SelectedIndex = -1;

            }
            protected void datashow()
        {
            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Doctor_Appointment_System_Usha;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(@"Select * from appointment_taker; ", con);
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            con.Close();
        }
    }
}