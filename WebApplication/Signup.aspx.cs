using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            String value;
            bool isChecked = RadioButton1.Checked;
            if (isChecked)
                value = RadioButton1.Text;
            else
                value = RadioButton2.Text;
            SqlParameter sp1 = new SqlParameter("@FN", TextBox3.Text.Trim());

            SqlParameter sp2 = new SqlParameter("@LN", TextBox4.Text.Trim());
            SqlParameter sp3 = new SqlParameter("@em", TextBox1.Text.Trim());
            SqlParameter sp4 = new SqlParameter("@pass", TextBox2.Text.Trim());
            SqlParameter sp5 = new SqlParameter("@type", value);


            try
            {
                cmd = new SqlCommand("SignUp", con);  //instantiate SQL command 
                cmd.Parameters.Add(sp1);
                cmd.Parameters.Add(sp2);
                cmd.Parameters.Add(sp3);
                cmd.Parameters.Add(sp4);
                cmd.Parameters.Add(sp5);

                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    System.Diagnostics.Debug.WriteLine("Welcome");

                }
                else
                {
                     Label2.Visible = true;
                }
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
                Response.Redirect("Login.aspx");
            }

            return; //return 

        }
    }
}