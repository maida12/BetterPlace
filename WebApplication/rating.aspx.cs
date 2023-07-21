using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class rating : System.Web.UI.Page
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int value = 0;
            if (RadioButton1.Checked)
            {
                value = 1;
            }
            if (RadioButton2.Checked)
            {
                value = 2;
            }
            if (RadioButton3.Checked)
            {
                value = 3;
            }
            if (RadioButton4.Checked)
            {
                value = 4;
            }
            else
                value = 5;


            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("AddRating", con);  //instantiate SQL command 
                cmd.Parameters.Add("@guestid", (String)Session["id"]);
                cmd.Parameters.Add("@venueid", (String)Session["vid"]);
                cmd.Parameters.Add("@rating",value );
               
                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                SqlDataReader dr = cmd.ExecuteReader();
                con.Close();
                Response.Redirect("HomePage.aspx");
            }
            catch (SqlException ex)
            {
                
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }

        }
    }
}