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
    public partial class EditVenue : System.Web.UI.Page
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_Click(object sender, EventArgs e)
        {

            string id = (String)Request.QueryString["vid"];
        SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            SqlParameter sp1 = new SqlParameter("@newname", txtVenueName.Text.Trim());
            SqlParameter sp2 = new SqlParameter("@vid", id);
            SqlParameter sp3 = new SqlParameter("@newtype", txtVenueType.Text.Trim());
            SqlParameter sp4 = new SqlParameter("@newcity", txtCity.Text.Trim());
            SqlParameter sp5 = new SqlParameter("@newadd", txtAddress.Text.Trim());
            SqlParameter sp6 = new SqlParameter("@newnoofg", txtGuests.Text.Trim());
            SqlParameter sp7 = new SqlParameter("@newprice", txtPrice.Text.Trim());
            SqlParameter sp8 = new SqlParameter("@newnoofn", 5);

            //   resolve hostemail and noOfnights

            try
            {
                if (txtVenueName.Text.Trim() != "")
                {
                    cmd = new SqlCommand("EditVenueName", con);
                    cmd.Parameters.Add(sp1);
                    cmd.Parameters.Add(sp2);
                    cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        System.Diagnostics.Debug.WriteLine("Venue Name edited successfully");

                    }
                    cmd.Parameters.Clear();
                }
              
                if (txtVenueType.Text.Trim() != "")
                {
                    cmd = new SqlCommand("EditVenueType", con);
                    cmd.Parameters.Add(sp3);
                    cmd.Parameters.Add(sp2);
                    cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        System.Diagnostics.Debug.WriteLine("Venue Type edited successfully");

                    }
                    cmd.Parameters.Clear();
                }
                if (txtCity.Text.Trim() != "")
                {
                    cmd = new SqlCommand("EditVenueCity", con);
                    cmd.Parameters.Add(sp4);
                    cmd.Parameters.Add(sp2);
                    cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        System.Diagnostics.Debug.WriteLine("Venue City edited successfully");

                    }
                    cmd.Parameters.Clear();
                }
                if (txtAddress.Text.Trim() != "")
                {
                    cmd = new SqlCommand("EditVenueAddress", con);
                    cmd.Parameters.Add(sp5);
                    cmd.Parameters.Add(sp2);
                    cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        System.Diagnostics.Debug.WriteLine("Venue Address edited successfully");

                    }
                    cmd.Parameters.Clear();
                }
                if (txtGuests.Text.Trim() != "")
                {
                    cmd = new SqlCommand("EditVenueGuestsNo", con);
                    cmd.Parameters.Add(sp6);
                    cmd.Parameters.Add(sp2);
                    cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        System.Diagnostics.Debug.WriteLine("Venue Guests No edited successfully");

                    }
                    cmd.Parameters.Clear();
                }
                if (txtPrice.Text.Trim() != "")
                {
                    cmd = new SqlCommand("EditVenuePrice", con);
                    cmd.Parameters.Add(sp7);
                    cmd.Parameters.Add(sp2);
                    cmd.CommandType = CommandType.StoredProcedure; //set type of sqL Command
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        System.Diagnostics.Debug.WriteLine("Venue Price edited successfully");

                    }
                    cmd.Parameters.Clear();
                }
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
                Response.Redirect("HostHomePage.aspx");
               
            }

            return; //return 


        }
    }
}