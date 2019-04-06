using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{
    int id;
    String firstname;

    String lastname;

    String email;

    String username;

    String password;
    String contact;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    public void Button1_Click2()
    {
        var cons = ConfigurationManager.ConnectionStrings["db"].ConnectionString.ToString();
        var con = new SqlConnection(cons);
        con.Open();
        string q = @"INSERT INTO [dbo].[users_list]([first_name],[last_name],[email],[user_name],[password],[contact],)VALUES
           ('" + firstname + "','" + lastname + "','" + email + "','" + username+ "','" + password + "','" + contact+ "');";

        var cmd = new SqlCommand(q, con);
        var result = cmd.ExecuteNonQuery();
        Response.Write("Data succesfully saved");

    }
}