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
    public partial class AddVenue : System.Web.UI.Page
    {

        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btn_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection

            string em = (String)Session["em"];
            SqlCommand cmd;
            SqlParameter sp1 = new SqlParameter("@name", txtVenueName.Text.Trim());

            SqlParameter sp2 = new SqlParameter("@hostemail", em);
            SqlParameter sp3 = new SqlParameter("@type", txtVenueType.Text.Trim());
            SqlParameter sp4 = new SqlParameter("@city", txtCity.Text.Trim());
            SqlParameter sp5 = new SqlParameter("@address", txtAddress.Text.Trim());
            SqlParameter sp6 = new SqlParameter("@noOfGuests", txtGuests.Text.Trim());
            SqlParameter sp7 = new SqlParameter("@price", txtPrice.Text.Trim());
            SqlParameter sp8 = new SqlParameter("@noOfNights", 5);

            //   resolve hostemail and noOfnights

            try
            {
                cmd = new SqlCommand("AddVenue_Proc", con);  //instantiate SQL command 
                cmd.Parameters.Add(sp1);
                cmd.Parameters.Add(sp2);
                cmd.Parameters.Add(sp3);
                cmd.Parameters.Add(sp4);
                cmd.Parameters.Add(sp5);
                cmd.Parameters.Add(sp6);
                cmd.Parameters.Add(sp7);
                cmd.Parameters.Add(sp8);

                cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    System.Diagnostics.Debug.WriteLine("Venue Added successfully");


                }
                else
                {
                    //Label2.Visible = true;
                }
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
                Response.Redirect("HomePage.aspx");
            }

            return; //return 


        }
    }
}